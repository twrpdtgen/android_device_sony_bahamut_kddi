#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from bahamut_kddi device
$(call inherit-product, device/sony/bahamut_kddi/device.mk)

PRODUCT_DEVICE := bahamut_kddi
PRODUCT_NAME := twrp_bahamut_kddi
PRODUCT_BRAND := KDDI
PRODUCT_MODEL := Bahamut_kddi
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bahamut_kddi-user 11 RKQ1.200928.002 1 dev-keys"

BUILD_FINGERPRINT := KDDI/bahamut_kddi/bahamut_kddi:11/RKQ1.200928.002/1:user/dev-keys
