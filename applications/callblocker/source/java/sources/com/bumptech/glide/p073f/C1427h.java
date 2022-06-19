package com.bumptech.glide.p073f;
/* renamed from: com.bumptech.glide.f.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/h.class */
public class C1427h implements AbstractC1414b, AbstractC1420c {

    /* renamed from: a */
    private final AbstractC1420c f4712a;

    /* renamed from: b */
    private AbstractC1414b f4713b;

    /* renamed from: c */
    private AbstractC1414b f4714c;

    /* renamed from: d */
    private boolean f4715d;

    C1427h() {
        this(null);
    }

    public C1427h(AbstractC1420c abstractC1420c) {
        this.f4712a = abstractC1420c;
    }

    /* renamed from: j */
    private boolean m17061j() {
        return this.f4712a == null || this.f4712a.mo17073b(this);
    }

    /* renamed from: k */
    private boolean m17060k() {
        return this.f4712a == null || this.f4712a.mo17069d(this);
    }

    /* renamed from: l */
    private boolean m17059l() {
        return this.f4712a == null || this.f4712a.mo17071c(this);
    }

    /* renamed from: m */
    private boolean m17058m() {
        return this.f4712a != null && this.f4712a.mo17062i();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: a */
    public void mo17077a() {
        this.f4715d = true;
        if (!this.f4713b.mo17070d() && !this.f4714c.mo17072c()) {
            this.f4714c.mo17077a();
        }
        if (!this.f4715d || this.f4713b.mo17072c()) {
            return;
        }
        this.f4713b.mo17077a();
    }

    /* renamed from: a */
    public void m17075a(AbstractC1414b abstractC1414b, AbstractC1414b abstractC1414b2) {
        this.f4713b = abstractC1414b;
        this.f4714c = abstractC1414b2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r0.f4714c != null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        if (r3.f4713b.mo17076a(r0.f4713b) != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        if (r3.f4714c.mo17076a(r0.f4714c) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        if (r0.f4713b == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
        if (r3.f4714c != null) goto L17;
     */
    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17076a(com.bumptech.glide.p073f.AbstractC1414b r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.bumptech.glide.p073f.C1427h
            if (r0 == 0) goto L32
            r0 = r4
            com.bumptech.glide.f.h r0 = (com.bumptech.glide.p073f.C1427h) r0
            r4 = r0
            r0 = r3
            com.bumptech.glide.f.b r0 = r0.f4713b
            if (r0 != 0) goto L34
            r0 = r5
            r6 = r0
            r0 = r4
            com.bumptech.glide.f.b r0 = r0.f4713b
            if (r0 != 0) goto L32
        L20:
            r0 = r3
            com.bumptech.glide.f.b r0 = r0.f4714c
            if (r0 != 0) goto L49
            r0 = r5
            r6 = r0
            r0 = r4
            com.bumptech.glide.f.b r0 = r0.f4714c
            if (r0 != 0) goto L32
        L30:
            r0 = 1
            r6 = r0
        L32:
            r0 = r6
            return r0
        L34:
            r0 = r5
            r6 = r0
            r0 = r3
            com.bumptech.glide.f.b r0 = r0.f4713b
            r1 = r4
            com.bumptech.glide.f.b r1 = r1.f4713b
            boolean r0 = r0.mo17076a(r1)
            if (r0 == 0) goto L32
            goto L20
        L49:
            r0 = r5
            r6 = r0
            r0 = r3
            com.bumptech.glide.f.b r0 = r0.f4714c
            r1 = r4
            com.bumptech.glide.f.b r1 = r1.f4714c
            boolean r0 = r0.mo17076a(r1)
            if (r0 == 0) goto L32
            goto L30
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p073f.C1427h.mo17076a(com.bumptech.glide.f.b):boolean");
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: b */
    public void mo17074b() {
        this.f4715d = false;
        this.f4714c.mo17074b();
        this.f4713b.mo17074b();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: b */
    public boolean mo17073b(AbstractC1414b abstractC1414b) {
        return m17061j() && (abstractC1414b.equals(this.f4713b) || !this.f4713b.mo17068e());
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: c */
    public boolean mo17072c() {
        return this.f4713b.mo17072c();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: c */
    public boolean mo17071c(AbstractC1414b abstractC1414b) {
        return m17059l() && abstractC1414b.equals(this.f4713b) && !mo17062i();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: d */
    public boolean mo17070d() {
        return this.f4713b.mo17070d() || this.f4714c.mo17070d();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: d */
    public boolean mo17069d(AbstractC1414b abstractC1414b) {
        return m17060k() && abstractC1414b.equals(this.f4713b);
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: e */
    public void mo17067e(AbstractC1414b abstractC1414b) {
        if (abstractC1414b.equals(this.f4714c)) {
            return;
        }
        if (this.f4712a != null) {
            this.f4712a.mo17067e(this);
        }
        if (this.f4714c.mo17070d()) {
            return;
        }
        this.f4714c.mo17074b();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: e */
    public boolean mo17068e() {
        return this.f4713b.mo17068e() || this.f4714c.mo17068e();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: f */
    public void mo17065f(AbstractC1414b abstractC1414b) {
        if (abstractC1414b.equals(this.f4713b) && this.f4712a != null) {
            this.f4712a.mo17065f(this);
        }
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: f */
    public boolean mo17066f() {
        return this.f4713b.mo17066f();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: g */
    public boolean mo17064g() {
        return this.f4713b.mo17064g();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: h */
    public void mo17063h() {
        this.f4713b.mo17063h();
        this.f4714c.mo17063h();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: i */
    public boolean mo17062i() {
        return m17058m() || mo17068e();
    }
}
