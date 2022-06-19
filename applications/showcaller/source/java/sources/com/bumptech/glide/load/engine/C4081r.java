package com.bumptech.glide.load.engine;

import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.p224l.AbstractC4394c;
import com.bumptech.glide.p223p.p224l.C4385a;
import p020b.p041h.p049k.AbstractC1594e;
/* renamed from: com.bumptech.glide.load.engine.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/r.class */
public final class C4081r<Z> implements AbstractC4083s<Z>, C4385a.AbstractC4391f {

    /* renamed from: d */
    private static final AbstractC1594e<C4081r<?>> f12876d = C4385a.m22692d(20, new C4082a());

    /* renamed from: e */
    private final AbstractC4394c f12877e = AbstractC4394c.m22678a();

    /* renamed from: f */
    private AbstractC4083s<Z> f12878f;

    /* renamed from: g */
    private boolean f12879g;

    /* renamed from: h */
    private boolean f12880h;

    /* renamed from: com.bumptech.glide.load.engine.r$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/r$a.class */
    class C4082a implements C4385a.AbstractC4389d<C4081r<?>> {
        C4082a() {
        }

        /* renamed from: b */
        public C4081r<?> mo22687a() {
            return new C4081r<>();
        }
    }

    C4081r() {
    }

    /* renamed from: b */
    private void m23320b(AbstractC4083s<Z> abstractC4083s) {
        this.f12880h = false;
        this.f12879g = true;
        this.f12878f = abstractC4083s;
    }

    /* renamed from: e */
    public static <Z> C4081r<Z> m23319e(AbstractC4083s<Z> abstractC4083s) {
        C4081r<Z> c4081r = (C4081r) C4382j.m22719d(f12876d.mo22686a());
        c4081r.m23320b(abstractC4083s);
        return c4081r;
    }

    /* renamed from: g */
    private void m23318g() {
        this.f12878f = null;
        f12876d.mo22685b(this);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: a */
    public void mo22858a() {
        synchronized (this) {
            this.f12877e.mo22676c();
            this.f12880h = true;
            if (!this.f12879g) {
                this.f12878f.mo22858a();
                m23318g();
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: c */
    public int mo22856c() {
        return this.f12878f.mo22856c();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: d */
    public Class<Z> mo22855d() {
        return this.f12878f.mo22855d();
    }

    @Override // com.bumptech.glide.p223p.p224l.C4385a.AbstractC4391f
    /* renamed from: f */
    public AbstractC4394c mo22684f() {
        return this.f12877e;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    public Z get() {
        return this.f12878f.get();
    }

    /* renamed from: h */
    public void m23317h() {
        synchronized (this) {
            this.f12877e.mo22676c();
            if (!this.f12879g) {
                throw new IllegalStateException("Already unlocked");
            }
            this.f12879g = false;
            if (this.f12880h) {
                mo22858a();
            }
        }
    }
}
