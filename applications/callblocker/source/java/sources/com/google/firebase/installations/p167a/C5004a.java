package com.google.firebase.installations.p167a;

import com.google.firebase.installations.p167a.AbstractC5010d;
import com.google.firebase.installations.p167a.C5008c;
/* renamed from: com.google.firebase.installations.a.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a/a.class */
final class C5004a extends AbstractC5010d {

    /* renamed from: b */
    private final String f21210b;

    /* renamed from: c */
    private final C5008c.EnumC5009a f21211c;

    /* renamed from: d */
    private final String f21212d;

    /* renamed from: e */
    private final String f21213e;

    /* renamed from: f */
    private final long f21214f;

    /* renamed from: g */
    private final long f21215g;

    /* renamed from: h */
    private final String f21216h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a/a$a.class */
    public static final class C5006a extends AbstractC5010d.AbstractC5011a {

        /* renamed from: a */
        private String f21217a;

        /* renamed from: b */
        private C5008c.EnumC5009a f21218b;

        /* renamed from: c */
        private String f21219c;

        /* renamed from: d */
        private String f21220d;

        /* renamed from: e */
        private Long f21221e;

        /* renamed from: f */
        private Long f21222f;

        /* renamed from: g */
        private String f21223g;

        public C5006a() {
        }

        private C5006a(AbstractC5010d abstractC5010d) {
            this.f21217a = abstractC5010d.mo1868a();
            this.f21218b = abstractC5010d.mo1864b();
            this.f21219c = abstractC5010d.mo1862c();
            this.f21220d = abstractC5010d.mo1861d();
            this.f21221e = Long.valueOf(abstractC5010d.mo1860e());
            this.f21222f = Long.valueOf(abstractC5010d.mo1859f());
            this.f21223g = abstractC5010d.mo1858g();
        }

        @Override // com.google.firebase.installations.p167a.AbstractC5010d.AbstractC5011a
        /* renamed from: a */
        public AbstractC5010d.AbstractC5011a mo1847a(long j) {
            this.f21221e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.p167a.AbstractC5010d.AbstractC5011a
        /* renamed from: a */
        public AbstractC5010d.AbstractC5011a mo1846a(C5008c.EnumC5009a enumC5009a) {
            if (enumC5009a == null) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.f21218b = enumC5009a;
            return this;
        }

        @Override // com.google.firebase.installations.p167a.AbstractC5010d.AbstractC5011a
        /* renamed from: a */
        public AbstractC5010d.AbstractC5011a mo1845a(String str) {
            this.f21217a = str;
            return this;
        }

        @Override // com.google.firebase.installations.p167a.AbstractC5010d.AbstractC5011a
        /* renamed from: a */
        public AbstractC5010d mo1848a() {
            String str = "";
            if (this.f21218b == null) {
                str = " registrationStatus";
            }
            String str2 = str;
            if (this.f21221e == null) {
                str2 = str + " expiresInSecs";
            }
            String str3 = str2;
            if (this.f21222f == null) {
                str3 = str2 + " tokenCreationEpochInSecs";
            }
            if (!str3.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str3);
            }
            return new C5004a(this.f21217a, this.f21218b, this.f21219c, this.f21220d, this.f21221e.longValue(), this.f21222f.longValue(), this.f21223g);
        }

        @Override // com.google.firebase.installations.p167a.AbstractC5010d.AbstractC5011a
        /* renamed from: b */
        public AbstractC5010d.AbstractC5011a mo1844b(long j) {
            this.f21222f = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.p167a.AbstractC5010d.AbstractC5011a
        /* renamed from: b */
        public AbstractC5010d.AbstractC5011a mo1843b(String str) {
            this.f21219c = str;
            return this;
        }

        @Override // com.google.firebase.installations.p167a.AbstractC5010d.AbstractC5011a
        /* renamed from: c */
        public AbstractC5010d.AbstractC5011a mo1842c(String str) {
            this.f21220d = str;
            return this;
        }

        @Override // com.google.firebase.installations.p167a.AbstractC5010d.AbstractC5011a
        /* renamed from: d */
        public AbstractC5010d.AbstractC5011a mo1841d(String str) {
            this.f21223g = str;
            return this;
        }
    }

    private C5004a(String str, C5008c.EnumC5009a enumC5009a, String str2, String str3, long j, long j2, String str4) {
        this.f21210b = str;
        this.f21211c = enumC5009a;
        this.f21212d = str2;
        this.f21213e = str3;
        this.f21214f = j;
        this.f21215g = j2;
        this.f21216h = str4;
    }

    @Override // com.google.firebase.installations.p167a.AbstractC5010d
    /* renamed from: a */
    public String mo1868a() {
        return this.f21210b;
    }

    @Override // com.google.firebase.installations.p167a.AbstractC5010d
    /* renamed from: b */
    public C5008c.EnumC5009a mo1864b() {
        return this.f21211c;
    }

    @Override // com.google.firebase.installations.p167a.AbstractC5010d
    /* renamed from: c */
    public String mo1862c() {
        return this.f21212d;
    }

    @Override // com.google.firebase.installations.p167a.AbstractC5010d
    /* renamed from: d */
    public String mo1861d() {
        return this.f21213e;
    }

    @Override // com.google.firebase.installations.p167a.AbstractC5010d
    /* renamed from: e */
    public long mo1860e() {
        return this.f21214f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
        if (r5.f21213e != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
        if (r5.f21214f != r0.mo1860e()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0062, code lost:
        if (r5.f21215g != r0.mo1859f()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0069, code lost:
        if (r5.f21216h != null) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L9
        L7:
            r0 = r7
            return r0
        L9:
            r0 = r6
            boolean r0 = r0 instanceof com.google.firebase.installations.p167a.AbstractC5010d
            if (r0 == 0) goto Lbc
            r0 = r6
            com.google.firebase.installations.a.d r0 = (com.google.firebase.installations.p167a.AbstractC5010d) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.f21210b
            if (r0 != 0) goto L78
            r0 = r6
            java.lang.String r0 = r0.mo1868a()
            if (r0 != 0) goto L73
        L23:
            r0 = r5
            com.google.firebase.installations.a.c$a r0 = r0.f21211c
            r1 = r6
            com.google.firebase.installations.a.c$a r1 = r1.mo1864b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L73
            r0 = r5
            java.lang.String r0 = r0.f21212d
            if (r0 != 0) goto L89
            r0 = r6
            java.lang.String r0 = r0.mo1862c()
            if (r0 != 0) goto L73
        L3f:
            r0 = r5
            java.lang.String r0 = r0.f21213e
            if (r0 != 0) goto L9a
            r0 = r6
            java.lang.String r0 = r0.mo1861d()
            if (r0 != 0) goto L73
        L4d:
            r0 = r5
            long r0 = r0.f21214f
            r1 = r6
            long r1 = r1.mo1860e()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L73
            r0 = r5
            long r0 = r0.f21215g
            r1 = r6
            long r1 = r1.mo1859f()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L73
            r0 = r5
            java.lang.String r0 = r0.f21216h
            if (r0 != 0) goto Lab
            r0 = r6
            java.lang.String r0 = r0.mo1858g()
            if (r0 == 0) goto L7
        L73:
            r0 = 0
            r7 = r0
            goto L7
        L78:
            r0 = r5
            java.lang.String r0 = r0.f21210b
            r1 = r6
            java.lang.String r1 = r1.mo1868a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L73
            goto L23
        L89:
            r0 = r5
            java.lang.String r0 = r0.f21212d
            r1 = r6
            java.lang.String r1 = r1.mo1862c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L73
            goto L3f
        L9a:
            r0 = r5
            java.lang.String r0 = r0.f21213e
            r1 = r6
            java.lang.String r1 = r1.mo1861d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L73
            goto L4d
        Lab:
            r0 = r5
            java.lang.String r0 = r0.f21216h
            r1 = r6
            java.lang.String r1 = r1.mo1858g()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L73
            goto L7
        Lbc:
            r0 = 0
            r7 = r0
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.p167a.C5004a.equals(java.lang.Object):boolean");
    }

    @Override // com.google.firebase.installations.p167a.AbstractC5010d
    /* renamed from: f */
    public long mo1859f() {
        return this.f21215g;
    }

    @Override // com.google.firebase.installations.p167a.AbstractC5010d
    /* renamed from: g */
    public String mo1858g() {
        return this.f21216h;
    }

    @Override // com.google.firebase.installations.p167a.AbstractC5010d
    /* renamed from: h */
    public AbstractC5010d.AbstractC5011a mo1857h() {
        return new C5006a(this);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f21210b == null ? 0 : this.f21210b.hashCode();
        int hashCode2 = this.f21211c.hashCode();
        int hashCode3 = this.f21212d == null ? 0 : this.f21212d.hashCode();
        int hashCode4 = this.f21213e == null ? 0 : this.f21213e.hashCode();
        int i2 = (int) ((this.f21214f >>> 32) ^ this.f21214f);
        int i3 = (int) ((this.f21215g >>> 32) ^ this.f21215g);
        if (this.f21216h != null) {
            i = this.f21216h.hashCode();
        }
        return ((((((hashCode4 ^ ((hashCode3 ^ ((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003)) * 1000003)) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i;
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f21210b + ", registrationStatus=" + this.f21211c + ", authToken=" + this.f21212d + ", refreshToken=" + this.f21213e + ", expiresInSecs=" + this.f21214f + ", tokenCreationEpochInSecs=" + this.f21215g + ", fisError=" + this.f21216h + "}";
    }
}
