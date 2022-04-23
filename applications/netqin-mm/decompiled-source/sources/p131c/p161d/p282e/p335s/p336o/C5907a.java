package p131c.p161d.p282e.p335s.p336o;

import com.google.firebase.installations.local.PersistedInstallation;
import p131c.p161d.p282e.p335s.p336o.AbstractC5911c;
/* renamed from: c.d.e.s.o.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/o/a.class */
public final class C5907a extends AbstractC5911c {

    /* renamed from: a */
    public final String f19228a;

    /* renamed from: b */
    public final PersistedInstallation.RegistrationStatus f19229b;

    /* renamed from: c */
    public final String f19230c;

    /* renamed from: d */
    public final String f19231d;

    /* renamed from: e */
    public final long f19232e;

    /* renamed from: f */
    public final long f19233f;

    /* renamed from: g */
    public final String f19234g;

    /* renamed from: c.d.e.s.o.a$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/s/o/a$b.class */
    public static final class C5909b extends AbstractC5911c.AbstractC5912a {

        /* renamed from: a */
        public String f19235a;

        /* renamed from: b */
        public PersistedInstallation.RegistrationStatus f19236b;

        /* renamed from: c */
        public String f19237c;

        /* renamed from: d */
        public String f19238d;

        /* renamed from: e */
        public Long f19239e;

        /* renamed from: f */
        public Long f19240f;

        /* renamed from: g */
        public String f19241g;

        public C5909b() {
        }

        public C5909b(AbstractC5911c cVar) {
            this.f19235a = cVar.mo22745c();
            this.f19236b = cVar.mo22742f();
            this.f19237c = cVar.mo22751a();
            this.f19238d = cVar.mo22743e();
            this.f19239e = Long.valueOf(cVar.mo22747b());
            this.f19240f = Long.valueOf(cVar.mo22741g());
            this.f19241g = cVar.mo22744d();
        }

        @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c.AbstractC5912a
        /* renamed from: a */
        public AbstractC5911c.AbstractC5912a mo22730a(long j) {
            this.f19239e = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c.AbstractC5912a
        /* renamed from: a */
        public AbstractC5911c.AbstractC5912a mo22729a(PersistedInstallation.RegistrationStatus registrationStatus) {
            if (registrationStatus != null) {
                this.f19236b = registrationStatus;
                return this;
            }
            throw new NullPointerException("Null registrationStatus");
        }

        @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c.AbstractC5912a
        /* renamed from: a */
        public AbstractC5911c.AbstractC5912a mo22728a(String str) {
            this.f19237c = str;
            return this;
        }

        @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c.AbstractC5912a
        /* renamed from: a */
        public AbstractC5911c mo22731a() {
            String str = "";
            if (this.f19236b == null) {
                str = " registrationStatus";
            }
            String str2 = str;
            if (this.f19239e == null) {
                str2 = str + " expiresInSecs";
            }
            String str3 = str2;
            if (this.f19240f == null) {
                str3 = str2 + " tokenCreationEpochInSecs";
            }
            if (str3.isEmpty()) {
                return new C5907a(this.f19235a, this.f19236b, this.f19237c, this.f19238d, this.f19239e.longValue(), this.f19240f.longValue(), this.f19241g);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c.AbstractC5912a
        /* renamed from: b */
        public AbstractC5911c.AbstractC5912a mo22727b(long j) {
            this.f19240f = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c.AbstractC5912a
        /* renamed from: b */
        public AbstractC5911c.AbstractC5912a mo22726b(String str) {
            this.f19235a = str;
            return this;
        }

        @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c.AbstractC5912a
        /* renamed from: c */
        public AbstractC5911c.AbstractC5912a mo22725c(String str) {
            this.f19241g = str;
            return this;
        }

        @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c.AbstractC5912a
        /* renamed from: d */
        public AbstractC5911c.AbstractC5912a mo22724d(String str) {
            this.f19238d = str;
            return this;
        }
    }

    public C5907a(String str, PersistedInstallation.RegistrationStatus registrationStatus, String str2, String str3, long j, long j2, String str4) {
        this.f19228a = str;
        this.f19229b = registrationStatus;
        this.f19230c = str2;
        this.f19231d = str3;
        this.f19232e = j;
        this.f19233f = j2;
        this.f19234g = str4;
    }

    @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c
    /* renamed from: a */
    public String mo22751a() {
        return this.f19230c;
    }

    @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c
    /* renamed from: b */
    public long mo22747b() {
        return this.f19232e;
    }

    @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c
    /* renamed from: c */
    public String mo22745c() {
        return this.f19228a;
    }

    @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c
    /* renamed from: d */
    public String mo22744d() {
        return this.f19234g;
    }

    @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c
    /* renamed from: e */
    public String mo22743e() {
        return this.f19231d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
        if ((r0 = r5.f19231d) != null) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
        if (r5.f19232e != r0.mo22747b()) goto L_0x00b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        if (r5.f19233f != r0.mo22741g()) goto L_0x00b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009b, code lost:
        if ((r0 = r5.f19234g) != null) goto L_0x00a8;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r6
            boolean r0 = r0 instanceof p131c.p161d.p282e.p335s.p336o.AbstractC5911c
            if (r0 == 0) goto L_0x00ba
            r0 = r6
            c.d.e.s.o.c r0 = (p131c.p161d.p282e.p335s.p336o.AbstractC5911c) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.f19228a
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0028
            r0 = r6
            java.lang.String r0 = r0.mo22745c()
            if (r0 != 0) goto L_0x00b6
            goto L_0x0033
        L_0x0028:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo22745c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x0033:
            r0 = r5
            com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus r0 = r0.f19229b
            r1 = r6
            com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus r1 = r1.mo22742f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
            r0 = r5
            java.lang.String r0 = r0.f19230c
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0054
            r0 = r6
            java.lang.String r0 = r0.mo22751a()
            if (r0 != 0) goto L_0x00b6
            goto L_0x005f
        L_0x0054:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo22751a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x005f:
            r0 = r5
            java.lang.String r0 = r0.f19231d
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0072
            r0 = r6
            java.lang.String r0 = r0.mo22743e()
            if (r0 != 0) goto L_0x00b6
            goto L_0x007d
        L_0x0072:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo22743e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x007d:
            r0 = r5
            long r0 = r0.f19232e
            r1 = r6
            long r1 = r1.mo22747b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b6
            r0 = r5
            long r0 = r0.f19233f
            r1 = r6
            long r1 = r1.mo22741g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b6
            r0 = r5
            java.lang.String r0 = r0.f19234g
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x00a8
            r0 = r6
            java.lang.String r0 = r0.mo22744d()
            if (r0 != 0) goto L_0x00b6
            goto L_0x00b8
        L_0x00a8:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo22744d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
            goto L_0x00b8
        L_0x00b6:
            r0 = 0
            r7 = r0
        L_0x00b8:
            r0 = r7
            return r0
        L_0x00ba:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p335s.p336o.C5907a.equals(java.lang.Object):boolean");
    }

    @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c
    /* renamed from: f */
    public PersistedInstallation.RegistrationStatus mo22742f() {
        return this.f19229b;
    }

    @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c
    /* renamed from: g */
    public long mo22741g() {
        return this.f19233f;
    }

    public int hashCode() {
        String str = this.f19228a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f19229b.hashCode();
        String str2 = this.f19230c;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f19231d;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        long j = this.f19232e;
        int i2 = (int) (j ^ (j >>> 32));
        long j2 = this.f19233f;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        String str4 = this.f19234g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i;
    }

    @Override // p131c.p161d.p282e.p335s.p336o.AbstractC5911c
    /* renamed from: m */
    public AbstractC5911c.AbstractC5912a mo22735m() {
        return new C5909b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f19228a + ", registrationStatus=" + this.f19229b + ", authToken=" + this.f19230c + ", refreshToken=" + this.f19231d + ", expiresInSecs=" + this.f19232e + ", tokenCreationEpochInSecs=" + this.f19233f + ", fisError=" + this.f19234g + "}";
    }
}
