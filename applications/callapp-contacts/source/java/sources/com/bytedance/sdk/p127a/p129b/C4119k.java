package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* renamed from: com.bytedance.sdk.a.b.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/k.class */
public final class C4119k {

    /* renamed from: a */
    public static final C4119k f15072a;

    /* renamed from: b */
    public static final C4119k f15073b;

    /* renamed from: c */
    public static final C4119k f15074c = new C4120a(false).m36524a();

    /* renamed from: h */
    private static final C4114h[] f15075h;

    /* renamed from: d */
    final boolean f15076d;

    /* renamed from: e */
    final boolean f15077e;

    /* renamed from: f */
    final String[] f15078f;

    /* renamed from: g */
    final String[] f15079g;

    /* renamed from: com.bytedance.sdk.a.b.k$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/k$a.class */
    public static final class C4120a {

        /* renamed from: a */
        boolean f15080a;

        /* renamed from: b */
        String[] f15081b;

        /* renamed from: c */
        String[] f15082c;

        /* renamed from: d */
        boolean f15083d;

        public C4120a(C4119k c4119k) {
            this.f15080a = c4119k.f15076d;
            this.f15081b = c4119k.f15078f;
            this.f15082c = c4119k.f15079g;
            this.f15083d = c4119k.f15077e;
        }

        C4120a(boolean z) {
            this.f15080a = z;
        }

        /* renamed from: a */
        public final C4120a m36523a(boolean z) {
            if (this.f15080a) {
                this.f15083d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        /* renamed from: a */
        public final C4120a m36522a(EnumC4103ad... enumC4103adArr) {
            if (this.f15080a) {
                String[] strArr = new String[enumC4103adArr.length];
                for (int i = 0; i < enumC4103adArr.length; i++) {
                    strArr[i] = enumC4103adArr[i].f14913f;
                }
                return m36519b(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        /* renamed from: a */
        public final C4120a m36521a(C4114h... c4114hArr) {
            if (this.f15080a) {
                String[] strArr = new String[c4114hArr.length];
                for (int i = 0; i < c4114hArr.length; i++) {
                    strArr[i] = c4114hArr[i].f15062bj;
                }
                return m36520a(strArr);
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: a */
        public final C4120a m36520a(String... strArr) {
            if (this.f15080a) {
                if (strArr.length == 0) {
                    throw new IllegalArgumentException("At least one cipher suite is required");
                }
                this.f15081b = (String[]) strArr.clone();
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: a */
        public final C4119k m36524a() {
            return new C4119k(this);
        }

        /* renamed from: b */
        public final C4120a m36519b(String... strArr) {
            if (this.f15080a) {
                if (strArr.length == 0) {
                    throw new IllegalArgumentException("At least one TLS version is required");
                }
                this.f15082c = (String[]) strArr.clone();
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
    }

    static {
        C4114h[] c4114hArr = {C4114h.f14998aX, C4114h.f15029bb, C4114h.f14999aY, C4114h.f15030bc, C4114h.f15036bi, C4114h.f15035bh, C4114h.f15025ay, C4114h.f14983aI, C4114h.f15026az, C4114h.f14984aJ, C4114h.f15007ag, C4114h.f15008ah, C4114h.f14952E, C4114h.f14956I, C4114h.f15044i};
        f15075h = c4114hArr;
        C4119k m36524a = new C4120a(true).m36521a(c4114hArr).m36522a(EnumC4103ad.TLS_1_3, EnumC4103ad.TLS_1_2, EnumC4103ad.TLS_1_1, EnumC4103ad.TLS_1_0).m36523a(true).m36524a();
        f15072a = m36524a;
        f15073b = new C4120a(m36524a).m36522a(EnumC4103ad.TLS_1_0).m36523a(true).m36524a();
    }

    C4119k(C4120a c4120a) {
        this.f15076d = c4120a.f15080a;
        this.f15078f = c4120a.f15081b;
        this.f15079g = c4120a.f15082c;
        this.f15077e = c4120a.f15083d;
    }

    /* renamed from: b */
    private C4119k m36527b(SSLSocket sSLSocket, boolean z) {
        String[] m36900a = this.f15078f != null ? C4015c.m36900a(C4114h.f14974a, sSLSocket.getEnabledCipherSuites(), this.f15078f) : sSLSocket.getEnabledCipherSuites();
        String[] m36900a2 = this.f15079g != null ? C4015c.m36900a(C4015c.f14581h, sSLSocket.getEnabledProtocols(), this.f15079g) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int m36901a = C4015c.m36901a(C4114h.f14974a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        String[] strArr = m36900a;
        if (z) {
            strArr = m36900a;
            if (m36901a != -1) {
                strArr = C4015c.m36896a(m36900a, supportedCipherSuites[m36901a]);
            }
        }
        return new C4120a(this).m36520a(strArr).m36519b(m36900a2).m36524a();
    }

    /* renamed from: a */
    public final void m36529a(SSLSocket sSLSocket, boolean z) {
        C4119k m36527b = m36527b(sSLSocket, z);
        String[] strArr = m36527b.f15079g;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = m36527b.f15078f;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    /* renamed from: a */
    public final boolean m36531a() {
        return this.f15076d;
    }

    /* renamed from: a */
    public final boolean m36530a(SSLSocket sSLSocket) {
        if (!this.f15076d) {
            return false;
        }
        if (this.f15079g != null && !C4015c.m36892b(C4015c.f14581h, this.f15079g, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        return this.f15078f == null || C4015c.m36892b(C4114h.f14974a, this.f15078f, sSLSocket.getEnabledCipherSuites());
    }

    /* renamed from: b */
    public final List<C4114h> m36528b() {
        String[] strArr = this.f15078f;
        if (strArr != null) {
            return C4114h.m36540a(strArr);
        }
        return null;
    }

    /* renamed from: c */
    public final List<EnumC4103ad> m36526c() {
        String[] strArr = this.f15079g;
        if (strArr != null) {
            return EnumC4103ad.m36570a(strArr);
        }
        return null;
    }

    /* renamed from: d */
    public final boolean m36525d() {
        return this.f15077e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4119k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C4119k c4119k = (C4119k) obj;
        boolean z = this.f15076d;
        if (z != c4119k.f15076d) {
            return false;
        }
        if (!z) {
            return true;
        }
        return Arrays.equals(this.f15078f, c4119k.f15078f) && Arrays.equals(this.f15079g, c4119k.f15079g) && this.f15077e == c4119k.f15077e;
    }

    public final int hashCode() {
        return this.f15076d ? ((((Arrays.hashCode(this.f15078f) + 527) * 31) + Arrays.hashCode(this.f15079g)) * 31) + (!this.f15077e ? 1 : 0) : 17;
    }

    public final String toString() {
        if (!this.f15076d) {
            return "ConnectionSpec()";
        }
        String str = "[all enabled]";
        String obj = this.f15078f != null ? m36528b().toString() : "[all enabled]";
        if (this.f15079g != null) {
            str = m36526c().toString();
        }
        return "ConnectionSpec(cipherSuites=" + obj + ", tlsVersions=" + str + ", supportsTlsExtensions=" + this.f15077e + ")";
    }
}
