package com.bumptech.glide.p073f;
/* renamed from: com.bumptech.glide.f.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a.class */
public final class C1402a implements AbstractC1414b, AbstractC1420c {

    /* renamed from: a */
    private final AbstractC1420c f4628a;

    /* renamed from: b */
    private AbstractC1414b f4629b;

    /* renamed from: c */
    private AbstractC1414b f4630c;

    public C1402a(AbstractC1420c abstractC1420c) {
        this.f4628a = abstractC1420c;
    }

    /* renamed from: g */
    private boolean m17199g(AbstractC1414b abstractC1414b) {
        return abstractC1414b.equals(this.f4629b) || (this.f4629b.mo17064g() && abstractC1414b.equals(this.f4630c));
    }

    /* renamed from: j */
    private boolean m17198j() {
        return this.f4628a == null || this.f4628a.mo17073b(this);
    }

    /* renamed from: k */
    private boolean m17197k() {
        return this.f4628a == null || this.f4628a.mo17069d(this);
    }

    /* renamed from: l */
    private boolean m17196l() {
        return this.f4628a == null || this.f4628a.mo17071c(this);
    }

    /* renamed from: m */
    private boolean m17195m() {
        return this.f4628a != null && this.f4628a.mo17062i();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: a */
    public void mo17077a() {
        if (!this.f4629b.mo17072c()) {
            this.f4629b.mo17077a();
        }
    }

    /* renamed from: a */
    public void m17200a(AbstractC1414b abstractC1414b, AbstractC1414b abstractC1414b2) {
        this.f4629b = abstractC1414b;
        this.f4630c = abstractC1414b2;
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: a */
    public boolean mo17076a(AbstractC1414b abstractC1414b) {
        boolean z = false;
        if (abstractC1414b instanceof C1402a) {
            C1402a c1402a = (C1402a) abstractC1414b;
            z = false;
            if (this.f4629b.mo17076a(c1402a.f4629b)) {
                z = false;
                if (this.f4630c.mo17076a(c1402a.f4630c)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: b */
    public void mo17074b() {
        this.f4629b.mo17074b();
        if (this.f4630c.mo17072c()) {
            this.f4630c.mo17074b();
        }
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: b */
    public boolean mo17073b(AbstractC1414b abstractC1414b) {
        return m17198j() && m17199g(abstractC1414b);
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: c */
    public boolean mo17072c() {
        return this.f4629b.mo17064g() ? this.f4630c.mo17072c() : this.f4629b.mo17072c();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: c */
    public boolean mo17071c(AbstractC1414b abstractC1414b) {
        return m17196l() && m17199g(abstractC1414b);
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: d */
    public boolean mo17070d() {
        return this.f4629b.mo17064g() ? this.f4630c.mo17070d() : this.f4629b.mo17070d();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: d */
    public boolean mo17069d(AbstractC1414b abstractC1414b) {
        return m17197k() && m17199g(abstractC1414b);
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: e */
    public void mo17067e(AbstractC1414b abstractC1414b) {
        if (this.f4628a != null) {
            this.f4628a.mo17067e(this);
        }
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: e */
    public boolean mo17068e() {
        return this.f4629b.mo17064g() ? this.f4630c.mo17068e() : this.f4629b.mo17068e();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: f */
    public void mo17065f(AbstractC1414b abstractC1414b) {
        if (!abstractC1414b.equals(this.f4630c)) {
            if (this.f4630c.mo17072c()) {
                return;
            }
            this.f4630c.mo17077a();
        } else if (this.f4628a == null) {
        } else {
            this.f4628a.mo17065f(this);
        }
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: f */
    public boolean mo17066f() {
        return this.f4629b.mo17064g() ? this.f4630c.mo17066f() : this.f4629b.mo17066f();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: g */
    public boolean mo17064g() {
        return this.f4629b.mo17064g() && this.f4630c.mo17064g();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: h */
    public void mo17063h() {
        this.f4629b.mo17063h();
        this.f4630c.mo17063h();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1420c
    /* renamed from: i */
    public boolean mo17062i() {
        return m17195m() || mo17068e();
    }
}
