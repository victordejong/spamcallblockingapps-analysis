package com.mixpanel.android.util;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/RemoteResponse.class */
public class RemoteResponse {
    @NonNull
    private final String responseBody;
    private final int responseCode;
    @NonNull
    private final String responseMessage;

    public RemoteResponse(int i, @NonNull String str, @NonNull String str2) {
        this.responseCode = i;
        this.responseMessage = str;
        this.responseBody = str2;
    }

    @NonNull
    public String getResponseBody() {
        return this.responseBody;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    @NonNull
    public String getResponseMessage() {
        return this.responseMessage;
    }

    public String toString() {
        return "RemoteResponse{responseCode=" + this.responseCode + ", responseMessage='" + this.responseMessage + "', responseBody='" + this.responseBody + "'}";
    }
}
