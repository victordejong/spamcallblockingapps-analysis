package com.google.api.services.youtube;

import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest;
import com.google.api.client.http.C15335n;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/YouTubeRequest.class */
public abstract class YouTubeRequest<T> extends AbstractGoogleJsonClientRequest<T> {
    @AbstractC15247q
    private String alt;
    @AbstractC15247q
    private String fields;
    @AbstractC15247q
    private String key;
    @AbstractC15247q(m9209a = "oauth_token")
    private String oauthToken;
    @AbstractC15247q
    private Boolean prettyPrint;
    @AbstractC15247q
    private String quotaUser;
    @AbstractC15247q
    private String userIp;

    public YouTubeRequest(YouTube youTube, String str, String str2, Object obj, Class<T> cls) {
        super(youTube, str, str2, obj, cls);
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b
    public final YouTube getAbstractGoogleClient() {
        return (YouTube) super.getAbstractGoogleClient();
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

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b, com.google.api.client.p379a.C15241n
    public YouTubeRequest<T> set(String str, Object obj) {
        return (YouTubeRequest) super.set(str, obj);
    }

    public YouTubeRequest<T> setAlt(String str) {
        this.alt = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b
    public YouTubeRequest<T> setDisableGZipContent(boolean z) {
        return (YouTubeRequest) super.setDisableGZipContent(z);
    }

    public YouTubeRequest<T> setFields(String str) {
        this.fields = str;
        return this;
    }

    public YouTubeRequest<T> setKey(String str) {
        this.key = str;
        return this;
    }

    public YouTubeRequest<T> setOauthToken(String str) {
        this.oauthToken = str;
        return this;
    }

    public YouTubeRequest<T> setPrettyPrint(Boolean bool) {
        this.prettyPrint = bool;
        return this;
    }

    public YouTubeRequest<T> setQuotaUser(String str) {
        this.quotaUser = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b
    public YouTubeRequest<T> setRequestHeaders(C15335n c15335n) {
        return (YouTubeRequest) super.setRequestHeaders(c15335n);
    }

    public YouTubeRequest<T> setUserIp(String str) {
        this.userIp = str;
        return this;
    }
}
