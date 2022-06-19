package okhttp3;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.k */
/* loaded from: classes-dex2jar.jar:okhttp3/k.class */
public final class C2074k {

    /* renamed from: d */
    final boolean f5310d;

    /* renamed from: e */
    final boolean f5311e;
    @Nullable

    /* renamed from: f */
    final String[] f5312f;
    @Nullable

    /* renamed from: g */
    final String[] f5313g;

    /* renamed from: h */
    private static final C1971h[] f5309h = {C1971h.f4839aX, C1971h.f4870bb, C1971h.f4840aY, C1971h.f4871bc, C1971h.f4877bi, C1971h.f4876bh, C1971h.f4824aI, C1971h.f4825aJ, C1971h.f4848ag, C1971h.f4849ah, C1971h.f4793E, C1971h.f4797I, C1971h.f4885i};

    /* renamed from: a */
    public static final C2074k f5306a = new C2075a(true).m2020a(f5309h).m2021a(EnumC1960ae.TLS_1_3, EnumC1960ae.TLS_1_2, EnumC1960ae.TLS_1_1, EnumC1960ae.TLS_1_0).m2023a(true).m2024a();

    /* renamed from: b */
    public static final C2074k f5307b = new C2075a(f5306a).m2021a(EnumC1960ae.TLS_1_0).m2023a(true).m2024a();

    /* renamed from: c */
    public static final C2074k f5308c = new C2075a(false).m2024a();

    /* renamed from: okhttp3.k$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/k$a.class */
    public static final class C2075a {

        /* renamed from: a */
        boolean f5314a;
        @Nullable

        /* renamed from: b */
        String[] f5315b;
        @Nullable

        /* renamed from: c */
        String[] f5316c;

        /* renamed from: d */
        boolean f5317d;

        public C2075a(C2074k c2074k) {
            this.f5314a = c2074k.f5310d;
            this.f5315b = c2074k.f5312f;
            this.f5316c = c2074k.f5313g;
            this.f5317d = c2074k.f5311e;
        }

        C2075a(boolean z) {
            this.f5314a = z;
        }

        /* renamed from: a */
        public C2075a m2023a(boolean z) {
            if (this.f5314a) {
                this.f5317d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        /* renamed from: a */
        public C2075a m2022a(String... strArr) {
            if (this.f5314a) {
                if (strArr.length == 0) {
                    throw new IllegalArgumentException("At least one cipher suite is required");
                }
                this.f5315b = (String[]) strArr.clone();
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: a */
        public C2075a m2021a(EnumC1960ae... enumC1960aeArr) {
            if (this.f5314a) {
                String[] strArr = new String[enumC1960aeArr.length];
                for (int i = 0; i < enumC1960aeArr.length; i++) {
                    strArr[i] = enumC1960aeArr[i].f4754f;
                }
                return m2019b(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        /* renamed from: a */
        public C2075a m2020a(C1971h... c1971hArr) {
            if (this.f5314a) {
                String[] strArr = new String[c1971hArr.length];
                for (int i = 0; i < c1971hArr.length; i++) {
                    strArr[i] = c1971hArr[i].f4903bj;
                }
                return m2022a(strArr);
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        /* renamed from: a */
        public C2074k m2024a() {
            return new C2074k(this);
        }

        /* renamed from: b */
        public C2075a m2019b(String... strArr) {
            if (this.f5314a) {
                if (strArr.length == 0) {
                    throw new IllegalArgumentException("At least one TLS version is required");
                }
                this.f5316c = (String[]) strArr.clone();
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
    }

    C2074k(C2075a c2075a) {
        this.f5310d = c2075a.f5314a;
        this.f5312f = c2075a.f5315b;
        this.f5313g = c2075a.f5316c;
        this.f5311e = c2075a.f5317d;
    }

    /* renamed from: b */
    private C2074k m2027b(SSLSocket sSLSocket, boolean z) {
        String[] m2339a = this.f5312f != null ? C1999c.m2339a(C1971h.f4815a, sSLSocket.getEnabledCipherSuites(), this.f5312f) : sSLSocket.getEnabledCipherSuites();
        String[] m2339a2 = this.f5313g != null ? C1999c.m2339a(C1999c.f4989h, sSLSocket.getEnabledProtocols(), this.f5313g) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int m2340a = C1999c.m2340a(C1971h.f4815a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        String[] strArr = m2339a;
        if (z) {
            strArr = m2339a;
            if (m2340a != -1) {
                strArr = C1999c.m2334a(m2339a, supportedCipherSuites[m2340a]);
            }
        }
        return new C2075a(this).m2022a(strArr).m2019b(m2339a2).m2024a();
    }

    /* renamed from: a */
    public void m2029a(SSLSocket sSLSocket, boolean z) {
        C2074k m2027b = m2027b(sSLSocket, z);
        String[] strArr = m2027b.f5313g;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = m2027b.f5312f;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    /* renamed from: a */
    public boolean m2031a() {
        return this.f5310d;
    }

    /* renamed from: a */
    public boolean m2030a(SSLSocket sSLSocket) {
        if (!this.f5310d) {
            return false;
        }
        if (this.f5313g != null && !C1999c.m2330b(C1999c.f4989h, this.f5313g, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        return this.f5312f == null || C1999c.m2330b(C1971h.f4815a, this.f5312f, sSLSocket.getEnabledCipherSuites());
    }

    @Nullable
    /* renamed from: b */
    public List<C1971h> m2028b() {
        String[] strArr = this.f5312f;
        return strArr != null ? C1971h.m2426a(strArr) : null;
    }

    @Nullable
    /* renamed from: c */
    public List<EnumC1960ae> m2026c() {
        String[] strArr = this.f5313g;
        return strArr != null ? EnumC1960ae.m2454a(strArr) : null;
    }

    /* renamed from: d */
    public boolean m2025d() {
        return this.f5311e;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C2074k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C2074k c2074k = (C2074k) obj;
        boolean z = this.f5310d;
        if (z != c2074k.f5310d) {
            return false;
        }
        if (!z) {
            return true;
        }
        return Arrays.equals(this.f5312f, c2074k.f5312f) && Arrays.equals(this.f5313g, c2074k.f5313g) && this.f5311e == c2074k.f5311e;
    }

    public int hashCode() {
        return this.f5310d ? ((((527 + Arrays.hashCode(this.f5312f)) * 31) + Arrays.hashCode(this.f5313g)) * 31) + (!this.f5311e ? 1 : 0) : 17;
    }

    public String toString() {
        if (!this.f5310d) {
            return "ConnectionSpec()";
        }
        String str = "[all enabled]";
        String obj = this.f5312f != null ? m2028b().toString() : "[all enabled]";
        if (this.f5313g != null) {
            str = m2026c().toString();
        }
        return "ConnectionSpec(cipherSuites=" + obj + ", tlsVersions=" + str + ", supportsTlsExtensions=" + this.f5311e + ")";
    }
}
