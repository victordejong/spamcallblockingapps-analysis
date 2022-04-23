package com.google.api.services.drive;

import com.google.api.client.a.q;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest;
import com.google.api.client.http.n;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/DriveRequest.class */
public abstract class DriveRequest<T> extends AbstractGoogleJsonClientRequest<T> {
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

    public DriveRequest(Drive drive, String str, String str2, Object obj, Class<T> cls) {
        super(drive, str, str2, obj, cls);
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b
    public final Drive getAbstractGoogleClient() {
        return (Drive) super.getAbstractGoogleClient();
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
    public DriveRequest<T> set(String str, Object obj) {
        return (DriveRequest) super.set(str, obj);
    }

    public DriveRequest<T> setAlt(String str) {
        this.alt = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b
    public DriveRequest<T> setDisableGZipContent(boolean z) {
        return (DriveRequest) super.setDisableGZipContent(z);
    }

    public DriveRequest<T> setFields(String str) {
        this.fields = str;
        return this;
    }

    public DriveRequest<T> setKey(String str) {
        this.key = str;
        return this;
    }

    public DriveRequest<T> setOauthToken(String str) {
        this.oauthToken = str;
        return this;
    }

    public DriveRequest<T> setPrettyPrint(Boolean bool) {
        this.prettyPrint = bool;
        return this;
    }

    public DriveRequest<T> setQuotaUser(String str) {
        this.quotaUser = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.b
    public DriveRequest<T> setRequestHeaders(n nVar) {
        return (DriveRequest) super.setRequestHeaders(nVar);
    }

    public DriveRequest<T> setUserIp(String str) {
        this.userIp = str;
        return this;
    }
}
