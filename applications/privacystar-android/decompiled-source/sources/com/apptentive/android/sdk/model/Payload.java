package com.apptentive.android.sdk.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/Payload.class */
public abstract class Payload {
    private List<Object> attachments;
    private boolean authenticated;
    private String conversationId;
    @NonNull
    private EncryptionKey encryptionKey;
    private String localConversationIdentifier;
    private final PayloadType payloadType;
    private String token;

    /* JADX INFO: Access modifiers changed from: protected */
    public Payload(PayloadType payloadType) {
        if (payloadType == null) {
            throw new IllegalArgumentException("Payload type is null");
        }
        this.payloadType = payloadType;
    }

    public List<Object> getAttachments() {
        return this.attachments;
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
    public EncryptionKey getEncryptionKey() {
        return this.encryptionKey;
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

    public boolean isAuthenticated() {
        return this.authenticated;
    }

    public abstract byte[] renderData() throws JSONException;

    public void setAttachments(List<Object> list) {
        this.attachments = list;
    }

    public void setAuthenticated(boolean z) {
        this.authenticated = z;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public void setEncryptionKey(@NonNull EncryptionKey encryptionKey) {
        if (encryptionKey == null) {
            throw new IllegalArgumentException("Encryption key is null");
        }
        this.encryptionKey = encryptionKey;
    }

    public void setLocalConversationIdentifier(String str) {
        this.localConversationIdentifier = str;
    }

    public abstract void setNonce(String str);

    public void setToken(@Nullable String str) {
        this.token = str;
    }
}
