package com.google.api.client.auth.oauth2;

import com.facebook.AccessToken;
import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.common.base.C15391m;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/TokenResponse.class */
public class TokenResponse extends GenericJson {
    @AbstractC15247q(m9209a = AccessToken.ACCESS_TOKEN_KEY)
    private String accessToken;
    @AbstractC15247q(m9209a = AccessToken.EXPIRES_IN_KEY)
    private Long expiresInSeconds;
    @AbstractC15247q(m9209a = "refresh_token")
    private String refreshToken;
    @AbstractC15247q
    private String scope;
    @AbstractC15247q(m9209a = "token_type")
    private String tokenType;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public TokenResponse set(String str, Object obj) {
        return (TokenResponse) super.set(str, obj);
    }

    public TokenResponse setAccessToken(String str) {
        this.accessToken = (String) C15391m.m8946a(str);
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
        this.tokenType = (String) C15391m.m8946a(str);
        return this;
    }
}
