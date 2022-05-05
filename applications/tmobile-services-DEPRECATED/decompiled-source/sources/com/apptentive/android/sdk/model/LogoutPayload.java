package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/LogoutPayload.class */
public class LogoutPayload extends JsonPayload {
    public LogoutPayload() {
        super(PayloadType.logout);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/session", str);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        return HttpRequestMethod.DELETE;
    }
}
