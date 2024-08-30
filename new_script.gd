extends Node

@export var textures: Array[Texture2D]
var idx := 0

func _physics_process(_delta: float) -> void:
	for id in range(idx, idx + 5):
		if id >= textures.size():
			return
		print("Id: " + str(id))
		var texture := textures[id]
		var save_as := texture.resource_path.replace("SunTemple/", "").replace(".dds", ".png")
		texture.get_image().save_png(save_as)
		idx += 1
