package com.google.api.client.auth.oauth2;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8731w;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/oauth2/TokenErrorResponse.class */
public class TokenErrorResponse extends C8666b {
    @AbstractC8720o
    private String error;
    @AbstractC8720o("error_description")
    private String errorDescription;
    @AbstractC8720o("error_uri")
    private String errorUri;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public TokenErrorResponse clone() {
        return (TokenErrorResponse) super.clone();
    }

    public final String getError() {
        return this.error;
    }

    public final String getErrorDescription() {
        return this.errorDescription;
    }

    public final String getErrorUri() {
        return this.errorUri;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public TokenErrorResponse set(String str, Object obj) {
        return (TokenErrorResponse) super.set(str, obj);
    }

    public TokenErrorResponse setError(String str) {
        this.error = (String) C8731w.m2836d(str);
        return this;
    }

    public TokenErrorResponse setErrorDescription(String str) {
        this.errorDescription = str;
        return this;
    }

    public TokenErrorResponse setErrorUri(String str) {
        this.errorUri = str;
        return this;
    }
}
