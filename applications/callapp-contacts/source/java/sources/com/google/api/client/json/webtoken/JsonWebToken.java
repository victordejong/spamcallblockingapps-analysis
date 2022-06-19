package com.google.api.client.json.webtoken;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15255y;
import com.google.common.base.C15391m;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebToken.class */
public class JsonWebToken {
    private final Header header;
    private final Payload payload;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebToken$Header.class */
    public static class Header extends GenericJson {
        @AbstractC15247q(m9209a = "cty")
        private String contentType;
        @AbstractC15247q(m9209a = "typ")
        private String type;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public Header clone() {
            return (Header) super.clone();
        }

        public final String getContentType() {
            return this.contentType;
        }

        public final String getType() {
            return this.type;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        @AbstractC15247q(m9209a = "aud")
        private Object audience;
        @AbstractC15247q(m9209a = "exp")
        private Long expirationTimeSeconds;
        @AbstractC15247q(m9209a = "iat")
        private Long issuedAtTimeSeconds;
        @AbstractC15247q(m9209a = "iss")
        private String issuer;
        @AbstractC15247q(m9209a = "jti")
        private String jwtId;
        @AbstractC15247q(m9209a = "nbf")
        private Long notBeforeTimeSeconds;
        @AbstractC15247q(m9209a = "sub")
        private String subject;
        @AbstractC15247q(m9209a = "typ")
        private String type;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        this.header = (Header) C15391m.m8946a(header);
        this.payload = (Payload) C15391m.m8946a(payload);
    }

    public Header getHeader() {
        return this.header;
    }

    public Payload getPayload() {
        return this.payload;
    }

    public String toString() {
        return C15255y.m9206a(this).m9203b("header", this.header).m9203b("payload", this.payload).toString();
    }
}
