package okhttp3;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.k */
/* loaded from: classes-dex2jar.jar:okhttp3/k.class */
public final class C5524k {

    /* renamed from: d */
    final boolean f23084d;

    /* renamed from: e */
    final boolean f23085e;
    @Nullable

    /* renamed from: f */
    final String[] f23086f;
    @Nullable

    /* renamed from: g */
    final String[] f23087g;

    /* renamed from: h */
    private static final C5421h[] f23083h = {C5421h.f22613aX, C5421h.f22644bb, C5421h.f22614aY, C5421h.f22645bc, C5421h.f22651bi, C5421h.f22650bh, C5421h.f22598aI, C5421h.f22599aJ, C5421h.f22622ag, C5421h.f22623ah, C5421h.f22567E, C5421h.f22571I, C5421h.f22659i};

    /* renamed from: a */
    public static final C5524k f23080a = new C5525a(true).m338a(f23083h).m339a(EnumC5409af.TLS_1_3, EnumC5409af.TLS_1_2, EnumC5409af.TLS_1_1, EnumC5409af.TLS_1_0).m341a(true).m342a();

    /* renamed from: b */
    public static final C5524k f23081b = new C5525a(f23080a).m339a(EnumC5409af.TLS_1_0).m341a(true).m342a();

    /* renamed from: c */
    public static final C5524k f23082c = new C5525a(false).m342a();

    /* renamed from: okhttp3.k$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/k$a.class */
    public static final class C5525a {

        /* renamed from: a */
        boolean f23088a;
        @Nullable

        /* renamed from: b */
        String[] f23089b;
        @Nullable

        /* renamed from: c */
        String[] f23090c;

        /* renamed from: d */
        boolean f23091d;

        public C5525a(C5524k c5524k) {
            this.f23088a = c5524k.f23084d;
            this.f23089b = c5524k.f23086f;
            this.f23090c = c5524k.f23087g;
            this.f23091d = c5524k.f23085e;
        }

        C5525a(boolean z) {
            this.f23088a = z;
        }

        /* renamed from: a */
        public C5525a m341a(boolean z) {
            if (!this.f23088a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f23091d = z;
            return this;
        }

        /* renamed from: a */
        public C5525a m340a(String... strArr) {
            if (!this.f23088a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f23089b = (String[]) strArr.clone();
            return this;
        }

        /* renamed from: a */
        public C5525a m339a(EnumC5409af... enumC5409afArr) {
            if (!this.f23088a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[enumC5409afArr.length];
            for (int i = 0; i < enumC5409afArr.length; i++) {
                strArr[i] = enumC5409afArr[i].f22528f;
            }
            return m337b(strArr);
        }

        /* renamed from: a */
        public C5525a m338a(C5421h... c5421hArr) {
            if (!this.f23088a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[c5421hArr.length];
            for (int i = 0; i < c5421hArr.length; i++) {
                strArr[i] = c5421hArr[i].f22677bj;
            }
            return m340a(strArr);
        }

        /* renamed from: a */
        public C5524k m342a() {
            return new C5524k(this);
        }

        /* renamed from: b */
        public C5525a m337b(String... strArr) {
            if (!this.f23088a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f23090c = (String[]) strArr.clone();
            return this;
        }
    }

    C5524k(C5525a c5525a) {
        this.f23084d = c5525a.f23088a;
        this.f23086f = c5525a.f23089b;
        this.f23087g = c5525a.f23090c;
        this.f23085e = c5525a.f23091d;
    }

    /* renamed from: b */
    private C5524k m345b(SSLSocket sSLSocket, boolean z) {
        String[] m659a = this.f23086f != null ? C5449c.m659a(C5421h.f22589a, sSLSocket.getEnabledCipherSuites(), this.f23086f) : sSLSocket.getEnabledCipherSuites();
        String[] m659a2 = this.f23087g != null ? C5449c.m659a(C5449c.f22763h, sSLSocket.getEnabledProtocols(), this.f23087g) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int m660a = C5449c.m660a(C5421h.f22589a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        String[] strArr = m659a;
        if (z) {
            strArr = m659a;
            if (m660a != -1) {
                strArr = C5449c.m654a(m659a, supportedCipherSuites[m660a]);
            }
        }
        return new C5525a(this).m340a(strArr).m337b(m659a2).m342a();
    }

    /* renamed from: a */
    public void m347a(SSLSocket sSLSocket, boolean z) {
        C5524k m345b = m345b(sSLSocket, z);
        if (m345b.f23087g != null) {
            sSLSocket.setEnabledProtocols(m345b.f23087g);
        }
        if (m345b.f23086f != null) {
            sSLSocket.setEnabledCipherSuites(m345b.f23086f);
        }
    }

    /* renamed from: a */
    public boolean m349a() {
        return this.f23084d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
        if (okhttp3.internal.C5449c.m650b(okhttp3.internal.C5449c.f22763h, r4.f23087g, r5.getEnabledProtocols()) != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
        if (okhttp3.internal.C5449c.m650b(okhttp3.C5421h.f22589a, r4.f23086f, r5.getEnabledCipherSuites()) != false) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m348a(javax.net.ssl.SSLSocket r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r4
            boolean r0 = r0.f23084d
            if (r0 != 0) goto Ld
            r0 = r6
            r7 = r0
        Lb:
            r0 = r7
            return r0
        Ld:
            r0 = r4
            java.lang.String[] r0 = r0.f23087g
            if (r0 == 0) goto L27
            r0 = r6
            r7 = r0
            java.util.Comparator<java.lang.String> r0 = okhttp3.internal.C5449c.f22763h
            r1 = r4
            java.lang.String[] r1 = r1.f23087g
            r2 = r5
            java.lang.String[] r2 = r2.getEnabledProtocols()
            boolean r0 = okhttp3.internal.C5449c.m650b(r0, r1, r2)
            if (r0 == 0) goto Lb
        L27:
            r0 = r4
            java.lang.String[] r0 = r0.f23086f
            if (r0 == 0) goto L41
            r0 = r6
            r7 = r0
            java.util.Comparator<java.lang.String> r0 = okhttp3.C5421h.f22589a
            r1 = r4
            java.lang.String[] r1 = r1.f23086f
            r2 = r5
            java.lang.String[] r2 = r2.getEnabledCipherSuites()
            boolean r0 = okhttp3.internal.C5449c.m650b(r0, r1, r2)
            if (r0 == 0) goto Lb
        L41:
            r0 = 1
            r7 = r0
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.C5524k.m348a(javax.net.ssl.SSLSocket):boolean");
    }

    @Nullable
    /* renamed from: b */
    public List<C5421h> m346b() {
        return this.f23086f != null ? C5421h.m744a(this.f23086f) : null;
    }

    @Nullable
    /* renamed from: c */
    public List<EnumC5409af> m344c() {
        return this.f23087g != null ? EnumC5409af.m772a(this.f23087g) : null;
    }

    /* renamed from: d */
    public boolean m343d() {
        return this.f23085e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        if (r3.f23085e == r0.f23085e) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@javax.annotation.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            boolean r0 = r0 instanceof okhttp3.C5524k
            if (r0 != 0) goto Ld
            r0 = r5
            r6 = r0
        Lb:
            r0 = r6
            return r0
        Ld:
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L17
            r0 = 1
            r6 = r0
            goto Lb
        L17:
            r0 = r4
            okhttp3.k r0 = (okhttp3.C5524k) r0
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.f23084d
            r1 = r4
            boolean r1 = r1.f23084d
            if (r0 != r1) goto Lb
            r0 = r3
            boolean r0 = r0.f23084d
            if (r0 == 0) goto L5d
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String[] r0 = r0.f23086f
            r1 = r4
            java.lang.String[] r1 = r1.f23086f
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto Lb
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String[] r0 = r0.f23087g
            r1 = r4
            java.lang.String[] r1 = r1.f23087g
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto Lb
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.f23085e
            r1 = r4
            boolean r1 = r1.f23085e
            if (r0 != r1) goto Lb
        L5d:
            r0 = 1
            r6 = r0
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.C5524k.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 17;
        if (this.f23084d) {
            i = (this.f23085e ? 0 : 1) + ((((Arrays.hashCode(this.f23086f) + 527) * 31) + Arrays.hashCode(this.f23087g)) * 31);
        }
        return i;
    }

    public String toString() {
        String str;
        if (!this.f23084d) {
            str = "ConnectionSpec()";
        } else {
            str = "ConnectionSpec(cipherSuites=" + (this.f23086f != null ? m346b().toString() : "[all enabled]") + ", tlsVersions=" + (this.f23087g != null ? m344c().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f23085e + ")";
        }
        return str;
    }
}
