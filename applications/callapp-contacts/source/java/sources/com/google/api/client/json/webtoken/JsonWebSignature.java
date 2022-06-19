package com.google.api.client.json.webtoken;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15208ab;
import com.google.api.client.p379a.C15212ae;
import com.google.api.client.p379a.C15223d;
import com.google.common.base.C15391m;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebSignature.class */
public class JsonWebSignature extends JsonWebToken {
    private final byte[] signatureBytes;
    private final byte[] signedContentBytes;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebSignature$Header.class */
    public static class Header extends JsonWebToken.Header {
        @AbstractC15247q(m9209a = "alg")
        private String algorithm;
        @AbstractC15247q(m9209a = "crit")
        private List<String> critical;
        @AbstractC15247q(m9209a = "jwk")
        private String jwk;
        @AbstractC15247q(m9209a = "jku")
        private String jwkUrl;
        @AbstractC15247q(m9209a = "kid")
        private String keyId;
        @AbstractC15247q(m9209a = "x5c")
        private ArrayList<String> x509Certificates;
        @AbstractC15247q(m9209a = "x5t")
        private String x509Thumbprint;
        @AbstractC15247q(m9209a = "x5u")
        private String x509Url;

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public Header clone() {
            return (Header) super.clone();
        }

        public final String getAlgorithm() {
            return this.algorithm;
        }

        public final List<String> getCritical() {
            List<String> list = this.critical;
            if (list == null || list.isEmpty()) {
                return null;
            }
            return new ArrayList(this.critical);
        }

        public final String getJwk() {
            return this.jwk;
        }

        public final String getJwkUrl() {
            return this.jwkUrl;
        }

        public final String getKeyId() {
            return this.keyId;
        }

        public final List<String> getX509Certificates() {
            return new ArrayList(this.x509Certificates);
        }

        public final String getX509Thumbprint() {
            return this.x509Thumbprint;
        }

        public final String getX509Url() {
            return this.x509Url;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public Header set(String str, Object obj) {
            return (Header) super.set(str, obj);
        }

        public Header setAlgorithm(String str) {
            this.algorithm = str;
            return this;
        }

        public Header setCritical(List<String> list) {
            this.critical = new ArrayList(list);
            return this;
        }

        public Header setJwk(String str) {
            this.jwk = str;
            return this;
        }

        public Header setJwkUrl(String str) {
            this.jwkUrl = str;
            return this;
        }

        public Header setKeyId(String str) {
            this.keyId = str;
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header
        public Header setType(String str) {
            super.setType(str);
            return this;
        }

        public Header setX509Certificates(List<String> list) {
            this.x509Certificates = new ArrayList<>(list);
            return this;
        }

        public Header setX509Thumbprint(String str) {
            this.x509Thumbprint = str;
            return this;
        }

        public Header setX509Url(String str) {
            this.x509Url = str;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebSignature$Parser.class */
    public static final class Parser {
        private final JsonFactory jsonFactory;
        private Class<? extends Header> headerClass = Header.class;
        private Class<? extends JsonWebToken.Payload> payloadClass = JsonWebToken.Payload.class;

        public Parser(JsonFactory jsonFactory) {
            this.jsonFactory = (JsonFactory) C15391m.m8946a(jsonFactory);
        }

        public final Class<? extends Header> getHeaderClass() {
            return this.headerClass;
        }

        public final JsonFactory getJsonFactory() {
            return this.jsonFactory;
        }

        public final Class<? extends JsonWebToken.Payload> getPayloadClass() {
            return this.payloadClass;
        }

        public final JsonWebSignature parse(String str) throws IOException {
            int indexOf = str.indexOf(46);
            C15391m.m8943a(indexOf != -1);
            byte[] m9251a = C15223d.m9251a(str.substring(0, indexOf));
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(46, i);
            C15391m.m8943a(indexOf2 != -1);
            int i2 = indexOf2 + 1;
            C15391m.m8943a(str.indexOf(46, i2) == -1);
            byte[] m9251a2 = C15223d.m9251a(str.substring(i, indexOf2));
            byte[] m9251a3 = C15223d.m9251a(str.substring(i2));
            byte[] m9272a = C15212ae.m9272a(str.substring(0, indexOf2));
            Header header = (Header) this.jsonFactory.fromInputStream(new ByteArrayInputStream(m9251a), this.headerClass);
            C15391m.m8943a(header.getAlgorithm() != null);
            return new JsonWebSignature(header, (JsonWebToken.Payload) this.jsonFactory.fromInputStream(new ByteArrayInputStream(m9251a2), this.payloadClass), m9251a3, m9272a);
        }

        public final Parser setHeaderClass(Class<? extends Header> cls) {
            this.headerClass = cls;
            return this;
        }

        public final Parser setPayloadClass(Class<? extends JsonWebToken.Payload> cls) {
            this.payloadClass = cls;
            return this;
        }
    }

    public JsonWebSignature(Header header, JsonWebToken.Payload payload, byte[] bArr, byte[] bArr2) {
        super(header, payload);
        this.signatureBytes = (byte[]) C15391m.m8946a(bArr);
        this.signedContentBytes = (byte[]) C15391m.m8946a(bArr2);
    }

    private static X509TrustManager getDefaultX509TrustManager() {
        TrustManager[] trustManagers;
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            return null;
        } catch (KeyStoreException | NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static JsonWebSignature parse(JsonFactory jsonFactory, String str) throws IOException {
        return parser(jsonFactory).parse(str);
    }

    public static Parser parser(JsonFactory jsonFactory) {
        return new Parser(jsonFactory);
    }

    public static String signUsingRsaSha256(PrivateKey privateKey, JsonFactory jsonFactory, Header header, JsonWebToken.Payload payload) throws GeneralSecurityException, IOException {
        String str = C15223d.m9250a(jsonFactory.toByteArray(header)) + "." + C15223d.m9250a(jsonFactory.toByteArray(payload));
        byte[] m9272a = C15212ae.m9272a(str);
        Signature signature = Signature.getInstance("SHA256withRSA");
        signature.initSign(privateKey);
        signature.update(m9272a);
        byte[] sign = signature.sign();
        return str + "." + C15223d.m9250a(sign);
    }

    @Override // com.google.api.client.json.webtoken.JsonWebToken
    public Header getHeader() {
        return (Header) super.getHeader();
    }

    public final byte[] getSignatureBytes() {
        byte[] bArr = this.signatureBytes;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final byte[] getSignedContentBytes() {
        byte[] bArr = this.signedContentBytes;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final X509Certificate verifySignature() throws GeneralSecurityException {
        X509TrustManager defaultX509TrustManager = getDefaultX509TrustManager();
        if (defaultX509TrustManager == null) {
            return null;
        }
        return verifySignature(defaultX509TrustManager);
    }

    public final X509Certificate verifySignature(X509TrustManager x509TrustManager) throws GeneralSecurityException {
        List<String> x509Certificates = getHeader().getX509Certificates();
        if (x509Certificates == null || x509Certificates.isEmpty()) {
            return null;
        }
        String algorithm = getHeader().getAlgorithm();
        if ("RS256".equals(algorithm)) {
            return C15208ab.m9274a(Signature.getInstance("SHA256withRSA"), x509TrustManager, x509Certificates, this.signatureBytes, this.signedContentBytes);
        }
        if (!"ES256".equals(algorithm)) {
            return null;
        }
        return C15208ab.m9274a(Signature.getInstance("SHA256withECDSA"), x509TrustManager, x509Certificates, DerEncoder.encode(this.signatureBytes), this.signedContentBytes);
    }

    public final boolean verifySignature(PublicKey publicKey) throws GeneralSecurityException {
        String algorithm = getHeader().getAlgorithm();
        if ("RS256".equals(algorithm)) {
            return C15208ab.m9275a(Signature.getInstance("SHA256withRSA"), publicKey, this.signatureBytes, this.signedContentBytes);
        }
        if (!"ES256".equals(algorithm)) {
            return false;
        }
        return C15208ab.m9275a(Signature.getInstance("SHA256withECDSA"), publicKey, DerEncoder.encode(this.signatureBytes), this.signedContentBytes);
    }
}
