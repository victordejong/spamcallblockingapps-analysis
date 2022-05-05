package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.network.HttpRequestMethod;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/SdkPayload.class */
public class SdkPayload extends JsonPayload {
    static {
        JsonPayload.registerSensitiveKeys(SdkPayload.class);
    }

    public SdkPayload() {
        super(PayloadType.sdk);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        throw new RuntimeException(SdkPayload.class.getName() + " is deprecated");
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public String getHttpRequestContentType() {
        throw new RuntimeException(SdkPayload.class.getName() + " is deprecated");
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        throw new RuntimeException(SdkPayload.class.getName() + " is deprecated");
    }

    public void setAuthorEmail(String str) {
        put("author_email", str);
    }

    public void setAuthorName(String str) {
        put("author_name", str);
    }

    public void setDistribution(String str) {
        put("distribution", str);
    }

    public void setDistributionVersion(String str) {
        put("distribution_version", str);
    }

    public void setPlatform(String str) {
        put("platform", str);
    }

    public void setProgrammingLanguage(String str) {
        put("programming_language", str);
    }

    public void setVersion(String str) {
        put(Apptentive.Version.TYPE, str);
    }
}
