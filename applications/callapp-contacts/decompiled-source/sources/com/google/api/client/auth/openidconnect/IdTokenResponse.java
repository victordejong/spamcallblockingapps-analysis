package com.google.api.client.auth.openidconnect;

import com.google.api.client.a.q;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.auth.oauth2.d;
import com.google.common.base.m;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/openidconnect/IdTokenResponse.class */
public class IdTokenResponse extends TokenResponse {
    @q(a = "id_token")
    private String idToken;

    public static IdTokenResponse execute(d dVar) throws IOException {
        return (IdTokenResponse) dVar.a().a(IdTokenResponse.class);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public IdTokenResponse clone() {
        return (IdTokenResponse) super.clone();
    }

    public final String getIdToken() {
        return this.idToken;
    }

    public IdToken parseIdToken() throws IOException {
        return IdToken.parse(getFactory(), this.idToken);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public IdTokenResponse set(String str, Object obj) {
        return (IdTokenResponse) super.set(str, obj);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public IdTokenResponse setAccessToken(String str) {
        super.setAccessToken(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public IdTokenResponse setExpiresInSeconds(Long l) {
        super.setExpiresInSeconds(l);
        return this;
    }

    public IdTokenResponse setIdToken(String str) {
        this.idToken = (String) m.a(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public IdTokenResponse setRefreshToken(String str) {
        super.setRefreshToken(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public IdTokenResponse setScope(String str) {
        super.setScope(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public IdTokenResponse setTokenType(String str) {
        super.setTokenType(str);
        return this;
    }
}
