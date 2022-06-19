package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8731w;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse.class */
public class GoogleTokenResponse extends TokenResponse {
    @AbstractC8720o("id_token")
    private String idToken;

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GoogleTokenResponse clone() {
        return (GoogleTokenResponse) super.clone();
    }

    public final String getIdToken() {
        return this.idToken;
    }

    public GoogleIdToken parseIdToken() {
        return GoogleIdToken.m3289j(getFactory(), getIdToken());
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public GoogleTokenResponse set(String str, Object obj) {
        return (GoogleTokenResponse) super.set(str, obj);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setAccessToken(String str) {
        return (GoogleTokenResponse) super.setAccessToken(str);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setExpiresInSeconds(Long l) {
        return (GoogleTokenResponse) super.setExpiresInSeconds(l);
    }

    public GoogleTokenResponse setIdToken(String str) {
        this.idToken = (String) C8731w.m2836d(str);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setRefreshToken(String str) {
        return (GoogleTokenResponse) super.setRefreshToken(str);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setScope(String str) {
        return (GoogleTokenResponse) super.setScope(str);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setTokenType(String str) {
        return (GoogleTokenResponse) super.setTokenType(str);
    }
}
