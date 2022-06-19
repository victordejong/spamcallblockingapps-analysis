package com.google.api.client.auth.openidconnect;

import com.google.api.client.auth.oauth2.C8586a;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8731w;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/openidconnect/IdTokenResponse.class */
public class IdTokenResponse extends TokenResponse {
    @AbstractC8720o("id_token")
    private String idToken;

    public static IdTokenResponse execute(C8586a c8586a) {
        return (IdTokenResponse) c8586a.executeUnparsed().m3060m(IdTokenResponse.class);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public IdTokenResponse clone() {
        return (IdTokenResponse) super.clone();
    }

    public final String getIdToken() {
        return this.idToken;
    }

    public IdToken parseIdToken() {
        return IdToken.m3294h(getFactory(), this.idToken);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
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
        this.idToken = (String) C8731w.m2836d(str);
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
