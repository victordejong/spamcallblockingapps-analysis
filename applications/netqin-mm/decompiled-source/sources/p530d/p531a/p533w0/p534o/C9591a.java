package p530d.p531a.p533w0.p534o;

import io.grpc.okhttp.internal.CipherSuite;
import io.grpc.okhttp.internal.TlsVersion;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* renamed from: d.a.w0.o.a */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/a.class */
public final class C9591a {

    /* renamed from: e */
    public static final CipherSuite[] f36606e = {CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_DSS_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA};

    /* renamed from: f */
    public static final C9591a f36607f;

    /* renamed from: a */
    public final boolean f36608a;

    /* renamed from: b */
    public final String[] f36609b;

    /* renamed from: c */
    public final String[] f36610c;

    /* renamed from: d */
    public final boolean f36611d;

    /* renamed from: d.a.w0.o.a$b */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/o/a$b.class */
    public static final class C9593b {

        /* renamed from: a */
        public boolean f36612a;

        /* renamed from: b */
        public String[] f36613b;

        /* renamed from: c */
        public String[] f36614c;

        /* renamed from: d */
        public boolean f36615d;

        public C9593b(C9591a aVar) {
            this.f36612a = aVar.f36608a;
            this.f36613b = aVar.f36609b;
            this.f36614c = aVar.f36610c;
            this.f36615d = aVar.f36611d;
        }

        public C9593b(boolean z) {
            this.f36612a = z;
        }

        /* renamed from: a */
        public C9593b m2310a(boolean z) {
            if (this.f36612a) {
                this.f36615d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        /* renamed from: a */
        public C9593b m2309a(CipherSuite... cipherSuiteArr) {
            if (this.f36612a) {
                String[] strArr = new String[cipherSuiteArr.length];
                for (int i = 0; i < cipherSuiteArr.length; i++) {
                    strArr[i] = cipherSuiteArr[i].javaName;
                }
                this.f36613b = strArr;
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: a */
        public C9593b m2308a(TlsVersion... tlsVersionArr) {
            if (!this.f36612a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            } else if (tlsVersionArr.length != 0) {
                String[] strArr = new String[tlsVersionArr.length];
                for (int i = 0; i < tlsVersionArr.length; i++) {
                    strArr[i] = tlsVersionArr[i].javaName;
                }
                this.f36614c = strArr;
                return this;
            } else {
                throw new IllegalArgumentException("At least one TlsVersion is required");
            }
        }

        /* renamed from: a */
        public C9593b m2307a(String... strArr) {
            if (this.f36612a) {
                if (strArr == null) {
                    this.f36613b = null;
                } else {
                    this.f36613b = (String[]) strArr.clone();
                }
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: a */
        public C9591a m2312a() {
            return new C9591a(this);
        }

        /* renamed from: b */
        public C9593b m2305b(String... strArr) {
            if (this.f36612a) {
                if (strArr == null) {
                    this.f36614c = null;
                } else {
                    this.f36614c = (String[]) strArr.clone();
                }
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
    }

    static {
        C9593b bVar = new C9593b(true);
        bVar.m2309a(f36606e);
        bVar.m2308a(TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0);
        bVar.m2310a(true);
        C9591a a = bVar.m2312a();
        f36607f = a;
        C9593b bVar2 = new C9593b(a);
        bVar2.m2308a(TlsVersion.TLS_1_0);
        bVar2.m2310a(true);
        bVar2.m2312a();
        new C9593b(false).m2312a();
    }

    public C9591a(C9593b bVar) {
        this.f36608a = bVar.f36612a;
        this.f36609b = bVar.f36613b;
        this.f36610c = bVar.f36614c;
        this.f36611d = bVar.f36615d;
    }

    /* renamed from: a */
    public List<CipherSuite> m2319a() {
        String[] strArr = this.f36609b;
        if (strArr == null) {
            return null;
        }
        CipherSuite[] cipherSuiteArr = new CipherSuite[strArr.length];
        int i = 0;
        while (true) {
            String[] strArr2 = this.f36609b;
            if (i >= strArr2.length) {
                return C9597e.m2280a(cipherSuiteArr);
            }
            cipherSuiteArr[i] = CipherSuite.forJavaName(strArr2[i]);
            i++;
        }
    }

    /* renamed from: a */
    public void m2317a(SSLSocket sSLSocket, boolean z) {
        C9591a b = m2314b(sSLSocket, z);
        sSLSocket.setEnabledProtocols(b.f36610c);
        String[] strArr = b.f36609b;
        if (strArr != null) {
            sSLSocket.setEnabledCipherSuites(strArr);
        }
    }

    /* renamed from: b */
    public final C9591a m2314b(SSLSocket sSLSocket, boolean z) {
        String[] strArr;
        if (this.f36609b != null) {
            strArr = (String[]) C9597e.m2281a(String.class, this.f36609b, sSLSocket.getEnabledCipherSuites());
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
        String[] strArr3 = (String[]) C9597e.m2281a(String.class, this.f36610c, sSLSocket.getEnabledProtocols());
        C9593b bVar = new C9593b(this);
        bVar.m2307a(strArr2);
        bVar.m2305b(strArr3);
        return bVar.m2312a();
    }

    /* renamed from: b */
    public boolean m2316b() {
        return this.f36611d;
    }

    /* renamed from: c */
    public List<TlsVersion> m2313c() {
        TlsVersion[] tlsVersionArr = new TlsVersion[this.f36610c.length];
        int i = 0;
        while (true) {
            String[] strArr = this.f36610c;
            if (i >= strArr.length) {
                return C9597e.m2280a(tlsVersionArr);
            }
            tlsVersionArr[i] = TlsVersion.forJavaName(strArr[i]);
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C9591a)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C9591a aVar = (C9591a) obj;
        boolean z = this.f36608a;
        if (z != aVar.f36608a) {
            return false;
        }
        if (z) {
            return Arrays.equals(this.f36609b, aVar.f36609b) && Arrays.equals(this.f36610c, aVar.f36610c) && this.f36611d == aVar.f36611d;
        }
        return true;
    }

    public int hashCode() {
        return this.f36608a ? ((((527 + Arrays.hashCode(this.f36609b)) * 31) + Arrays.hashCode(this.f36610c)) * 31) + (!this.f36611d ? 1 : 0) : 17;
    }

    public String toString() {
        if (!this.f36608a) {
            return "ConnectionSpec()";
        }
        List<CipherSuite> a = m2319a();
        String obj = a == null ? "[use default]" : a.toString();
        return "ConnectionSpec(cipherSuites=" + obj + ", tlsVersions=" + m2313c() + ", supportsTlsExtensions=" + this.f36611d + ")";
    }
}
