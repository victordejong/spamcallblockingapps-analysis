package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.c;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final k f8107a;

    /* renamed from: b  reason: collision with root package name */
    public static final k f8108b;

    /* renamed from: c  reason: collision with root package name */
    public static final k f8109c = new a(false).a();
    private static final h[] h;

    /* renamed from: d  reason: collision with root package name */
    final boolean f8110d;
    final boolean e;
    final String[] f;
    final String[] g;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/k$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f8111a;

        /* renamed from: b  reason: collision with root package name */
        String[] f8112b;

        /* renamed from: c  reason: collision with root package name */
        String[] f8113c;

        /* renamed from: d  reason: collision with root package name */
        boolean f8114d;

        public a(k kVar) {
            this.f8111a = kVar.f8110d;
            this.f8112b = kVar.f;
            this.f8113c = kVar.g;
            this.f8114d = kVar.e;
        }

        a(boolean z) {
            this.f8111a = z;
        }

        public final a a(boolean z) {
            if (this.f8111a) {
                this.f8114d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public final a a(ad... adVarArr) {
            if (this.f8111a) {
                String[] strArr = new String[adVarArr.length];
                for (int i = 0; i < adVarArr.length; i++) {
                    strArr[i] = adVarArr[i].f;
                }
                return b(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public final a a(h... hVarArr) {
            if (this.f8111a) {
                String[] strArr = new String[hVarArr.length];
                for (int i = 0; i < hVarArr.length; i++) {
                    strArr[i] = hVarArr[i].bj;
                }
                return a(strArr);
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public final a a(String... strArr) {
            if (!this.f8111a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            } else if (strArr.length != 0) {
                this.f8112b = (String[]) strArr.clone();
                return this;
            } else {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
        }

        public final k a() {
            return new k(this);
        }

        public final a b(String... strArr) {
            if (!this.f8111a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            } else if (strArr.length != 0) {
                this.f8113c = (String[]) strArr.clone();
                return this;
            } else {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
        }
    }

    static {
        h[] hVarArr = {h.aX, h.bb, h.aY, h.bc, h.bi, h.bh, h.ay, h.aI, h.az, h.aJ, h.ag, h.ah, h.E, h.I, h.i};
        h = hVarArr;
        k a2 = new a(true).a(hVarArr).a(ad.TLS_1_3, ad.TLS_1_2, ad.TLS_1_1, ad.TLS_1_0).a(true).a();
        f8107a = a2;
        f8108b = new a(a2).a(ad.TLS_1_0).a(true).a();
    }

    k(a aVar) {
        this.f8110d = aVar.f8111a;
        this.f = aVar.f8112b;
        this.g = aVar.f8113c;
        this.e = aVar.f8114d;
    }

    private k b(SSLSocket sSLSocket, boolean z) {
        String[] a2 = this.f != null ? c.a(h.f8098a, sSLSocket.getEnabledCipherSuites(), this.f) : sSLSocket.getEnabledCipherSuites();
        String[] a3 = this.g != null ? c.a(c.h, sSLSocket.getEnabledProtocols(), this.g) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int a4 = c.a(h.f8098a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        String[] strArr = a2;
        if (z) {
            strArr = a2;
            if (a4 != -1) {
                strArr = c.a(a2, supportedCipherSuites[a4]);
            }
        }
        return new a(this).a(strArr).b(a3).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(SSLSocket sSLSocket, boolean z) {
        k b2 = b(sSLSocket, z);
        String[] strArr = b2.g;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = b2.f;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public final boolean a() {
        return this.f8110d;
    }

    public final boolean a(SSLSocket sSLSocket) {
        if (!this.f8110d) {
            return false;
        }
        if (this.g == null || c.b(c.h, this.g, sSLSocket.getEnabledProtocols())) {
            return this.f == null || c.b(h.f8098a, this.f, sSLSocket.getEnabledCipherSuites());
        }
        return false;
    }

    public final List<h> b() {
        String[] strArr = this.f;
        if (strArr != null) {
            return h.a(strArr);
        }
        return null;
    }

    public final List<ad> c() {
        String[] strArr = this.g;
        if (strArr != null) {
            return ad.a(strArr);
        }
        return null;
    }

    public final boolean d() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        k kVar = (k) obj;
        boolean z = this.f8110d;
        if (z != kVar.f8110d) {
            return false;
        }
        if (z) {
            return Arrays.equals(this.f, kVar.f) && Arrays.equals(this.g, kVar.g) && this.e == kVar.e;
        }
        return true;
    }

    public final int hashCode() {
        return this.f8110d ? ((((Arrays.hashCode(this.f) + 527) * 31) + Arrays.hashCode(this.g)) * 31) + (!this.e ? 1 : 0) : 17;
    }

    public final String toString() {
        if (!this.f8110d) {
            return "ConnectionSpec()";
        }
        String str = "[all enabled]";
        String obj = this.f != null ? b().toString() : "[all enabled]";
        if (this.g != null) {
            str = c().toString();
        }
        return "ConnectionSpec(cipherSuites=" + obj + ", tlsVersions=" + str + ", supportsTlsExtensions=" + this.e + ")";
    }
}
