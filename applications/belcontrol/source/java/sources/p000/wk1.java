package p000;
/* renamed from: wk1 */
/* loaded from: classes3-dex2jar.jar:wk1.class */
public final class wk1 extends uk1 {

    /* renamed from: g */
    public static final C1717a f8587g = new C1717a(null);

    /* renamed from: f */
    public static final wk1 f8586f = new wk1(1, 0);

    /* renamed from: wk1$a */
    /* loaded from: classes3-dex2jar.jar:wk1$a.class */
    public static final class C1717a {
        public C1717a() {
        }

        public /* synthetic */ C1717a(ok1 ok1Var) {
            this();
        }

        /* renamed from: a */
        public final wk1 m211a() {
            return wk1.f8586f;
        }
    }

    public wk1(int i, int i2) {
        super(i, i2, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (m391b() == r0.m391b()) goto L12;
     */
    @Override // p000.uk1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof p000.wk1
            if (r0 == 0) goto L3a
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L18
            r0 = r4
            wk1 r0 = (p000.wk1) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L35
        L18:
            r0 = r3
            int r0 = r0.m392a()
            r5 = r0
            r0 = r4
            wk1 r0 = (p000.wk1) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.m392a()
            if (r0 != r1) goto L3a
            r0 = r3
            int r0 = r0.m391b()
            r1 = r4
            int r1 = r1.m391b()
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
        throw new UnsupportedOperationException("Method not decompiled: p000.wk1.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public Integer m213f() {
        return Integer.valueOf(m391b());
    }

    /* renamed from: g */
    public Integer m212g() {
        return Integer.valueOf(m392a());
    }

    @Override // p000.uk1
    public int hashCode() {
        return isEmpty() ? -1 : (m392a() * 31) + m391b();
    }

    @Override // p000.uk1
    public boolean isEmpty() {
        return m392a() > m391b();
    }

    @Override // p000.uk1
    public String toString() {
        return m392a() + ".." + m391b();
    }
}
