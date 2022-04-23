package p599h;

import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import okhttp3.TlsVersion;
import p599h.p600d0.C10109c;
/* renamed from: h.k */
/* loaded from: classes2-dex2jar.jar:h/k.class */
public final class C10221k {

    /* renamed from: g */
    public static final C10221k f37714g;

    /* renamed from: a */
    public final boolean f37716a;

    /* renamed from: b */
    public final boolean f37717b;

    /* renamed from: c */
    public final String[] f37718c;

    /* renamed from: d */
    public final String[] f37719d;

    /* renamed from: e */
    public static final C10216h[] f37712e = {C10216h.f37698q, C10216h.f37699r, C10216h.f37700s, C10216h.f37701t, C10216h.f37702u, C10216h.f37692k, C10216h.f37694m, C10216h.f37693l, C10216h.f37695n, C10216h.f37697p, C10216h.f37696o};

    /* renamed from: f */
    public static final C10216h[] f37713f = {C10216h.f37698q, C10216h.f37699r, C10216h.f37700s, C10216h.f37701t, C10216h.f37702u, C10216h.f37692k, C10216h.f37694m, C10216h.f37693l, C10216h.f37695n, C10216h.f37697p, C10216h.f37696o, C10216h.f37690i, C10216h.f37691j, C10216h.f37688g, C10216h.f37689h, C10216h.f37686e, C10216h.f37687f, C10216h.f37685d};

    /* renamed from: h */
    public static final C10221k f37715h = new C10222a(false).m1030a();

    /* renamed from: h.k$a */
    /* loaded from: classes2-dex2jar.jar:h/k$a.class */
    public static final class C10222a {

        /* renamed from: a */
        public boolean f37720a;

        /* renamed from: b */
        public String[] f37721b;

        /* renamed from: c */
        public String[] f37722c;

        /* renamed from: d */
        public boolean f37723d;

        public C10222a(C10221k kVar) {
            this.f37720a = kVar.f37716a;
            this.f37721b = kVar.f37718c;
            this.f37722c = kVar.f37719d;
            this.f37723d = kVar.f37717b;
        }

        public C10222a(boolean z) {
            this.f37720a = z;
        }

        /* renamed from: a */
        public C10222a m1029a(boolean z) {
            if (this.f37720a) {
                this.f37723d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        /* renamed from: a */
        public C10222a m1028a(C10216h... hVarArr) {
            if (this.f37720a) {
                String[] strArr = new String[hVarArr.length];
                for (int i = 0; i < hVarArr.length; i++) {
                    strArr[i] = hVarArr[i].f37703a;
                }
                m1027a(strArr);
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: a */
        public C10222a m1027a(String... strArr) {
            if (!this.f37720a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            } else if (strArr.length != 0) {
                this.f37721b = (String[]) strArr.clone();
                return this;
            } else {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
        }

        /* renamed from: a */
        public C10222a m1026a(TlsVersion... tlsVersionArr) {
            if (this.f37720a) {
                String[] strArr = new String[tlsVersionArr.length];
                for (int i = 0; i < tlsVersionArr.length; i++) {
                    strArr[i] = tlsVersionArr[i].javaName;
                }
                m1025b(strArr);
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        /* renamed from: a */
        public C10221k m1030a() {
            return new C10221k(this);
        }

        /* renamed from: b */
        public C10222a m1025b(String... strArr) {
            if (!this.f37720a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            } else if (strArr.length != 0) {
                this.f37722c = (String[]) strArr.clone();
                return this;
            } else {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
        }
    }

    static {
        C10222a aVar = new C10222a(true);
        aVar.m1028a(f37712e);
        aVar.m1026a(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2);
        aVar.m1029a(true);
        aVar.m1030a();
        C10222a aVar2 = new C10222a(true);
        aVar2.m1028a(f37713f);
        aVar2.m1026a(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0);
        aVar2.m1029a(true);
        f37714g = aVar2.m1030a();
        C10222a aVar3 = new C10222a(true);
        aVar3.m1028a(f37713f);
        aVar3.m1026a(TlsVersion.TLS_1_0);
        aVar3.m1029a(true);
        aVar3.m1030a();
    }

    public C10221k(C10222a aVar) {
        this.f37716a = aVar.f37720a;
        this.f37718c = aVar.f37721b;
        this.f37719d = aVar.f37722c;
        this.f37717b = aVar.f37723d;
    }

    /* renamed from: a */
    public List<C10216h> m1037a() {
        String[] strArr = this.f37718c;
        return strArr != null ? C10216h.m1046a(strArr) : null;
    }

    /* renamed from: a */
    public void m1035a(SSLSocket sSLSocket, boolean z) {
        C10221k b = m1033b(sSLSocket, z);
        String[] strArr = b.f37719d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = b.f37718c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    /* renamed from: a */
    public boolean m1036a(SSLSocket sSLSocket) {
        if (!this.f37716a) {
            return false;
        }
        String[] strArr = this.f37719d;
        if (strArr != null && !C10109c.m1439b(C10109c.f37328o, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f37718c;
        return strArr2 == null || C10109c.m1439b(C10216h.f37683b, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    /* renamed from: b */
    public final C10221k m1033b(SSLSocket sSLSocket, boolean z) {
        String[] a = this.f37718c != null ? C10109c.m1448a(C10216h.f37683b, sSLSocket.getEnabledCipherSuites(), this.f37718c) : sSLSocket.getEnabledCipherSuites();
        String[] a2 = this.f37719d != null ? C10109c.m1448a(C10109c.f37328o, sSLSocket.getEnabledProtocols(), this.f37719d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int a3 = C10109c.m1449a(C10216h.f37683b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        String[] strArr = a;
        if (z) {
            strArr = a;
            if (a3 != -1) {
                strArr = C10109c.m1443a(a, supportedCipherSuites[a3]);
            }
        }
        C10222a aVar = new C10222a(this);
        aVar.m1027a(strArr);
        aVar.m1025b(a2);
        return aVar.m1030a();
    }

    /* renamed from: b */
    public boolean m1034b() {
        return this.f37716a;
    }

    /* renamed from: c */
    public boolean m1032c() {
        return this.f37717b;
    }

    /* renamed from: d */
    public List<TlsVersion> m1031d() {
        String[] strArr = this.f37719d;
        return strArr != null ? TlsVersion.forJavaNames(strArr) : null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C10221k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C10221k kVar = (C10221k) obj;
        boolean z = this.f37716a;
        if (z != kVar.f37716a) {
            return false;
        }
        if (z) {
            return Arrays.equals(this.f37718c, kVar.f37718c) && Arrays.equals(this.f37719d, kVar.f37719d) && this.f37717b == kVar.f37717b;
        }
        return true;
    }

    public int hashCode() {
        return this.f37716a ? ((((527 + Arrays.hashCode(this.f37718c)) * 31) + Arrays.hashCode(this.f37719d)) * 31) + (!this.f37717b ? 1 : 0) : 17;
    }

    public String toString() {
        if (!this.f37716a) {
            return "ConnectionSpec()";
        }
        String str = "[all enabled]";
        String obj = this.f37718c != null ? m1037a().toString() : "[all enabled]";
        if (this.f37719d != null) {
            str = m1031d().toString();
        }
        return "ConnectionSpec(cipherSuites=" + obj + ", tlsVersions=" + str + ", supportsTlsExtensions=" + this.f37717b + ")";
    }
}
