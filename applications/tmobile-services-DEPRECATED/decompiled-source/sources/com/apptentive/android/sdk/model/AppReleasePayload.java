package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.network.HttpRequestMethod;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/AppReleasePayload.class */
public class AppReleasePayload extends JsonPayload {
    public AppReleasePayload() {
        super(PayloadType.app_release);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        throw new RuntimeException(AppReleasePayload.class.getName() + " is deprecated");
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public String getHttpRequestContentType() {
        throw new RuntimeException(AppReleasePayload.class.getName() + " is deprecated");
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        throw new RuntimeException(AppReleasePayload.class.getName() + " is deprecated");
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "app_release";
    }

    public void setAppStore(String str) {
        put("app_store", str);
    }

    public void setDebug(boolean z) {
        put("debug", z);
    }

    public void setIdentifier(String str) {
        put("identifier", str);
    }

    public void setInheritStyle(boolean z) {
        put("inheriting_styles", z);
    }

    public void setOverrideStyle(boolean z) {
        put("overriding_styles", z);
    }

    public void setTargetSdkVersion(String str) {
        put("target_sdk_version", str);
    }

    public void setType(String str) {
        put("type", str);
    }

    public void setVersionCode(int i) {
        put("version_code", i);
    }

    public void setVersionName(String str) {
        put("version_name", str);
    }
}
