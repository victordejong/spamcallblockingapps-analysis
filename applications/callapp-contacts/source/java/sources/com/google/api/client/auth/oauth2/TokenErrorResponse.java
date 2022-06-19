package com.google.api.client.auth.oauth2;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.common.base.C15391m;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/TokenErrorResponse.class */
public class TokenErrorResponse extends GenericJson {
    @AbstractC15247q
    private String error;
    @AbstractC15247q(m9209a = "error_description")
    private String errorDescription;
    @AbstractC15247q(m9209a = "error_uri")
    private String errorUri;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public TokenErrorResponse set(String str, Object obj) {
        return (TokenErrorResponse) super.set(str, obj);
    }

    public TokenErrorResponse setError(String str) {
        this.error = (String) C15391m.m8946a(str);
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
