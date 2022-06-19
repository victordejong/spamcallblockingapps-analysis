package com.google.api.client.auth.openidconnect;

import com.google.api.client.auth.oauth2.C15267d;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.common.base.C15391m;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/openidconnect/IdTokenResponse.class */
public class IdTokenResponse extends TokenResponse {
    @AbstractC15247q(m9209a = "id_token")
    private String idToken;

    public static IdTokenResponse execute(C15267d c15267d) throws IOException {
        return (IdTokenResponse) c15267d.m9189a().m9020a(IdTokenResponse.class);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public IdTokenResponse clone() {
        return (IdTokenResponse) super.clone();
    }

    public final String getIdToken() {
        return this.idToken;
    }

    public IdToken parseIdToken() throws IOException {
        return IdToken.parse(getFactory(), this.idToken);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        this.idToken = (String) C15391m.m8946a(str);
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
