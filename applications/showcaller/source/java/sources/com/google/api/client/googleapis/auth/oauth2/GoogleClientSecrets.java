package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8731w;
import java.io.Reader;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets.class */
public final class GoogleClientSecrets extends C8666b {
    @AbstractC8720o
    private Details installed;
    @AbstractC8720o
    private Details web;

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details.class */
    public static final class Details extends C8666b {
        @AbstractC8720o("auth_uri")
        private String authUri;
        @AbstractC8720o("client_id")
        private String clientId;
        @AbstractC8720o("client_secret")
        private String clientSecret;
        @AbstractC8720o("redirect_uris")
        private List<String> redirectUris;
        @AbstractC8720o("token_uri")
        private String tokenUri;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Details clone() {
            return (Details) super.clone();
        }

        public String getAuthUri() {
            return this.authUri;
        }

        public String getClientId() {
            return this.clientId;
        }

        public String getClientSecret() {
            return this.clientSecret;
        }

        public List<String> getRedirectUris() {
            return this.redirectUris;
        }

        public String getTokenUri() {
            return this.tokenUri;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public Details set(String str, Object obj) {
            return (Details) super.set(str, obj);
        }

        public Details setAuthUri(String str) {
            this.authUri = str;
            return this;
        }

        public Details setClientId(String str) {
            this.clientId = str;
            return this;
        }

        public Details setClientSecret(String str) {
            this.clientSecret = str;
            return this;
        }

        public Details setRedirectUris(List<String> list) {
            this.redirectUris = list;
            return this;
        }

        public Details setTokenUri(String str) {
            this.tokenUri = str;
            return this;
        }
    }

    public static GoogleClientSecrets load(AbstractC8667c abstractC8667c, Reader reader) {
        return (GoogleClientSecrets) abstractC8667c.m3028g(reader, GoogleClientSecrets.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GoogleClientSecrets clone() {
        return (GoogleClientSecrets) super.clone();
    }

    public Details getDetails() {
        boolean z = true;
        if ((this.web == null) == (this.installed == null)) {
            z = false;
        }
        C8731w.m2839a(z);
        Details details = this.web;
        Details details2 = details;
        if (details == null) {
            details2 = this.installed;
        }
        return details2;
    }

    public Details getInstalled() {
        return this.installed;
    }

    public Details getWeb() {
        return this.web;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public GoogleClientSecrets set(String str, Object obj) {
        return (GoogleClientSecrets) super.set(str, obj);
    }

    public GoogleClientSecrets setInstalled(Details details) {
        this.installed = details;
        return this;
    }

    public GoogleClientSecrets setWeb(Details details) {
        this.web = details;
        return this;
    }
}
