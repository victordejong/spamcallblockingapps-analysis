package com.apptentive.android.sdk.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/Payload.class */
public abstract class Payload {
    private boolean authenticated;
    private String conversationId;
    @NonNull
    private Encryption encryption;
    private String localConversationIdentifier;
    private final PayloadType payloadType;
    @Nullable
    private String sessionId;
    private String token;

    /* JADX INFO: Access modifiers changed from: protected */
    public Payload(PayloadType payloadType) {
        if (payloadType != null) {
            this.payloadType = payloadType;
            return;
        }
        throw new IllegalArgumentException("Payload type is null");
    }

    public String getConversationId() {
        return this.conversationId;
    }

    @Nullable
    public String getConversationToken() {
        return this.token;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Encryption getEncryption() {
        return this.encryption;
    }

    public abstract String getHttpEndPoint(String str);

    public abstract String getHttpRequestContentType();

    public abstract HttpRequestMethod getHttpRequestMethod();

    public String getLocalConversationIdentifier() {
        return this.localConversationIdentifier;
    }

    public abstract String getNonce();

    public PayloadType getPayloadType() {
        return this.payloadType;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public boolean hasSessionId() {
        return !StringUtils.isNullOrEmpty(this.sessionId);
    }

    public boolean isAuthenticated() {
        return this.authenticated;
    }

    @NonNull
    public abstract byte[] renderData() throws Exception;

    public void setAuthenticated(boolean z) {
        this.authenticated = z;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public void setEncryption(@NonNull Encryption encryption) {
        if (encryption != null) {
            this.encryption = encryption;
            return;
        }
        throw new IllegalArgumentException("Encryption is null");
    }

    public void setLocalConversationIdentifier(String str) {
        this.localConversationIdentifier = str;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public void setToken(@Nullable String str) {
        this.token = str;
    }
}
