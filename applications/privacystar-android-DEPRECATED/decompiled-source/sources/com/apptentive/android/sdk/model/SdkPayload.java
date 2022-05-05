package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.network.HttpRequestMethod;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/SdkPayload.class */
public class SdkPayload extends JsonPayload {
    public static final String KEY = "sdk";
    @SensitiveDataKey
    private static final String KEY_AUTHOR_EMAIL = "author_email";
    @SensitiveDataKey
    private static final String KEY_AUTHOR_NAME = "author_name";
    private static final String KEY_DISTRIBUTION = "distribution";
    private static final String KEY_DISTRIBUTION_VERSION = "distribution_version";
    private static final String KEY_PLATFORM = "platform";
    private static final String KEY_PROGRAMMING_LANGUAGE = "programming_language";
    private static final String KEY_VERSION = "version";

    static {
        registerSensitiveKeys(SdkPayload.class);
    }

    public SdkPayload() {
        super(PayloadType.sdk);
    }

    public SdkPayload(String str) throws JSONException {
        super(PayloadType.sdk, str);
    }

    public String getAuthorEmail() {
        return optString(KEY_AUTHOR_EMAIL, null);
    }

    public String getAuthorName() {
        return optString(KEY_AUTHOR_NAME, null);
    }

    public String getDistribution() {
        return optString(KEY_DISTRIBUTION, null);
    }

    public String getDistributionVersion() {
        return optString(KEY_DISTRIBUTION_VERSION, null);
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

    public String getPlatform() {
        return optString(KEY_PLATFORM, null);
    }

    public String getProgrammingLanguage() {
        return optString(KEY_PROGRAMMING_LANGUAGE, null);
    }

    public String getVersion() {
        return optString("version", null);
    }

    public void setAuthorEmail(String str) {
        put(KEY_AUTHOR_EMAIL, str);
    }

    public void setAuthorName(String str) {
        put(KEY_AUTHOR_NAME, str);
    }

    public void setDistribution(String str) {
        put(KEY_DISTRIBUTION, str);
    }

    public void setDistributionVersion(String str) {
        put(KEY_DISTRIBUTION_VERSION, str);
    }

    public void setPlatform(String str) {
        put(KEY_PLATFORM, str);
    }

    public void setProgrammingLanguage(String str) {
        put(KEY_PROGRAMMING_LANGUAGE, str);
    }

    public void setVersion(String str) {
        put("version", str);
    }
}
