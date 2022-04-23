package com.apptentive.android.sdk.migration.v4_0_0;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/Device.class */
public class Device extends JSONObject {
    private static final String KEY_BOARD = "board";
    private static final String KEY_BOOTLOADER_VERSION = "bootloader_version";
    private static final String KEY_BRAND = "brand";
    private static final String KEY_BUILD_ID = "build_id";
    private static final String KEY_BUILD_TYPE = "build_type";
    private static final String KEY_CARRIER = "carrier";
    private static final String KEY_CPU = "cpu";
    private static final String KEY_CURRENT_CARRIER = "current_carrier";
    private static final String KEY_CUSTOM_DATA = "custom_data";
    private static final String KEY_DEVICE = "device";
    private static final String KEY_INTEGRATION_CONFIG = "integration_config";
    private static final String KEY_LOCALE_COUNTRY_CODE = "locale_country_code";
    private static final String KEY_LOCALE_LANGUAGE_CODE = "locale_language_code";
    private static final String KEY_LOCALE_RAW = "locale_raw";
    private static final String KEY_MANUFACTURER = "manufacturer";
    private static final String KEY_MODEL = "model";
    private static final String KEY_NETWORK_TYPE = "network_type";
    private static final String KEY_OS_API_LEVEL = "os_api_level";
    private static final String KEY_OS_BUILD = "os_build";
    private static final String KEY_OS_NAME = "os_name";
    private static final String KEY_OS_VERSION = "os_version";
    private static final String KEY_PRODUCT = "product";
    private static final String KEY_RADIO_VERSION = "radio_version";
    private static final String KEY_UTC_OFFSET = "utc_offset";
    private static final String KEY_UUID = "uuid";

    public Device(String str) throws JSONException {
        super(str);
    }

    public String getBoard() {
        try {
            if (!isNull(KEY_BOARD)) {
                return getString(KEY_BOARD);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getBootloaderVersion() {
        try {
            if (!isNull(KEY_BOOTLOADER_VERSION)) {
                return getString(KEY_BOOTLOADER_VERSION);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getBrand() {
        try {
            if (!isNull(KEY_BRAND)) {
                return getString(KEY_BRAND);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getBuildId() {
        try {
            if (!isNull(KEY_BUILD_ID)) {
                return getString(KEY_BUILD_ID);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getBuildType() {
        try {
            if (!isNull(KEY_BUILD_TYPE)) {
                return getString(KEY_BUILD_TYPE);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getCarrier() {
        try {
            if (!isNull(KEY_CARRIER)) {
                return getString(KEY_CARRIER);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getCpu() {
        try {
            if (!isNull(KEY_CPU)) {
                return getString(KEY_CPU);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getCurrentCarrier() {
        try {
            if (!isNull(KEY_CURRENT_CARRIER)) {
                return getString(KEY_CURRENT_CARRIER);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public JSONObject getCustomData() {
        if (isNull("custom_data")) {
            return null;
        }
        try {
            return getJSONObject("custom_data");
        } catch (JSONException e) {
            return null;
        }
    }

    public String getDevice() {
        try {
            if (!isNull("device")) {
                return getString("device");
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public JSONObject getIntegrationConfig() {
        if (isNull(KEY_INTEGRATION_CONFIG)) {
            return null;
        }
        try {
            return getJSONObject(KEY_INTEGRATION_CONFIG);
        } catch (JSONException e) {
            return null;
        }
    }

    public String getLocaleCountryCode() {
        try {
            if (!isNull(KEY_LOCALE_COUNTRY_CODE)) {
                return getString(KEY_LOCALE_COUNTRY_CODE);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getLocaleLanguageCode() {
        try {
            if (!isNull(KEY_LOCALE_LANGUAGE_CODE)) {
                return getString(KEY_LOCALE_LANGUAGE_CODE);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getLocaleRaw() {
        try {
            if (!isNull(KEY_LOCALE_RAW)) {
                return getString(KEY_LOCALE_RAW);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getManufacturer() {
        try {
            if (!isNull(KEY_MANUFACTURER)) {
                return getString(KEY_MANUFACTURER);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getModel() {
        try {
            if (!isNull("model")) {
                return getString("model");
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getNetworkType() {
        try {
            if (!isNull(KEY_NETWORK_TYPE)) {
                return getString(KEY_NETWORK_TYPE);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getOsApiLevel() {
        try {
            if (!isNull(KEY_OS_API_LEVEL)) {
                return getString(KEY_OS_API_LEVEL);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getOsBuild() {
        try {
            if (!isNull(KEY_OS_BUILD)) {
                return getString(KEY_OS_BUILD);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getOsName() {
        try {
            if (!isNull(KEY_OS_NAME)) {
                return getString(KEY_OS_NAME);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getOsVersion() {
        try {
            if (!isNull(KEY_OS_VERSION)) {
                return getString(KEY_OS_VERSION);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getProduct() {
        try {
            if (!isNull(KEY_PRODUCT)) {
                return getString(KEY_PRODUCT);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getRadioVersion() {
        try {
            if (!isNull(KEY_RADIO_VERSION)) {
                return getString(KEY_RADIO_VERSION);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getUtcOffset() {
        try {
            if (!isNull(KEY_UTC_OFFSET)) {
                return getString(KEY_UTC_OFFSET);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getUuid() {
        try {
            if (!isNull(KEY_UUID)) {
                return getString(KEY_UUID);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public void setBoard(String str) {
        try {
            put(KEY_BOARD, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_BOARD);
        }
    }

    public void setBootloaderVersion(String str) {
        try {
            put(KEY_BOOTLOADER_VERSION, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_BOOTLOADER_VERSION);
        }
    }

    public void setBrand(String str) {
        try {
            put(KEY_BRAND, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_BRAND);
        }
    }

    public void setBuildId(String str) {
        try {
            put(KEY_BUILD_ID, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_BUILD_ID);
        }
    }

    public void setBuildType(String str) {
        try {
            put(KEY_BUILD_TYPE, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_BUILD_TYPE);
        }
    }

    public void setCarrier(String str) {
        try {
            put(KEY_CARRIER, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_CARRIER);
        }
    }

    public void setCpu(String str) {
        try {
            put(KEY_CPU, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_CPU);
        }
    }

    public void setCurrentCarrier(String str) {
        try {
            put(KEY_CURRENT_CARRIER, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_CURRENT_CARRIER);
        }
    }

    public void setCustomData(JSONObject jSONObject) {
        try {
            put("custom_data", jSONObject);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", "custom_data");
        }
    }

    public void setDevice(String str) {
        try {
            put("device", str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", "device");
        }
    }

    public void setIntegrationConfig(JSONObject jSONObject) {
        try {
            put(KEY_INTEGRATION_CONFIG, jSONObject);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_INTEGRATION_CONFIG);
        }
    }

    public void setLocaleCountryCode(String str) {
        try {
            put(KEY_LOCALE_COUNTRY_CODE, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_LOCALE_COUNTRY_CODE);
        }
    }

    public void setLocaleLanguageCode(String str) {
        try {
            put(KEY_LOCALE_LANGUAGE_CODE, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_LOCALE_LANGUAGE_CODE);
        }
    }

    public void setLocaleRaw(String str) {
        try {
            put(KEY_LOCALE_RAW, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_LOCALE_RAW);
        }
    }

    public void setManufacturer(String str) {
        try {
            put(KEY_MANUFACTURER, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_MANUFACTURER);
        }
    }

    public void setModel(String str) {
        try {
            put("model", str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", "model");
        }
    }

    public void setNetworkType(String str) {
        try {
            put(KEY_NETWORK_TYPE, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_NETWORK_TYPE);
        }
    }

    public void setOsApiLevel(String str) {
        try {
            put(KEY_OS_API_LEVEL, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_OS_API_LEVEL);
        }
    }

    public void setOsBuild(String str) {
        try {
            put(KEY_OS_BUILD, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_OS_BUILD);
        }
    }

    public void setOsName(String str) {
        try {
            put(KEY_OS_NAME, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_OS_NAME);
        }
    }

    public void setOsVersion(String str) {
        try {
            put(KEY_OS_VERSION, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_OS_VERSION);
        }
    }

    public void setProduct(String str) {
        try {
            put(KEY_PRODUCT, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_PRODUCT);
        }
    }

    public void setRadioVersion(String str) {
        try {
            put(KEY_RADIO_VERSION, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_RADIO_VERSION);
        }
    }

    public void setUtcOffset(String str) {
        try {
            put(KEY_UTC_OFFSET, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_UTC_OFFSET);
        }
    }

    public void setUuid(String str) {
        try {
            put(KEY_UUID, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Device.", KEY_UUID);
        }
    }
}
