package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/SdkAndAppReleasePayload.class */
public class SdkAndAppReleasePayload extends JsonPayload {
    public SdkAndAppReleasePayload() {
        super(PayloadType.sdk_and_app_release);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/app_release", str);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "app_release";
    }

    public void setAppStore(String str) {
        put("app_store", str);
    }

    public void setAuthorEmail(String str) {
        put("sdk_author_email", str);
    }

    public void setAuthorName(String str) {
        put("sdk_author_name", str);
    }

    public void setDebug(boolean z) {
        put("debug", z);
    }

    public void setDistribution(String str) {
        put("sdk_distribution", str);
    }

    public void setDistributionVersion(String str) {
        put("sdk_distribution_version", str);
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

    public void setPlatform(String str) {
        put("sdk_platform", str);
    }

    public void setProgrammingLanguage(String str) {
        put("sdk_programming_language", str);
    }

    public void setTargetSdkVersion(String str) {
        put("target_sdk_version", str);
    }

    public void setType(String str) {
        put("type", str);
    }

    public void setVersion(String str) {
        put("sdk_version", str);
    }

    public void setVersionCode(int i) {
        put("version_code", i);
    }

    public void setVersionName(String str) {
        put("version_name", str);
    }
}
