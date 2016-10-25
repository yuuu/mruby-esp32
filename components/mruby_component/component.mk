
COMPONENT_OWNBUILDTARGET := true
COMPONENT_OWNCLEANTARGET := true

COMPONENT_ADD_INCLUDEDIRS := mruby/include/

include $(IDF_PATH)/make/component_common.mk

build: 
	cd $(COMPONENT_PATH)/mruby && MRUBY_CONFIG=../esp32_build_config.rb $(MAKE)
	cp $(COMPONENT_PATH)/mruby/build/esp32/lib/libmruby.a $(COMPONENT_LIBRARY)

clean: 
	cd $(COMPONENT_PATH)/mruby && MRUBY_CONFIG=../esp32_build_config.rb $(MAKE) clean
