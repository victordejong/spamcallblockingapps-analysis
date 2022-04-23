package com.google.api.client.googleapis.testing.services.json;

import com.google.api.client.googleapis.services.d;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.http.s;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient.class */
public class MockGoogleJsonClient extends AbstractGoogleJsonClient {

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient$Builder.class */
    public static class Builder extends AbstractGoogleJsonClient.Builder {
        public Builder(w wVar, JsonFactory jsonFactory, String str, String str2, s sVar, boolean z) {
            super(wVar, jsonFactory, str, str2, sVar, z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public MockGoogleJsonClient build() {
            return new MockGoogleJsonClient(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setGoogleClientRequestInitializer(d dVar) {
            return (Builder) super.setGoogleClientRequestInitializer(dVar);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setHttpRequestInitializer(s sVar) {
            return (Builder) super.setHttpRequestInitializer(sVar);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setSuppressRequiredParameterChecks(boolean z) {
            return (Builder) super.setSuppressRequiredParameterChecks(z);
        }
    }

    protected MockGoogleJsonClient(Builder builder) {
        super(builder);
    }

    public MockGoogleJsonClient(w wVar, JsonFactory jsonFactory, String str, String str2, s sVar, boolean z) {
        this(new Builder(wVar, jsonFactory, str, str2, sVar, z));
    }
}
