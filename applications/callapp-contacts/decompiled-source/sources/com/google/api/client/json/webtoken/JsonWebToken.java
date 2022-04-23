package com.google.api.client.json.webtoken;

import com.google.api.client.a.q;
import com.google.api.client.a.y;
import com.google.api.client.json.GenericJson;
import com.google.common.base.m;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebToken.class */
public class JsonWebToken {
    private final Header header;
    private final Payload payload;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebToken$Header.class */
    public static class Header extends GenericJson {
        @q(a = "cty")
        private String contentType;
        @q(a = "typ")
        private String type;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public Header clone() {
            return (Header) super.clone();
        }

        public final String getContentType() {
            return this.contentType;
        }

        public final String getType() {
            return this.type;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebToken$Payload.class */
    public static class Payload extends GenericJson {
        @q(a = "aud")
        private Object audience;
        @q(a = "exp")
        private Long expirationTimeSeconds;
        @q(a = "iat")
        private Long issuedAtTimeSeconds;
        @q(a = "iss")
        private String issuer;
        @q(a = "jti")
        private String jwtId;
        @q(a = "nbf")
        private Long notBeforeTimeSeconds;
        @q(a = "sub")
        private String subject;
        @q(a = "typ")
        private String type;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        this.header = (Header) m.a(header);
        this.payload = (Payload) m.a(payload);
    }

    public Header getHeader() {
        return this.header;
    }

    public Payload getPayload() {
        return this.payload;
    }

    public String toString() {
        return y.a(this).b("header", this.header).b("payload", this.payload).toString();
    }
}
