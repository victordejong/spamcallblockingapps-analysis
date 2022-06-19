package com.google.api.client.auth.openidconnect;

import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.AbstractC8720o;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/openidconnect/IdToken.class */
public class IdToken extends JsonWebSignature {

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/openidconnect/IdToken$Payload.class */
    public static class Payload extends JsonWebToken.Payload {
        @AbstractC8720o("at_hash")
        private String accessTokenHash;
        @AbstractC8720o("auth_time")
        private Long authorizationTimeSeconds;
        @AbstractC8720o("azp")
        private String authorizedParty;
        @AbstractC8720o("acr")
        private String classReference;
        @AbstractC8720o("amr")
        private List<String> methodsReferences;
        @AbstractC8720o
        private String nonce;

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Payload clone() {
            return (Payload) super.clone();
        }

        public final String getAccessTokenHash() {
            return this.accessTokenHash;
        }

        public final Long getAuthorizationTimeSeconds() {
            return this.authorizationTimeSeconds;
        }

        public final String getAuthorizedParty() {
            return this.authorizedParty;
        }

        public final String getClassReference() {
            return this.classReference;
        }

        public final List<String> getMethodsReferences() {
            return this.methodsReferences;
        }

        public final String getNonce() {
            return this.nonce;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public Payload set(String str, Object obj) {
            return (Payload) super.set(str, obj);
        }

        public Payload setAccessTokenHash(String str) {
            this.accessTokenHash = str;
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setAudience(Object obj) {
            return (Payload) super.setAudience(obj);
        }

        public Payload setAuthorizationTimeSeconds(Long l) {
            this.authorizationTimeSeconds = l;
            return this;
        }

        public Payload setAuthorizedParty(String str) {
            this.authorizedParty = str;
            return this;
        }

        public Payload setClassReference(String str) {
            this.classReference = str;
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setExpirationTimeSeconds(Long l) {
            return (Payload) super.setExpirationTimeSeconds(l);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuedAtTimeSeconds(Long l) {
            return (Payload) super.setIssuedAtTimeSeconds(l);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuer(String str) {
            return (Payload) super.setIssuer(str);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setJwtId(String str) {
            return (Payload) super.setJwtId(str);
        }

        public Payload setMethodsReferences(List<String> list) {
            this.methodsReferences = list;
            return this;
        }

        public Payload setNonce(String str) {
            this.nonce = str;
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setNotBeforeTimeSeconds(Long l) {
            return (Payload) super.setNotBeforeTimeSeconds(l);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setSubject(String str) {
            return (Payload) super.setSubject(str);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setType(String str) {
            return (Payload) super.setType(str);
        }
    }

    public IdToken(JsonWebSignature.Header header, Payload payload, byte[] bArr, byte[] bArr2) {
        super(header, payload, bArr, bArr2);
    }

    /* renamed from: h */
    public static IdToken m3294h(AbstractC8667c abstractC8667c, String str) {
        JsonWebSignature m2961a = JsonWebSignature.m2962f(abstractC8667c).m2960b(Payload.class).m2961a(str);
        return new IdToken(m2961a.m2965c(), (Payload) m2961a.mo2958b(), m2961a.m2964d(), m2961a.m2963e());
    }

    /* renamed from: g */
    public Payload mo2958b() {
        return (Payload) super.mo2958b();
    }
}
