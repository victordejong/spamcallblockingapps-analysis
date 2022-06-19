package com.google.api.client.json.webtoken;

import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8688a0;
import com.google.api.client.util.C8698e;
import com.google.api.client.util.C8731w;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebSignature.class */
public class JsonWebSignature extends JsonWebToken {

    /* renamed from: c */
    private final byte[] f38459c;

    /* renamed from: d */
    private final byte[] f38460d;

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebSignature$Header.class */
    public static class Header extends JsonWebToken.Header {
        @AbstractC8720o("alg")
        private String algorithm;
        @AbstractC8720o("crit")
        private List<String> critical;
        @AbstractC8720o("jwk")
        private String jwk;
        @AbstractC8720o("jku")
        private String jwkUrl;
        @AbstractC8720o("kid")
        private String keyId;
        @AbstractC8720o("x5c")
        private ArrayList<String> x509Certificates;
        @AbstractC8720o("x5t")
        private String x509Thumbprint;
        @AbstractC8720o("x5u")
        private String x509Url;

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
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

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
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

    /* renamed from: com.google.api.client.json.webtoken.JsonWebSignature$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/json/webtoken/JsonWebSignature$a.class */
    public static final class C8680a {

        /* renamed from: a */
        private final AbstractC8667c f38461a;

        /* renamed from: b */
        private Class<? extends Header> f38462b = Header.class;

        /* renamed from: c */
        private Class<? extends JsonWebToken.Payload> f38463c = JsonWebToken.Payload.class;

        public C8680a(AbstractC8667c abstractC8667c) {
            this.f38461a = (AbstractC8667c) C8731w.m2836d(abstractC8667c);
        }

        /* renamed from: a */
        public JsonWebSignature m2961a(String str) {
            int indexOf = str.indexOf(46);
            C8731w.m2839a(indexOf != -1);
            byte[] m2912a = C8698e.m2912a(str.substring(0, indexOf));
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(46, i);
            C8731w.m2839a(indexOf2 != -1);
            int i2 = indexOf2 + 1;
            C8731w.m2839a(str.indexOf(46, i2) == -1);
            byte[] m2912a2 = C8698e.m2912a(str.substring(i, indexOf2));
            byte[] m2912a3 = C8698e.m2912a(str.substring(i2));
            byte[] m2937a = C8688a0.m2937a(str.substring(0, indexOf2));
            Header header = (Header) this.f38461a.m3029f(new ByteArrayInputStream(m2912a), this.f38462b);
            C8731w.m2839a(header.getAlgorithm() != null);
            return new JsonWebSignature(header, (JsonWebToken.Payload) this.f38461a.m3029f(new ByteArrayInputStream(m2912a2), this.f38463c), m2912a3, m2937a);
        }

        /* renamed from: b */
        public C8680a m2960b(Class<? extends JsonWebToken.Payload> cls) {
            this.f38463c = cls;
            return this;
        }
    }

    public JsonWebSignature(Header header, JsonWebToken.Payload payload, byte[] bArr, byte[] bArr2) {
        super(header, payload);
        this.f38459c = (byte[]) C8731w.m2836d(bArr);
        this.f38460d = (byte[]) C8731w.m2836d(bArr2);
    }

    /* renamed from: f */
    public static C8680a m2962f(AbstractC8667c abstractC8667c) {
        return new C8680a(abstractC8667c);
    }

    /* renamed from: c */
    public Header m2965c() {
        return (Header) super.m2959a();
    }

    /* renamed from: d */
    public final byte[] m2964d() {
        byte[] bArr = this.f38459c;
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* renamed from: e */
    public final byte[] m2963e() {
        byte[] bArr = this.f38460d;
        return Arrays.copyOf(bArr, bArr.length);
    }
}
