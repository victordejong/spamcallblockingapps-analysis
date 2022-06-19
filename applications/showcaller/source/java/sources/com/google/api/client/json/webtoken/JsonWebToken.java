package com.google.api.client.json.webtoken;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8727v;
import com.google.api.client.util.C8731w;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebToken.class */
public class JsonWebToken {

    /* renamed from: a */
    private final Header f38464a;

    /* renamed from: b */
    private final Payload f38465b;

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebToken$Header.class */
    public static class Header extends C8666b {
        @AbstractC8720o("cty")
        private String contentType;
        @AbstractC8720o("typ")
        private String type;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Header clone() {
            return (Header) super.clone();
        }

        public final String getContentType() {
            return this.contentType;
        }

        public final String getType() {
            return this.type;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public Header set(String str, Object obj) {
            return (Header) super.set(str, obj);
        }

        public Header setContentType(String str) {
            this.contentType = str;
            return this;
        }

        public Header setType(String str) {
            this.type = str;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebToken$Payload.class */
    public static class Payload extends C8666b {
        @AbstractC8720o("aud")
        private Object audience;
        @AbstractC8720o("exp")
        private Long expirationTimeSeconds;
        @AbstractC8720o("iat")
        private Long issuedAtTimeSeconds;
        @AbstractC8720o("iss")
        private String issuer;
        @AbstractC8720o("jti")
        private String jwtId;
        @AbstractC8720o("nbf")
        private Long notBeforeTimeSeconds;
        @AbstractC8720o("sub")
        private String subject;
        @AbstractC8720o("typ")
        private String type;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Payload clone() {
            return (Payload) super.clone();
        }

        public final Object getAudience() {
            return this.audience;
        }

        public final List<String> getAudienceAsList() {
            Object obj = this.audience;
            return obj == null ? Collections.emptyList() : obj instanceof String ? Collections.singletonList((String) obj) : (List) obj;
        }

        public final Long getExpirationTimeSeconds() {
            return this.expirationTimeSeconds;
        }

        public final Long getIssuedAtTimeSeconds() {
            return this.issuedAtTimeSeconds;
        }

        public final String getIssuer() {
            return this.issuer;
        }

        public final String getJwtId() {
            return this.jwtId;
        }

        public final Long getNotBeforeTimeSeconds() {
            return this.notBeforeTimeSeconds;
        }

        public final String getSubject() {
            return this.subject;
        }

        public final String getType() {
            return this.type;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public Payload set(String str, Object obj) {
            return (Payload) super.set(str, obj);
        }

        public Payload setAudience(Object obj) {
            this.audience = obj;
            return this;
        }

        public Payload setExpirationTimeSeconds(Long l) {
            this.expirationTimeSeconds = l;
            return this;
        }

        public Payload setIssuedAtTimeSeconds(Long l) {
            this.issuedAtTimeSeconds = l;
            return this;
        }

        public Payload setIssuer(String str) {
            this.issuer = str;
            return this;
        }

        public Payload setJwtId(String str) {
            this.jwtId = str;
            return this;
        }

        public Payload setNotBeforeTimeSeconds(Long l) {
            this.notBeforeTimeSeconds = l;
            return this;
        }

        public Payload setSubject(String str) {
            this.subject = str;
            return this;
        }

        public Payload setType(String str) {
            this.type = str;
            return this;
        }
    }

    public JsonWebToken(Header header, Payload payload) {
        this.f38464a = (Header) C8731w.m2836d(header);
        this.f38465b = (Payload) C8731w.m2836d(payload);
    }

    /* renamed from: a */
    public Header m2959a() {
        return this.f38464a;
    }

    /* renamed from: b */
    public Payload mo2958b() {
        return this.f38465b;
    }

    public String toString() {
        return C8727v.m2843b(this).m2842a("header", this.f38464a).m2842a("payload", this.f38465b).toString();
    }
}
