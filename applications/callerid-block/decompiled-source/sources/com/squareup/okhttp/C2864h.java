package com.squareup.okhttp;

import com.squareup.okhttp.p089u.C2975i;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* renamed from: com.squareup.okhttp.h */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/h.class */
public final class C2864h {

    /* renamed from: e */
    private static final CipherSuite[] f12111e;

    /* renamed from: f */
    public static final C2864h f12112f;

    /* renamed from: g */
    public static final C2864h f12113g;

    /* renamed from: h */
    public static final C2864h f12114h = new C2866b(false).m1248e();

    /* renamed from: a */
    final boolean f12115a;

    /* renamed from: b */
    private final String[] f12116b;

    /* renamed from: c */
    private final String[] f12117c;

    /* renamed from: d */
    final boolean f12118d;

    /* renamed from: com.squareup.okhttp.h$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/h$b.class */
    public static final class C2866b {

        /* renamed from: a */
        private boolean f12119a;

        /* renamed from: b */
        private String[] f12120b;

        /* renamed from: c */
        private String[] f12121c;

        /* renamed from: d */
        private boolean f12122d;

        public C2866b(C2864h hVar) {
            this.f12119a = hVar.f12115a;
            this.f12120b = hVar.f12116b;
            this.f12121c = hVar.f12117c;
            this.f12122d = hVar.f12118d;
        }

        C2866b(boolean z) {
            this.f12119a = z;
        }

        /* renamed from: e */
        public C2864h m1248e() {
            return new C2864h(this);
        }

        /* renamed from: f */
        public C2866b m1247f(CipherSuite... cipherSuiteArr) {
            if (this.f12119a) {
                String[] strArr = new String[cipherSuiteArr.length];
                for (int i = 0; i < cipherSuiteArr.length; i++) {
                    strArr[i] = cipherSuiteArr[i].javaName;
                }
                this.f12120b = strArr;
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: g */
        public C2866b m1246g(String... strArr) {
            if (this.f12119a) {
                if (strArr == null) {
                    this.f12120b = null;
                } else {
                    this.f12120b = (String[]) strArr.clone();
                }
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: h */
        public C2866b m1245h(boolean z) {
            if (this.f12119a) {
                this.f12122d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        /* renamed from: i */
        public C2866b m1244i(TlsVersion... tlsVersionArr) {
            if (!this.f12119a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            } else if (tlsVersionArr.length != 0) {
                String[] strArr = new String[tlsVersionArr.length];
                for (int i = 0; i < tlsVersionArr.length; i++) {
                    strArr[i] = tlsVersionArr[i].javaName;
                }
                this.f12121c = strArr;
                return this;
            } else {
                throw new IllegalArgumentException("At least one TlsVersion is required");
            }
        }

        /* renamed from: j */
        public C2866b m1243j(String... strArr) {
            if (this.f12119a) {
                if (strArr == null) {
                    this.f12121c = null;
                } else {
                    this.f12121c = (String[]) strArr.clone();
                }
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
    }

    static {
        CipherSuite[] cipherSuiteArr = {CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_DSS_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        f12111e = cipherSuiteArr;
        C2866b bVar = new C2866b(true);
        bVar.m1247f(cipherSuiteArr);
        TlsVersion tlsVersion = TlsVersion.TLS_1_2;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_1;
        TlsVersion tlsVersion3 = TlsVersion.TLS_1_0;
        bVar.m1244i(tlsVersion, tlsVersion2, tlsVersion3);
        bVar.m1245h(true);
        C2864h e = bVar.m1248e();
        f12112f = e;
        C2866b bVar2 = new C2866b(e);
        bVar2.m1244i(tlsVersion3);
        bVar2.m1245h(true);
        f12113g = bVar2.m1248e();
    }

    private C2864h(C2866b bVar) {
        this.f12115a = bVar.f12119a;
        this.f12116b = bVar.f12120b;
        this.f12117c = bVar.f12121c;
        this.f12118d = bVar.f12122d;
    }

    /* renamed from: e */
    private static <T> boolean m1258e(T[] tArr, T t) {
        for (T t2 : tArr) {
            if (C2975i.m654f(t, t2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    private static boolean m1256g(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        for (String str : strArr) {
            if (m1258e(strArr2, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private C2864h m1255h(SSLSocket sSLSocket, boolean z) {
        String[] strArr;
        if (this.f12116b != null) {
            strArr = (String[]) C2975i.m648l(String.class, this.f12116b, sSLSocket.getEnabledCipherSuites());
        } else {
            strArr = null;
        }
        String[] strArr2 = strArr;
        if (z) {
            strArr2 = strArr;
            if (Arrays.asList(sSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
                if (strArr == null) {
                    strArr = sSLSocket.getEnabledCipherSuites();
                }
                int length = strArr.length + 1;
                strArr2 = new String[length];
                System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                strArr2[length - 1] = "TLS_FALLBACK_SCSV";
            }
        }
        String[] strArr3 = (String[]) C2975i.m648l(String.class, this.f12117c, sSLSocket.getEnabledProtocols());
        C2866b bVar = new C2866b(this);
        bVar.m1246g(strArr2);
        bVar.m1243j(strArr3);
        return bVar.m1248e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m1260c(SSLSocket sSLSocket, boolean z) {
        C2864h h = m1255h(sSLSocket, z);
        sSLSocket.setEnabledProtocols(h.f12117c);
        String[] strArr = h.f12116b;
        if (strArr != null) {
            sSLSocket.setEnabledCipherSuites(strArr);
        }
    }

    /* renamed from: d */
    public List<CipherSuite> m1259d() {
        String[] strArr = this.f12116b;
        if (strArr == null) {
            return null;
        }
        CipherSuite[] cipherSuiteArr = new CipherSuite[strArr.length];
        int i = 0;
        while (true) {
            String[] strArr2 = this.f12116b;
            if (i >= strArr2.length) {
                return C2975i.m651i(cipherSuiteArr);
            }
            cipherSuiteArr[i] = CipherSuite.forJavaName(strArr2[i]);
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C2864h)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C2864h hVar = (C2864h) obj;
        boolean z = this.f12115a;
        if (z != hVar.f12115a) {
            return false;
        }
        if (z) {
            return Arrays.equals(this.f12116b, hVar.f12116b) && Arrays.equals(this.f12117c, hVar.f12117c) && this.f12118d == hVar.f12118d;
        }
        return true;
    }

    /* renamed from: f */
    public boolean m1257f(SSLSocket sSLSocket) {
        boolean z = false;
        if (!this.f12115a) {
            return false;
        }
        if (!m1256g(this.f12117c, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr = this.f12116b;
        String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        if (strArr != null) {
            z = m1256g(this.f12116b, enabledCipherSuites);
        } else if (enabledCipherSuites.length > 0) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return this.f12115a ? ((((527 + Arrays.hashCode(this.f12116b)) * 31) + Arrays.hashCode(this.f12117c)) * 31) + (!this.f12118d ? 1 : 0) : 17;
    }

    /* renamed from: i */
    public boolean m1254i() {
        return this.f12118d;
    }

    /* renamed from: j */
    public List<TlsVersion> m1253j() {
        TlsVersion[] tlsVersionArr = new TlsVersion[this.f12117c.length];
        int i = 0;
        while (true) {
            String[] strArr = this.f12117c;
            if (i >= strArr.length) {
                return C2975i.m651i(tlsVersionArr);
            }
            tlsVersionArr[i] = TlsVersion.forJavaName(strArr[i]);
            i++;
        }
    }

    public String toString() {
        if (!this.f12115a) {
            return "ConnectionSpec()";
        }
        List<CipherSuite> d = m1259d();
        String obj = d == null ? "[use default]" : d.toString();
        return "ConnectionSpec(cipherSuites=" + obj + ", tlsVersions=" + m1253j() + ", supportsTlsExtensions=" + this.f12118d + ")";
    }
}
