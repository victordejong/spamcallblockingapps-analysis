package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.network.HttpRequestMethod;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/AppReleasePayload.class */
public class AppReleasePayload extends JsonPayload {
    public static final String KEY = "app_release";
    private static final String KEY_APP_STORE = "app_store";
    private static final String KEY_DEBUG = "debug";
    private static final String KEY_IDENTIFIER = "identifier";
    private static final String KEY_STYLE_INHERIT = "inheriting_styles";
    private static final String KEY_STYLE_OVERRIDE = "overriding_styles";
    private static final String KEY_TARGET_SDK_VERSION = "target_sdk_version";
    private static final String KEY_TYPE = "type";
    private static final String KEY_VERSION_CODE = "version_code";
    private static final String KEY_VERSION_NAME = "version_name";

    public AppReleasePayload() {
        super(PayloadType.app_release);
    }

    public AppReleasePayload(String str) throws JSONException {
        super(PayloadType.app_release, str);
    }

    public String getAppStore() {
        return optString(KEY_APP_STORE, null);
    }

    public boolean getDebug() {
        return getBoolean("debug");
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        throw new RuntimeException(getClass().getName() + " is deprecated");
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public String getHttpRequestContentType() {
        throw new RuntimeException(getClass().getName() + " is deprecated");
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        throw new RuntimeException(getClass().getName() + " is deprecated");
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

    public String getTargetSdkVersion() {
        return optString(KEY_TARGET_SDK_VERSION, null);
    }

    public String getType() {
        return optString("type", null);
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

    public void setDebug(boolean z) {
        put("debug", z);
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

    public void setTargetSdkVersion(String str) {
        put(KEY_TARGET_SDK_VERSION, str);
    }

    public void setType(String str) {
        put("type", str);
    }

    public void setVersionCode(int i) {
        put(KEY_VERSION_CODE, i);
    }

    public void setVersionName(String str) {
        put(KEY_VERSION_NAME, str);
    }
}
