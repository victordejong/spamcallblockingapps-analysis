package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.a;
import com.google.api.client.googleapis.services.d;
import com.google.api.client.http.s;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/json/AbstractGoogleJsonClient.class */
public abstract class AbstractGoogleJsonClient extends a {

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder.class */
    public static abstract class Builder extends a.AbstractC0505a {
        public Builder(w wVar, JsonFactory jsonFactory, String str, String str2, s sVar, boolean z) {
            super(wVar, str, str2, new JsonObjectParser.Builder(jsonFactory).setWrapperKeys(z ? Arrays.asList("data", "error") : Collections.emptySet()).build(), sVar);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public abstract AbstractGoogleJsonClient build();

        public final JsonFactory getJsonFactory() {
            return getObjectParser().getJsonFactory();
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public final JsonObjectParser getObjectParser() {
            return (JsonObjectParser) super.getObjectParser();
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setGoogleClientRequestInitializer(d dVar) {
            return (Builder) super.setGoogleClientRequestInitializer(dVar);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setHttpRequestInitializer(s sVar) {
            return (Builder) super.setHttpRequestInitializer(sVar);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.a.AbstractC0505a
        public Builder setSuppressRequiredParameterChecks(boolean z) {
            return (Builder) super.setSuppressRequiredParameterChecks(z);
        }
    }

    public AbstractGoogleJsonClient(Builder builder) {
        super(builder);
    }

    public final JsonFactory getJsonFactory() {
        return getObjectParser().getJsonFactory();
    }

    @Override // com.google.api.client.googleapis.services.a
    public JsonObjectParser getObjectParser() {
        return (JsonObjectParser) super.getObjectParser();
    }
}
