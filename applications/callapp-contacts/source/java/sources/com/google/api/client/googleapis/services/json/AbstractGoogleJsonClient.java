package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.AbstractC15296a;
import com.google.api.client.googleapis.services.AbstractC15301d;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/json/AbstractGoogleJsonClient.class */
public abstract class AbstractGoogleJsonClient extends AbstractC15296a {

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder.class */
    public static abstract class Builder extends AbstractC15296a.AbstractC15297a {
        public Builder(AbstractC15346w abstractC15346w, JsonFactory jsonFactory, String str, String str2, AbstractC15342s abstractC15342s, boolean z) {
            super(abstractC15346w, str, str2, new JsonObjectParser.Builder(jsonFactory).setWrapperKeys(z ? Arrays.asList("data", "error") : Collections.emptySet()).build(), abstractC15342s);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public abstract AbstractGoogleJsonClient build();

        public final JsonFactory getJsonFactory() {
            return getObjectParser().getJsonFactory();
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public final JsonObjectParser getObjectParser() {
            return (JsonObjectParser) super.getObjectParser();
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setGoogleClientRequestInitializer(AbstractC15301d abstractC15301d) {
            return (Builder) super.setGoogleClientRequestInitializer(abstractC15301d);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setHttpRequestInitializer(AbstractC15342s abstractC15342s) {
            return (Builder) super.setHttpRequestInitializer(abstractC15342s);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
        public Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.AbstractC15296a.AbstractC15297a
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

    @Override // com.google.api.client.googleapis.services.AbstractC15296a
    public JsonObjectParser getObjectParser() {
        return (JsonObjectParser) super.getObjectParser();
    }
}
