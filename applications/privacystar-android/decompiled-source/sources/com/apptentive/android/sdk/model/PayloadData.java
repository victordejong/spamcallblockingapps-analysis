package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/PayloadData.class */
public class PayloadData {
    private final String authToken;
    private final boolean authenticated;
    private final String contentType;
    private final String conversationId;
    private final byte[] data;
    private final HttpRequestMethod httpRequestMethod;
    private final String httpRequestPath;
    private final String nonce;
    private final PayloadType type;

    public PayloadData(PayloadType payloadType, String str, String str2, byte[] bArr, String str3, String str4, String str5, HttpRequestMethod httpRequestMethod, boolean z) {
        if (payloadType == null) {
            throw new IllegalArgumentException("Payload type is null");
        } else if (str == null) {
            throw new IllegalArgumentException("Nonce is null");
        } else if (str2 == null) {
            throw new IllegalArgumentException("Conversation ID is null");
        } else if (bArr == null) {
            throw new IllegalArgumentException("Data is null");
        } else if (str4 == null) {
            throw new IllegalArgumentException("Content type is null");
        } else if (str5 == null) {
            throw new IllegalArgumentException("Path is null");
        } else if (httpRequestMethod == null) {
            throw new IllegalArgumentException("Http request method is null");
        } else {
            this.type = payloadType;
            this.nonce = str;
            this.conversationId = str2;
            this.data = bArr;
            this.authToken = str3;
            this.contentType = str4;
            this.httpRequestPath = str5;
            this.httpRequestMethod = httpRequestMethod;
            this.authenticated = z;
        }
    }

    public String getAuthToken() {
        return this.authToken;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public byte[] getData() {
        return this.data;
    }

    public HttpRequestMethod getHttpRequestMethod() {
        return this.httpRequestMethod;
    }

    public String getHttpRequestPath() {
        return this.httpRequestPath;
    }

    public String getNonce() {
        return this.nonce;
    }

    public PayloadType getType() {
        return this.type;
    }

    public boolean isAuthenticated() {
        return this.authenticated;
    }

    public String toString() {
        return StringUtils.format("type=%s nonce=%s conversationId=%s authToken=%s httpRequestPath=%s", this.type, this.nonce, this.conversationId, ApptentiveLog.hideIfSanitized(this.authToken), this.httpRequestPath);
    }
}
