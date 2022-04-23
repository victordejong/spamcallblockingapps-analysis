package p081h.p203i.p325c.p367v.p368q;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p367v.p368q.AbstractC9958d;
import p081h.p203i.p325c.p367v.p368q.C9956c;
/* renamed from: h.i.c.v.q.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/q/a.class */
public final class C9952a extends AbstractC9958d {

    /* renamed from: a */
    public final String f22512a;

    /* renamed from: b */
    public final C9956c.EnumC9957a f22513b;

    /* renamed from: c */
    public final String f22514c;

    /* renamed from: d */
    public final String f22515d;

    /* renamed from: e */
    public final long f22516e;

    /* renamed from: f */
    public final long f22517f;

    /* renamed from: g */
    public final String f22518g;

    /* renamed from: h.i.c.v.q.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/q/a$b.class */
    public static final class C9954b extends AbstractC9958d.AbstractC9959a {

        /* renamed from: a */
        public String f22519a;

        /* renamed from: b */
        public C9956c.EnumC9957a f22520b;

        /* renamed from: c */
        public String f22521c;

        /* renamed from: d */
        public String f22522d;

        /* renamed from: e */
        public Long f22523e;

        /* renamed from: f */
        public Long f22524f;

        /* renamed from: g */
        public String f22525g;

        public C9954b() {
        }

        public C9954b(AbstractC9958d dVar) {
            this.f22519a = dVar.mo13857c();
            this.f22520b = dVar.mo13854f();
            this.f22521c = dVar.mo13863a();
            this.f22522d = dVar.mo13855e();
            this.f22523e = Long.valueOf(dVar.mo13859b());
            this.f22524f = Long.valueOf(dVar.mo13853g());
            this.f22525g = dVar.mo13856d();
        }

        @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d.AbstractC9959a
        /* renamed from: a */
        public AbstractC9958d.AbstractC9959a mo13842a(long j) {
            this.f22523e = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d.AbstractC9959a
        /* renamed from: a */
        public AbstractC9958d.AbstractC9959a mo13841a(C9956c.EnumC9957a aVar) {
            if (aVar != null) {
                this.f22520b = aVar;
                return this;
            }
            throw new NullPointerException("Null registrationStatus");
        }

        @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d.AbstractC9959a
        /* renamed from: a */
        public AbstractC9958d.AbstractC9959a mo13840a(@Nullable String str) {
            this.f22521c = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d.AbstractC9959a
        /* renamed from: a */
        public AbstractC9958d mo13843a() {
            String str = "";
            if (this.f22520b == null) {
                str = " registrationStatus";
            }
            String str2 = str;
            if (this.f22523e == null) {
                str2 = str + " expiresInSecs";
            }
            String str3 = str2;
            if (this.f22524f == null) {
                str3 = str2 + " tokenCreationEpochInSecs";
            }
            if (str3.isEmpty()) {
                return new C9952a(this.f22519a, this.f22520b, this.f22521c, this.f22522d, this.f22523e.longValue(), this.f22524f.longValue(), this.f22525g);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d.AbstractC9959a
        /* renamed from: b */
        public AbstractC9958d.AbstractC9959a mo13839b(long j) {
            this.f22524f = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d.AbstractC9959a
        /* renamed from: b */
        public AbstractC9958d.AbstractC9959a mo13838b(String str) {
            this.f22519a = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d.AbstractC9959a
        /* renamed from: c */
        public AbstractC9958d.AbstractC9959a mo13837c(@Nullable String str) {
            this.f22525g = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d.AbstractC9959a
        /* renamed from: d */
        public AbstractC9958d.AbstractC9959a mo13836d(@Nullable String str) {
            this.f22522d = str;
            return this;
        }
    }

    public C9952a(@Nullable String str, C9956c.EnumC9957a aVar, @Nullable String str2, @Nullable String str3, long j, long j2, @Nullable String str4) {
        this.f22512a = str;
        this.f22513b = aVar;
        this.f22514c = str2;
        this.f22515d = str3;
        this.f22516e = j;
        this.f22517f = j2;
        this.f22518g = str4;
    }

    @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d
    @Nullable
    /* renamed from: a */
    public String mo13863a() {
        return this.f22514c;
    }

    @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d
    /* renamed from: b */
    public long mo13859b() {
        return this.f22516e;
    }

    @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d
    @Nullable
    /* renamed from: c */
    public String mo13857c() {
        return this.f22512a;
    }

    @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d
    @Nullable
    /* renamed from: d */
    public String mo13856d() {
        return this.f22518g;
    }

    @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d
    @Nullable
    /* renamed from: e */
    public String mo13855e() {
        return this.f22515d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
        if ((r0 = r5.f22515d) != null) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
        if (r5.f22516e != r0.mo13859b()) goto L_0x00b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        if (r5.f22517f != r0.mo13853g()) goto L_0x00b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009b, code lost:
        if ((r0 = r5.f22518g) != null) goto L_0x00a8;
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
            boolean r0 = r0 instanceof p081h.p203i.p325c.p367v.p368q.AbstractC9958d
            if (r0 == 0) goto L_0x00ba
            r0 = r6
            h.i.c.v.q.d r0 = (p081h.p203i.p325c.p367v.p368q.AbstractC9958d) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.f22512a
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0028
            r0 = r6
            java.lang.String r0 = r0.mo13857c()
            if (r0 != 0) goto L_0x00b6
            goto L_0x0033
        L_0x0028:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo13857c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x0033:
            r0 = r5
            h.i.c.v.q.c$a r0 = r0.f22513b
            r1 = r6
            h.i.c.v.q.c$a r1 = r1.mo13854f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
            r0 = r5
            java.lang.String r0 = r0.f22514c
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0054
            r0 = r6
            java.lang.String r0 = r0.mo13863a()
            if (r0 != 0) goto L_0x00b6
            goto L_0x005f
        L_0x0054:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo13863a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x005f:
            r0 = r5
            java.lang.String r0 = r0.f22515d
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0072
            r0 = r6
            java.lang.String r0 = r0.mo13855e()
            if (r0 != 0) goto L_0x00b6
            goto L_0x007d
        L_0x0072:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo13855e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b6
        L_0x007d:
            r0 = r5
            long r0 = r0.f22516e
            r1 = r6
            long r1 = r1.mo13859b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b6
            r0 = r5
            long r0 = r0.f22517f
            r1 = r6
            long r1 = r1.mo13853g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b6
            r0 = r5
            java.lang.String r0 = r0.f22518g
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x00a8
            r0 = r6
            java.lang.String r0 = r0.mo13856d()
            if (r0 != 0) goto L_0x00b6
            goto L_0x00b8
        L_0x00a8:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo13856d()
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p367v.p368q.C9952a.equals(java.lang.Object):boolean");
    }

    @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d
    @NonNull
    /* renamed from: f */
    public C9956c.EnumC9957a mo13854f() {
        return this.f22513b;
    }

    @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d
    /* renamed from: g */
    public long mo13853g() {
        return this.f22517f;
    }

    public int hashCode() {
        String str = this.f22512a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f22513b.hashCode();
        String str2 = this.f22514c;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f22515d;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        long j = this.f22516e;
        int i2 = (int) (j ^ (j >>> 32));
        long j2 = this.f22517f;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        String str4 = this.f22518g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i;
    }

    @Override // p081h.p203i.p325c.p367v.p368q.AbstractC9958d
    /* renamed from: m */
    public AbstractC9958d.AbstractC9959a mo13847m() {
        return new C9954b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f22512a + ", registrationStatus=" + this.f22513b + ", authToken=" + this.f22514c + ", refreshToken=" + this.f22515d + ", expiresInSecs=" + this.f22516e + ", tokenCreationEpochInSecs=" + this.f22517f + ", fisError=" + this.f22518g + CssParser.BLOCK_END;
    }
}
