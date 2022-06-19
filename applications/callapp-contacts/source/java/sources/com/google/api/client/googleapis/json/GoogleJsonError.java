package com.google.api.client.googleapis.json;

import com.google.api.client.http.C15343t;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonError.class */
public class GoogleJsonError extends GenericJson {
    @AbstractC15247q
    private int code;
    @AbstractC15247q
    private List<ErrorInfo> errors;
    @AbstractC15247q
    private String message;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo.class */
    public static class ErrorInfo extends GenericJson {
        @AbstractC15247q
        private String domain;
        @AbstractC15247q
        private String location;
        @AbstractC15247q
        private String locationType;
        @AbstractC15247q
        private String message;
        @AbstractC15247q
        private String reason;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public ErrorInfo clone() {
            return (ErrorInfo) super.clone();
        }

        public final String getDomain() {
            return this.domain;
        }

        public final String getLocation() {
            return this.location;
        }

        public final String getLocationType() {
            return this.locationType;
        }

        public final String getMessage() {
            return this.message;
        }

        public final String getReason() {
            return this.reason;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public ErrorInfo set(String str, Object obj) {
            return (ErrorInfo) super.set(str, obj);
        }

        public final void setDomain(String str) {
            this.domain = str;
        }

        public final void setLocation(String str) {
            this.location = str;
        }

        public final void setLocationType(String str) {
            this.locationType = str;
        }

        public final void setMessage(String str) {
            this.message = str;
        }

        public final void setReason(String str) {
            this.reason = str;
        }
    }

    static {
        C15232j.m9242a(ErrorInfo.class);
    }

    public static GoogleJsonError parse(JsonFactory jsonFactory, C15343t c15343t) throws IOException {
        return (GoogleJsonError) new JsonObjectParser.Builder(jsonFactory).setWrapperKeys(Collections.singleton("error")).build().parseAndClose(c15343t.m9012h(), c15343t.m9008l(), (Class<Object>) GoogleJsonError.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public GoogleJsonError clone() {
        return (GoogleJsonError) super.clone();
    }

    public final int getCode() {
        return this.code;
    }

    public final List<ErrorInfo> getErrors() {
        return this.errors;
    }

    public final String getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public GoogleJsonError set(String str, Object obj) {
        return (GoogleJsonError) super.set(str, obj);
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setErrors(List<ErrorInfo> list) {
        this.errors = list;
    }

    public final void setMessage(String str) {
        this.message = str;
    }
}
