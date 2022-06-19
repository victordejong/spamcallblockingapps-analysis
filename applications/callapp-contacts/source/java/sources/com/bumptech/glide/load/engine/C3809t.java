package com.bumptech.glide.load.engine;

import androidx.core.p036e.C0829c;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.p117a.AbstractC3629b;
import com.bumptech.glide.p116g.p117a.C3621a;
/* renamed from: com.bumptech.glide.load.engine.t */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/t.class */
final class C3809t<Z> implements C3621a.AbstractC3627c, AbstractC3811u<Z> {

    /* renamed from: a */
    private static final C0829c.AbstractC0830a<C3809t<?>> f14141a = C3621a.m37609a(20, new C3621a.AbstractC3625a<C3809t<?>>() { // from class: com.bumptech.glide.load.engine.t.1
        @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3625a
        /* renamed from: a */
        public final /* synthetic */ C3809t<?> mo37334a() {
            return new C3809t<>();
        }
    });

    /* renamed from: b */
    private final AbstractC3629b f14142b = new AbstractC3629b.C3631a();

    /* renamed from: c */
    private AbstractC3811u<Z> f14143c;

    /* renamed from: d */
    private boolean f14144d;

    /* renamed from: e */
    private boolean f14145e;

    C3809t() {
    }

    /* renamed from: a */
    public static <Z> C3809t<Z> m37337a(AbstractC3811u<Z> abstractC3811u) {
        C3809t<Z> c3809t = (C3809t) C3643j.m37588a(f14141a.mo37607a(), "Argument must not be null");
        ((C3809t) c3809t).f14145e = false;
        ((C3809t) c3809t).f14144d = true;
        ((C3809t) c3809t).f14143c = abstractC3811u;
        return c3809t;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: a */
    public final Class<Z> mo37213a() {
        return this.f14143c.mo37213a();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: b */
    public final Z mo37235b() {
        return this.f14143c.mo37235b();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: c */
    public final int mo37212c() {
        return this.f14143c.mo37212c();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: d */
    public final void mo37211d() {
        synchronized (this) {
            this.f14142b.mo37604a();
            this.f14145e = true;
            if (!this.f14144d) {
                this.f14143c.mo37211d();
                this.f14143c = null;
                f14141a.mo37606a(this);
            }
        }
    }

    /* renamed from: e */
    public final void m37336e() {
        synchronized (this) {
            this.f14142b.mo37604a();
            if (!this.f14144d) {
                throw new IllegalStateException("Already unlocked");
            }
            this.f14144d = false;
            if (this.f14145e) {
                mo37211d();
            }
        }
    }

    @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3627c
    /* renamed from: m_ */
    public final AbstractC3629b mo37335m_() {
        return this.f14142b;
    }
}
