package com.google.api.client.json.webtoken;

import com.google.api.client.a.ab;
import com.google.api.client.a.ae;
import com.google.api.client.a.d;
import com.google.api.client.a.q;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.common.base.m;
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
        @q(a = "alg")
        private String algorithm;
        @q(a = "crit")
        private List<String> critical;
        @q(a = "jwk")
        private String jwk;
        @q(a = "jku")
        private String jwkUrl;
        @q(a = "kid")
        private String keyId;
        @q(a = "x5c")
        private ArrayList<String> x509Certificates;
        @q(a = "x5t")
        private String x509Thumbprint;
        @q(a = "x5u")
        private String x509Url;

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
            this.jsonFactory = (JsonFactory) m.a(jsonFactory);
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
            boolean z = true;
            m.a(indexOf != -1);
            byte[] a2 = d.a(str.substring(0, indexOf));
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(46, i);
            m.a(indexOf2 != -1);
            int i2 = indexOf2 + 1;
            m.a(str.indexOf(46, i2) == -1);
            byte[] a3 = d.a(str.substring(i, indexOf2));
            byte[] a4 = d.a(str.substring(i2));
            byte[] a5 = ae.a(str.substring(0, indexOf2));
            Header header = (Header) this.jsonFactory.fromInputStream(new ByteArrayInputStream(a2), this.headerClass);
            if (header.getAlgorithm() == null) {
                z = false;
            }
            m.a(z);
            return new JsonWebSignature(header, (JsonWebToken.Payload) this.jsonFactory.fromInputStream(new ByteArrayInputStream(a3), this.payloadClass), a4, a5);
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
        this.signatureBytes = (byte[]) m.a(bArr);
        this.signedContentBytes = (byte[]) m.a(bArr2);
    }

    private static X509TrustManager getDefaultX509TrustManager() {
        TrustManager[] trustManagers;
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            instance.init((KeyStore) null);
            for (TrustManager trustManager : instance.getTrustManagers()) {
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
        String str = d.a(jsonFactory.toByteArray(header)) + "." + d.a(jsonFactory.toByteArray(payload));
        byte[] a2 = ae.a(str);
        Signature instance = Signature.getInstance("SHA256withRSA");
        instance.initSign(privateKey);
        instance.update(a2);
        byte[] sign = instance.sign();
        return str + "." + d.a(sign);
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
            return ab.a(Signature.getInstance("SHA256withRSA"), x509TrustManager, x509Certificates, this.signatureBytes, this.signedContentBytes);
        }
        if ("ES256".equals(algorithm)) {
            return ab.a(Signature.getInstance("SHA256withECDSA"), x509TrustManager, x509Certificates, DerEncoder.encode(this.signatureBytes), this.signedContentBytes);
        }
        return null;
    }

    public final boolean verifySignature(PublicKey publicKey) throws GeneralSecurityException {
        String algorithm = getHeader().getAlgorithm();
        if ("RS256".equals(algorithm)) {
            return ab.a(Signature.getInstance("SHA256withRSA"), publicKey, this.signatureBytes, this.signedContentBytes);
        }
        if ("ES256".equals(algorithm)) {
            return ab.a(Signature.getInstance("SHA256withECDSA"), publicKey, DerEncoder.encode(this.signatureBytes), this.signedContentBytes);
        }
        return false;
    }
}
