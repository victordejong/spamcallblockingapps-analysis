package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.a.q;
import com.google.api.client.auth.openidconnect.IdToken;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/GoogleIdToken.class */
public class GoogleIdToken extends IdToken {

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload.class */
    public static class Payload extends IdToken.Payload {
        @q(a = "email")
        private String email;
        @q(a = "email_verified")
        private Object emailVerified;
        @q(a = "hd")
        private String hostedDomain;

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public Payload clone() {
            return (Payload) super.clone();
        }

        public String getEmail() {
            return this.email;
        }

        public Boolean getEmailVerified() {
            Object obj = this.emailVerified;
            if (obj == null) {
                return null;
            }
            return obj instanceof Boolean ? (Boolean) obj : Boolean.valueOf((String) obj);
        }

        public String getHostedDomain() {
            return this.hostedDomain;
        }

        @Deprecated
        public String getIssuee() {
            return getAuthorizedParty();
        }

        @Deprecated
        public String getUserId() {
            return getSubject();
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.a.n
        public Payload set(String str, Object obj) {
            return (Payload) super.set(str, obj);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAccessTokenHash(String str) {
            return (Payload) super.setAccessTokenHash(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setAudience(Object obj) {
            return (Payload) super.setAudience(obj);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAuthorizationTimeSeconds(Long l) {
            return (Payload) super.setAuthorizationTimeSeconds(l);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAuthorizedParty(String str) {
            return (Payload) super.setAuthorizedParty(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setClassReference(String str) {
            return (Payload) super.setClassReference(str);
        }

        public Payload setEmail(String str) {
            this.email = str;
            return this;
        }

        public Payload setEmailVerified(Boolean bool) {
            this.emailVerified = bool;
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setExpirationTimeSeconds(Long l) {
            return (Payload) super.setExpirationTimeSeconds(l);
        }

        public Payload setHostedDomain(String str) {
            this.hostedDomain = str;
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuedAtTimeSeconds(Long l) {
            return (Payload) super.setIssuedAtTimeSeconds(l);
        }

        @Deprecated
        public Payload setIssuee(String str) {
            return setAuthorizedParty(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuer(String str) {
            return (Payload) super.setIssuer(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setJwtId(String str) {
            return (Payload) super.setJwtId(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setMethodsReferences(List<String> list) {
            return (Payload) super.setMethodsReferences(list);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setNonce(String str) {
            return (Payload) super.setNonce(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setNotBeforeTimeSeconds(Long l) {
            return (Payload) super.setNotBeforeTimeSeconds(l);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setSubject(String str) {
            return (Payload) super.setSubject(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setType(String str) {
            return (Payload) super.setType(str);
        }

        @Deprecated
        public Payload setUserId(String str) {
            return setSubject(str);
        }
    }

    public GoogleIdToken(JsonWebSignature.Header header, Payload payload, byte[] bArr, byte[] bArr2) {
        super(header, payload, bArr, bArr2);
    }

    public static GoogleIdToken parse(JsonFactory jsonFactory, String str) throws IOException {
        JsonWebSignature parse = JsonWebSignature.parser(jsonFactory).setPayloadClass(Payload.class).parse(str);
        return new GoogleIdToken(parse.getHeader(), (Payload) parse.getPayload(), parse.getSignatureBytes(), parse.getSignedContentBytes());
    }

    @Override // com.google.api.client.auth.openidconnect.IdToken, com.google.api.client.json.webtoken.JsonWebToken
    public Payload getPayload() {
        return (Payload) super.getPayload();
    }

    public boolean verify(a aVar) throws GeneralSecurityException, IOException {
        return aVar.a(this);
    }
}
