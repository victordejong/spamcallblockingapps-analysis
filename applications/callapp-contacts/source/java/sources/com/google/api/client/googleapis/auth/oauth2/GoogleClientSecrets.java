package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15207aa;
import java.io.IOException;
import java.io.Reader;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets.class */
public final class GoogleClientSecrets extends GenericJson {
    @AbstractC15247q
    private Details installed;
    @AbstractC15247q
    private Details web;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details.class */
    public static final class Details extends GenericJson {
        @AbstractC15247q(m9209a = "auth_uri")
        private String authUri;
        @AbstractC15247q(m9209a = "client_id")
        private String clientId;
        @AbstractC15247q(m9209a = "client_secret")
        private String clientSecret;
        @AbstractC15247q(m9209a = "redirect_uris")
        private List<String> redirectUris;
        @AbstractC15247q(m9209a = "token_uri")
        private String tokenUri;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final Details clone() {
            return (Details) super.clone();
        }

        public final String getAuthUri() {
            return this.authUri;
        }

        public final String getClientId() {
            return this.clientId;
        }

        public final String getClientSecret() {
            return this.clientSecret;
        }

        public final List<String> getRedirectUris() {
            return this.redirectUris;
        }

        public final String getTokenUri() {
            return this.tokenUri;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final Details set(String str, Object obj) {
            return (Details) super.set(str, obj);
        }

        public final Details setAuthUri(String str) {
            this.authUri = str;
            return this;
        }

        public final Details setClientId(String str) {
            this.clientId = str;
            return this;
        }

        public final Details setClientSecret(String str) {
            this.clientSecret = str;
            return this;
        }

        public final Details setRedirectUris(List<String> list) {
            this.redirectUris = list;
            return this;
        }

        public final Details setTokenUri(String str) {
            this.tokenUri = str;
            return this;
        }
    }

    public static GoogleClientSecrets load(JsonFactory jsonFactory, Reader reader) throws IOException {
        return (GoogleClientSecrets) jsonFactory.fromReader(reader, GoogleClientSecrets.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final GoogleClientSecrets clone() {
        return (GoogleClientSecrets) super.clone();
    }

    public final Details getDetails() {
        boolean z = true;
        if ((this.web == null) == (this.installed == null)) {
            z = false;
        }
        C15207aa.m9281a(z);
        Details details = this.web;
        Details details2 = details;
        if (details == null) {
            details2 = this.installed;
        }
        return details2;
    }

    public final Details getInstalled() {
        return this.installed;
    }

    public final Details getWeb() {
        return this.web;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final GoogleClientSecrets set(String str, Object obj) {
        return (GoogleClientSecrets) super.set(str, obj);
    }

    public final GoogleClientSecrets setInstalled(Details details) {
        this.installed = details;
        return this;
    }

    public final GoogleClientSecrets setWeb(Details details) {
        this.web = details;
        return this;
    }
}
