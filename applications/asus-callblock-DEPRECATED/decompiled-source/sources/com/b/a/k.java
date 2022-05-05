package com.b.a;

import com.b.a.a.h;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/b/a/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final k f3326a;

    /* renamed from: b  reason: collision with root package name */
    public static final k f3327b;
    public static final k c;
    public final boolean d;
    final String[] e;
    final String[] f;
    final boolean g;

    /* loaded from: classes-dex2jar.jar:com/b/a/k$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f3328a;

        /* renamed from: b  reason: collision with root package name */
        String[] f3329b;
        String[] c;
        boolean d;

        public a(k kVar) {
            this.f3328a = kVar.d;
            this.f3329b = kVar.e;
            this.c = kVar.f;
            this.d = kVar.g;
        }

        a(boolean z) {
            this.f3328a = z;
        }

        public final a a() {
            if (!this.f3328a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.d = true;
            return this;
        }

        public final a a(z... zVarArr) {
            if (!this.f3328a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[zVarArr.length];
            for (int i = 0; i < zVarArr.length; i++) {
                strArr[i] = zVarArr[i].e;
            }
            this.c = strArr;
            return this;
        }

        public final a a(String... strArr) {
            if (!this.f3328a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr == null) {
                this.f3329b = null;
            } else {
                this.f3329b = (String[]) strArr.clone();
            }
            return this;
        }

        public final a b(String... strArr) {
            if (!this.f3328a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr == null) {
                this.c = null;
            } else {
                this.c = (String[]) strArr.clone();
            }
            return this;
        }

        public final k b() {
            return new k(this, (byte) 0);
        }
    }

    static {
        a aVar = new a(true);
        h hVar = h.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256;
        h hVar2 = h.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256;
        h hVar3 = h.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256;
        h hVar4 = h.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA;
        h hVar5 = h.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA;
        h hVar6 = h.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA;
        h hVar7 = h.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA;
        h hVar8 = h.TLS_DHE_RSA_WITH_AES_128_CBC_SHA;
        h hVar9 = h.TLS_DHE_DSS_WITH_AES_128_CBC_SHA;
        h hVar10 = h.TLS_DHE_RSA_WITH_AES_256_CBC_SHA;
        h hVar11 = h.TLS_RSA_WITH_AES_128_GCM_SHA256;
        h hVar12 = h.TLS_RSA_WITH_AES_128_CBC_SHA;
        h hVar13 = h.TLS_RSA_WITH_AES_256_CBC_SHA;
        h hVar14 = h.TLS_RSA_WITH_3DES_EDE_CBC_SHA;
        if (!aVar.f3328a) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        String[] strArr = new String[14];
        for (int i = 0; i < 14; i++) {
            strArr[i] = new h[]{hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9, hVar10, hVar11, hVar12, hVar13, hVar14}[i].aS;
        }
        aVar.f3329b = strArr;
        f3326a = aVar.a(z.TLS_1_2, z.TLS_1_1, z.TLS_1_0).a().b();
        f3327b = new a(f3326a).a(z.TLS_1_0).a().b();
        c = new a(false).b();
    }

    private k(a aVar) {
        this.d = aVar.f3328a;
        this.e = aVar.f3329b;
        this.f = aVar.c;
        this.g = aVar.d;
    }

    /* synthetic */ k(a aVar, byte b2) {
        this(aVar);
    }

    private List<z> a() {
        z[] zVarArr = new z[this.f.length];
        for (int i = 0; i < this.f.length; i++) {
            zVarArr[i] = z.a(this.f[i]);
        }
        return h.a(zVarArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        if (r3.g == r0.g) goto L_0x005d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.b.a.k
            if (r0 != 0) goto L_0x000d
            r0 = r5
            r6 = r0
        L_0x000b:
            r0 = r6
            return r0
        L_0x000d:
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L_0x0017
            r0 = 1
            r6 = r0
            goto L_0x000b
        L_0x0017:
            r0 = r4
            com.b.a.k r0 = (com.b.a.k) r0
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.d
            r1 = r4
            boolean r1 = r1.d
            if (r0 != r1) goto L_0x000b
            r0 = r3
            boolean r0 = r0.d
            if (r0 == 0) goto L_0x005d
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String[] r0 = r0.e
            r1 = r4
            java.lang.String[] r1 = r1.e
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x000b
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String[] r0 = r0.f
            r1 = r4
            java.lang.String[] r1 = r1.f
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x000b
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.g
            r1 = r4
            boolean r1 = r1.g
            if (r0 != r1) goto L_0x000b
        L_0x005d:
            r0 = 1
            r6 = r0
            goto L_0x000b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.k.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i = 17;
        if (this.d) {
            int hashCode = Arrays.hashCode(this.e);
            i = (this.g ? 0 : 1) + ((((hashCode + 527) * 31) + Arrays.hashCode(this.f)) * 31);
        }
        return i;
    }

    public final String toString() {
        String str;
        List a2;
        if (this.d) {
            if (this.e == null) {
                a2 = null;
            } else {
                h[] hVarArr = new h[this.e.length];
                for (int i = 0; i < this.e.length; i++) {
                    hVarArr[i] = h.a(this.e[i]);
                }
                a2 = h.a(hVarArr);
            }
            str = "ConnectionSpec(cipherSuites=" + (a2 == null ? "[use default]" : a2.toString()) + ", tlsVersions=" + a() + ", supportsTlsExtensions=" + this.g + ")";
        } else {
            str = "ConnectionSpec()";
        }
        return str;
    }
}
