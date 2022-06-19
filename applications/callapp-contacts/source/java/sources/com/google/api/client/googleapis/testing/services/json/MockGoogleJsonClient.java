package com.google.api.client.googleapis.testing.services.json;

import com.google.api.client.googleapis.services.AbstractC15301d;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.json.JsonFactory;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient.class */
public class MockGoogleJsonClient extends AbstractGoogleJsonClient {

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient$Builder.class */
    public static class Builder extends AbstractGoogleJsonClient.Builder {
        public Builder(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, String str, String str2, AbstractC15342s abstractC15342s, boolean z) {
            super(abstractC15346w, jsonFactory, str, str2, abstractC15342s, z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public MockGoogleJsonClient build() {
            return new MockGoogleJsonClient(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setGoogleClientRequestInitializer(AbstractC15301d abstractC15301d) {
            return (Builder) super.setGoogleClientRequestInitializer(abstractC15301d);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setHttpRequestInitializer(AbstractC15342s abstractC15342s) {
            return (Builder) super.setHttpRequestInitializer(abstractC15342s);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setSuppressRequiredParameterChecks(boolean z) {
            return (Builder) super.setSuppressRequiredParameterChecks(z);
        }
    }

    protected MockGoogleJsonClient(Builder builder) {
        super(builder);
    }

    public MockGoogleJsonClient(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, String str, String str2, AbstractC15342s abstractC15342s, boolean z) {
        this(new Builder(abstractC15346w, jsonFactory, str, str2, abstractC15342s, z));
    }
}
