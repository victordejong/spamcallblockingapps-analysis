package com.google.api.client.googleapis.json;

import com.google.api.client.http.C8658t;
import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.C8666b;
import com.google.api.client.json.C8669e;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonError.class */
public class GoogleJsonError extends C8666b {
    @AbstractC8720o
    private int code;
    @AbstractC8720o
    private List<ErrorInfo> errors;
    @AbstractC8720o
    private String message;

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo.class */
    public static class ErrorInfo extends C8666b {
        @AbstractC8720o
        private String domain;
        @AbstractC8720o
        private String location;
        @AbstractC8720o
        private String locationType;
        @AbstractC8720o
        private String message;
        @AbstractC8720o
        private String reason;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
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

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
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
        C8712j.m2874j(ErrorInfo.class);
    }

    public static GoogleJsonError parse(AbstractC8667c abstractC8667c, C8658t c8658t) {
        return (GoogleJsonError) new C8669e.C8670a(abstractC8667c).m3016b(Collections.singleton("error")).m3017a().mo2845a(c8658t.m3070c(), c8658t.m3069d(), GoogleJsonError.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
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

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
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
