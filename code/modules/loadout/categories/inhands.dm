/// Inhand items (Moves overrided items to backpack)
/datum/loadout_category/inhands
	category_name = "Powergame"
	category_ui_icon = FA_ICON_BRIEFCASE
	type_to_generate = /datum/loadout_item/inhand
	tab_order = /datum/loadout_category/head::tab_order - 1

/datum/loadout_item/inhand
	abstract_type = /datum/loadout_item/inhand

/datum/loadout_item/inhand/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(outfit.l_hand && !outfit.r_hand)
		outfit.r_hand = item_path
	else
		if(outfit.l_hand)
			LAZYADD(outfit.backpack_contents, outfit.l_hand)
		outfit.l_hand = item_path

/datum/loadout_item/inhand/energysword_blue
	name = "Energy Sword (Blue)"
	item_path = /obj/item/melee/energy/sword/saber/blue
	additional_displayed_text = list("Blue")

/datum/loadout_item/inhand/energysword_red
	name = "Energy Sword (Red)"
	item_path = /obj/item/melee/energy/sword/saber/red
	additional_displayed_text = list("Red")

/datum/loadout_item/inhand/energysword_green
	name = "Energy Sword (Green)"
	item_path = /obj/item/melee/energy/sword/saber/green
	additional_displayed_text = list("Green")

/datum/loadout_item/inhand/energysword_purple
	name = "Energy Sword (Purple)"
	item_path = /obj/item/melee/energy/sword/saber/purple
	additional_displayed_text = list("Purple")

/datum/loadout_item/inhand/powercrepe
	name = "Powercrepe"
	item_path = /obj/item/food/powercrepe

/datum/loadout_item/inhand/makarov
	name = "A Gun"
	item_path = /obj/item/gun/ballistic/automatic/pistol

/datum/loadout_item/inhand/emag
	name = "Cryptographic Sequencer"
	item_path = /obj/item/card/emag
	additional_displayed_text = list("Emag")

/datum/loadout_item/inhand/batong
	name = "Stun Baton"
	item_path = /obj/item/melee/baton/security

/datum/loadout_item/inhand/minibomb
	name = "Minibomb"
	item_path = /obj/item/grenade/syndieminibomb

/datum/loadout_item/inhand/gorilla
	name = "Gorilla Mutation Serum"
	item_path = /obj/item/reagent_containers/hypospray/medipen/magillitis

/datum/loadout_item/inhand/laser_arm
	name = "Laser Arm Implant"
	item_path = /obj/item/autosurgeon/syndicate/laser_arm