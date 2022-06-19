package kotlin.p084f;

import kotlin.p081e.p083b.C1691e;
/* renamed from: kotlin.f.c */
/* loaded from: classes-dex2jar.jar:kotlin/f/c.class */
public final class C1711c extends C1708a {

    /* renamed from: b */
    public static final C1712a f4403b = new C1712a(null);

    /* renamed from: c */
    private static final C1711c f4404c = new C1711c(1, 0);

    /* renamed from: kotlin.f.c$a */
    /* loaded from: classes-dex2jar.jar:kotlin/f/c$a.class */
    public static final class C1712a {
        private C1712a() {
        }

        public /* synthetic */ C1712a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final C1711c m3082a() {
            return C1711c.f4404c;
        }
    }

    public C1711c(int i, int i2) {
        super(i, i2, 1);
    }

    @Override // kotlin.p084f.C1708a
    /* renamed from: e */
    public boolean mo3086e() {
        return m3092a() > m3091b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (m3091b() == r0.m3091b()) goto L12;
     */
    @Override // kotlin.p084f.C1708a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.p084f.C1711c
            if (r0 == 0) goto L3a
            r0 = r3
            boolean r0 = r0.mo3086e()
            if (r0 == 0) goto L18
            r0 = r4
            kotlin.f.c r0 = (kotlin.p084f.C1711c) r0
            boolean r0 = r0.mo3086e()
            if (r0 != 0) goto L35
        L18:
            r0 = r3
            int r0 = r0.m3092a()
            r5 = r0
            r0 = r4
            kotlin.f.c r0 = (kotlin.p084f.C1711c) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.m3092a()
            if (r0 != r1) goto L3a
            r0 = r3
            int r0 = r0.m3091b()
            r1 = r4
            int r1 = r1.m3091b()
            if (r0 != r1) goto L3a
        L35:
            r0 = 1
            r6 = r0
            goto L3c
        L3a:
            r0 = 0
            r6 = r0
        L3c:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p084f.C1711c.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public Integer m3085f() {
        return Integer.valueOf(m3092a());
    }

    /* renamed from: g */
    public Integer m3084g() {
        return Integer.valueOf(m3091b());
    }

    @Override // kotlin.p084f.C1708a
    public int hashCode() {
        return mo3086e() ? -1 : (m3092a() * 31) + m3091b();
    }

    @Override // kotlin.p084f.C1708a
    public String toString() {
        return m3092a() + ".." + m3091b();
    }
}
