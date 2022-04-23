package com.google.api.services.gmail;

import com.google.api.client.a.q;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest;
import com.google.api.client.http.n;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/GmailRequest.class */
public abstract class GmailRequest<T> extends AbstractGoogleJsonClientRequest<T> {
    @q
    private String alt;
    @q
    private String fields;
    @q
    private String key;
    @q(a = "oauth_token")
    private String oauthToken;
    @q
    private Boolean prettyPrint;
    @q
    private String quotaUser;
    @q
    private String userIp;

    public GmailRequest(Gmail gmail, String str, String str2, Object obj, Class<T> cls) {
        super(gmail, str, str2, obj, cls);
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b
    public final Gmail getAbstractGoogleClient() {
        return (Gmail) super.getAbstractGoogleClient();
    }

    public String getAlt() {
        return this.alt;
    }

    public String getFields() {
        return this.fields;
    }

    public String getKey() {
        return this.key;
    }

    public String getOauthToken() {
        return this.oauthToken;
    }

    public Boolean getPrettyPrint() {
        return this.prettyPrint;
    }

    public String getQuotaUser() {
        return this.quotaUser;
    }

    public String getUserIp() {
        return this.userIp;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b, com.google.api.client.a.n
    public GmailRequest<T> set(String str, Object obj) {
        return (GmailRequest) super.set(str, obj);
    }

    public GmailRequest<T> setAlt(String str) {
        this.alt = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b
    public GmailRequest<T> setDisableGZipContent(boolean z) {
        return (GmailRequest) super.setDisableGZipContent(z);
    }

    public GmailRequest<T> setFields(String str) {
        this.fields = str;
        return this;
    }

    public GmailRequest<T> setKey(String str) {
        this.key = str;
        return this;
    }

    public GmailRequest<T> setOauthToken(String str) {
        this.oauthToken = str;
        return this;
    }

    public GmailRequest<T> setPrettyPrint(Boolean bool) {
        this.prettyPrint = bool;
        return this;
    }

    public GmailRequest<T> setQuotaUser(String str) {
        this.quotaUser = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b
    public GmailRequest<T> setRequestHeaders(n nVar) {
        return (GmailRequest) super.setRequestHeaders(nVar);
    }

    public GmailRequest<T> setUserIp(String str) {
        this.userIp = str;
        return this;
    }
}
