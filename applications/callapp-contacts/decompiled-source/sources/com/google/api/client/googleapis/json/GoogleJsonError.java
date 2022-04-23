package com.google.api.client.googleapis.json;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.http.t;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonError.class */
public class GoogleJsonError extends GenericJson {
    @q
    private int code;
    @q
    private List<ErrorInfo> errors;
    @q
    private String message;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo.class */
    public static class ErrorInfo extends GenericJson {
        @q
        private String domain;
        @q
        private String location;
        @q
        private String locationType;
        @q
        private String message;
        @q
        private String reason;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        j.a(ErrorInfo.class);
    }

    public static GoogleJsonError parse(JsonFactory jsonFactory, t tVar) throws IOException {
        return (GoogleJsonError) new JsonObjectParser.Builder(jsonFactory).setWrapperKeys(Collections.singleton("error")).build().parseAndClose(tVar.h(), tVar.l(), (Class<Object>) GoogleJsonError.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
