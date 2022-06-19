package com.google.api.client.auth.oauth2;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8731w;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/oauth2/TokenResponse.class */
public class TokenResponse extends C8666b {
    @AbstractC8720o("access_token")
    private String accessToken;
    @AbstractC8720o("expires_in")
    private Long expiresInSeconds;
    @AbstractC8720o("refresh_token")
    private String refreshToken;
    @AbstractC8720o
    private String scope;
    @AbstractC8720o("token_type")
    private String tokenType;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public TokenResponse clone() {
        return (TokenResponse) super.clone();
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public Long getExpiresInSeconds() {
        return this.expiresInSeconds;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public String getScope() {
        return this.scope;
    }

    public String getTokenType() {
        return this.tokenType;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public TokenResponse set(String str, Object obj) {
        return (TokenResponse) super.set(str, obj);
    }

    public TokenResponse setAccessToken(String str) {
        this.accessToken = (String) C8731w.m2836d(str);
        return this;
    }

    public TokenResponse setExpiresInSeconds(Long l) {
        this.expiresInSeconds = l;
        return this;
    }

    public TokenResponse setRefreshToken(String str) {
        this.refreshToken = str;
        return this;
    }

    public TokenResponse setScope(String str) {
        this.scope = str;
        return this;
    }

    public TokenResponse setTokenType(String str) {
        this.tokenType = (String) C8731w.m2836d(str);
        return this;
    }
}
