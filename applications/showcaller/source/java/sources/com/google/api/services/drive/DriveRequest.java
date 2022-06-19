package com.google.api.services.drive;

import com.google.api.client.googleapis.p284d.p285e.AbstractC8605b;
import com.google.api.client.http.C8650n;
import com.google.api.client.util.AbstractC8720o;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/DriveRequest.class */
public abstract class DriveRequest<T> extends AbstractC8605b<T> {
    @AbstractC8720o
    private String alt;
    @AbstractC8720o
    private String fields;
    @AbstractC8720o
    private String key;
    @AbstractC8720o("oauth_token")
    private String oauthToken;
    @AbstractC8720o
    private Boolean prettyPrint;
    @AbstractC8720o
    private String quotaUser;
    @AbstractC8720o
    private String userIp;

    public DriveRequest(Drive drive, String str, String str2, Object obj, Class<T> cls) {
        super(drive, str, str2, obj, cls);
    }

    @Override // com.google.api.client.googleapis.p284d.p285e.AbstractC8605b, com.google.api.client.googleapis.p284d.AbstractC8597b
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

    @Override // com.google.api.client.googleapis.p284d.p285e.AbstractC8605b, com.google.api.client.googleapis.p284d.AbstractC8597b, com.google.api.client.util.GenericData
    public DriveRequest<T> set(String str, Object obj) {
        return (DriveRequest) super.set(str, obj);
    }

    public DriveRequest<T> setAlt(String str) {
        this.alt = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.p284d.p285e.AbstractC8605b, com.google.api.client.googleapis.p284d.AbstractC8597b
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

    @Override // com.google.api.client.googleapis.p284d.p285e.AbstractC8605b, com.google.api.client.googleapis.p284d.AbstractC8597b
    public DriveRequest<T> setRequestHeaders(C8650n c8650n) {
        return (DriveRequest) super.setRequestHeaders(c8650n);
    }

    public DriveRequest<T> setUserIp(String str) {
        this.userIp = str;
        return this;
    }
}
