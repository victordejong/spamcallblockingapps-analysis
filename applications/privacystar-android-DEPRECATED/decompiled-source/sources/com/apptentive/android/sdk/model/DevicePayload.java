package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/DevicePayload.class */
public class DevicePayload extends JsonPayload {
    public static final String KEY = "device";
    @SensitiveDataKey
    private static final String KEY_ADVERTISER_ID = "advertiser_id";
    private static final String KEY_BOARD = "board";
    private static final String KEY_BOOTLOADER_VERSION = "bootloader_version";
    private static final String KEY_BRAND = "brand";
    private static final String KEY_BUILD_ID = "build_id";
    private static final String KEY_BUILD_TYPE = "build_type";
    private static final String KEY_CARRIER = "carrier";
    private static final String KEY_CPU = "cpu";
    private static final String KEY_CURRENT_CARRIER = "current_carrier";
    @SensitiveDataKey
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

    static {
        registerSensitiveKeys(DevicePayload.class);
    }

    public DevicePayload() {
        super(PayloadType.device);
    }

    public DevicePayload(String str) throws JSONException {
        super(PayloadType.device, str);
    }

    public CustomData getCustomData() {
        if (isNull("custom_data")) {
            return null;
        }
        try {
            return new CustomData(getJSONObject("custom_data"));
        } catch (JSONException e) {
            return null;
        }
    }

    public String getDevice() {
        return optString("device", null);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/device", str);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "device";
    }

    public String getModel() {
        return optString("model", null);
    }

    public void setAdvertiserId(String str) {
        put(KEY_ADVERTISER_ID, str);
    }

    public void setBoard(String str) {
        put(KEY_BOARD, str);
    }

    public void setBootloaderVersion(String str) {
        put(KEY_BOOTLOADER_VERSION, str);
    }

    public void setBrand(String str) {
        put(KEY_BRAND, str);
    }

    public void setBuildId(String str) {
        put(KEY_BUILD_ID, str);
    }

    public void setBuildType(String str) {
        put(KEY_BUILD_TYPE, str);
    }

    public void setCarrier(String str) {
        put(KEY_CARRIER, str);
    }

    public void setCpu(String str) {
        put(KEY_CPU, str);
    }

    public void setCurrentCarrier(String str) {
        put(KEY_CURRENT_CARRIER, str);
    }

    public void setCustomData(CustomData customData) {
        put("custom_data", customData);
    }

    public void setDevice(String str) {
        put("device", str);
    }

    public void setIntegrationConfig(CustomData customData) {
        put(KEY_INTEGRATION_CONFIG, customData);
    }

    public void setLocaleCountryCode(String str) {
        put(KEY_LOCALE_COUNTRY_CODE, str);
    }

    public void setLocaleLanguageCode(String str) {
        put(KEY_LOCALE_LANGUAGE_CODE, str);
    }

    public void setLocaleRaw(String str) {
        put(KEY_LOCALE_RAW, str);
    }

    public void setManufacturer(String str) {
        put(KEY_MANUFACTURER, str);
    }

    public void setModel(String str) {
        put("model", str);
    }

    public void setNetworkType(String str) {
        put(KEY_NETWORK_TYPE, str);
    }

    public void setOsApiLevel(String str) {
        put(KEY_OS_API_LEVEL, str);
    }

    public void setOsBuild(String str) {
        put(KEY_OS_BUILD, str);
    }

    public void setOsName(String str) {
        put(KEY_OS_NAME, str);
    }

    public void setOsVersion(String str) {
        put(KEY_OS_VERSION, str);
    }

    public void setProduct(String str) {
        put(KEY_PRODUCT, str);
    }

    public void setRadioVersion(String str) {
        put(KEY_RADIO_VERSION, str);
    }

    public void setUtcOffset(String str) {
        put(KEY_UTC_OFFSET, str);
    }

    public void setUuid(String str) {
        put(KEY_UUID, str);
    }
}
