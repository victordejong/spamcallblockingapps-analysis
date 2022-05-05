package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/SdkAndAppReleasePayload.class */
public class SdkAndAppReleasePayload extends JsonPayload {
    private static final String KEY_APP_STORE = "app_store";
    private static final String KEY_DEBUG = "debug";
    private static final String KEY_IDENTIFIER = "identifier";
    private static final String KEY_SDK_AUTHOR_EMAIL = "sdk_author_email";
    private static final String KEY_SDK_AUTHOR_NAME = "sdk_author_name";
    private static final String KEY_SDK_DISTRIBUTION = "sdk_distribution";
    private static final String KEY_SDK_DISTRIBUTION_VERSION = "sdk_distribution_version";
    private static final String KEY_SDK_PLATFORM = "sdk_platform";
    private static final String KEY_SDK_PROGRAMMING_LANGUAGE = "sdk_programming_language";
    private static final String KEY_SDK_VERSION = "sdk_version";
    private static final String KEY_STYLE_INHERIT = "inheriting_styles";
    private static final String KEY_STYLE_OVERRIDE = "overriding_styles";
    private static final String KEY_TARGET_SDK_VERSION = "target_sdk_version";
    private static final String KEY_TYPE = "type";
    private static final String KEY_VERSION_CODE = "version_code";
    private static final String KEY_VERSION_NAME = "version_name";

    public SdkAndAppReleasePayload() {
        super(PayloadType.sdk_and_app_release);
    }

    public String getAppStore() {
        return optString(KEY_APP_STORE, null);
    }

    public String getAuthorEmail() {
        return optString(KEY_SDK_AUTHOR_EMAIL, null);
    }

    public String getAuthorName() {
        return optString(KEY_SDK_AUTHOR_NAME, null);
    }

    public boolean getDebug() {
        return getBoolean("debug");
    }

    public String getDistribution() {
        return optString(KEY_SDK_DISTRIBUTION, null);
    }

    public String getDistributionVersion() {
        return optString(KEY_SDK_DISTRIBUTION_VERSION, null);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/app_release", str);
    }

    public String getIdentifier() {
        return optString("identifier", null);
    }

    public boolean getInheritStyle() {
        return getBoolean(KEY_STYLE_INHERIT);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "app_release";
    }

    public boolean getOverrideStyle() {
        return getBoolean(KEY_STYLE_OVERRIDE);
    }

    public String getPlatform() {
        return optString(KEY_SDK_PLATFORM, null);
    }

    public String getProgrammingLanguage() {
        return optString(KEY_SDK_PROGRAMMING_LANGUAGE, null);
    }

    public String getTargetSdkVersion() {
        return optString(KEY_TARGET_SDK_VERSION, null);
    }

    public String getType() {
        return optString("type", null);
    }

    public String getVersion() {
        return optString(KEY_SDK_VERSION, null);
    }

    public int getVersionCode() {
        return optInt(KEY_VERSION_CODE, -1);
    }

    public String getVersionName() {
        return optString(KEY_VERSION_NAME, null);
    }

    public void setAppStore(String str) {
        put(KEY_APP_STORE, str);
    }

    public void setAuthorEmail(String str) {
        put(KEY_SDK_AUTHOR_EMAIL, str);
    }

    public void setAuthorName(String str) {
        put(KEY_SDK_AUTHOR_NAME, str);
    }

    public void setDebug(boolean z) {
        put("debug", z);
    }

    public void setDistribution(String str) {
        put(KEY_SDK_DISTRIBUTION, str);
    }

    public void setDistributionVersion(String str) {
        put(KEY_SDK_DISTRIBUTION_VERSION, str);
    }

    public void setIdentifier(String str) {
        put("identifier", str);
    }

    public void setInheritStyle(boolean z) {
        put(KEY_STYLE_INHERIT, z);
    }

    public void setOverrideStyle(boolean z) {
        put(KEY_STYLE_OVERRIDE, z);
    }

    public void setPlatform(String str) {
        put(KEY_SDK_PLATFORM, str);
    }

    public void setProgrammingLanguage(String str) {
        put(KEY_SDK_PROGRAMMING_LANGUAGE, str);
    }

    public void setTargetSdkVersion(String str) {
        put(KEY_TARGET_SDK_VERSION, str);
    }

    public void setType(String str) {
        put("type", str);
    }

    public void setVersion(String str) {
        put(KEY_SDK_VERSION, str);
    }

    public void setVersionCode(int i) {
        put(KEY_VERSION_CODE, i);
    }

    public void setVersionName(String str) {
        put(KEY_VERSION_NAME, str);
    }
}
