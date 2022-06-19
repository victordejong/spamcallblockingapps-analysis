package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.p116g.C3643j;
/* renamed from: com.bumptech.glide.load.engine.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/p.class */
final class C3804p<Z> implements AbstractC3811u<Z> {

    /* renamed from: a */
    final boolean f14128a;

    /* renamed from: b */
    final AbstractC3811u<Z> f14129b;

    /* renamed from: c */
    private final boolean f14130c;

    /* renamed from: d */
    private final AbstractC3805a f14131d;

    /* renamed from: e */
    private final AbstractC3818f f14132e;

    /* renamed from: f */
    private int f14133f;

    /* renamed from: g */
    private boolean f14134g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.p$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/p$a.class */
    public interface AbstractC3805a {
        /* renamed from: a */
        void mo37342a(AbstractC3818f abstractC3818f, C3804p<?> c3804p);
    }

    public C3804p(AbstractC3811u<Z> abstractC3811u, boolean z, boolean z2, AbstractC3818f abstractC3818f, AbstractC3805a abstractC3805a) {
        this.f14129b = (AbstractC3811u) C3643j.m37588a(abstractC3811u, "Argument must not be null");
        this.f14128a = z;
        this.f14130c = z2;
        this.f14132e = abstractC3818f;
        this.f14131d = (AbstractC3805a) C3643j.m37588a(abstractC3805a, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: a */
    public final Class<Z> mo37213a() {
        return this.f14129b.mo37213a();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: b */
    public final Z mo37235b() {
        return this.f14129b.mo37235b();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: c */
    public final int mo37212c() {
        return this.f14129b.mo37212c();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: d */
    public final void mo37211d() {
        synchronized (this) {
            if (this.f14133f > 0) {
                throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
            }
            if (this.f14134g) {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
            this.f14134g = true;
            if (this.f14130c) {
                this.f14129b.mo37211d();
            }
        }
    }

    /* renamed from: e */
    public final void m37344e() {
        synchronized (this) {
            if (this.f14134g) {
                throw new IllegalStateException("Cannot acquire a recycled resource");
            }
            this.f14133f++;
        }
    }

    /* renamed from: f */
    public final void m37343f() {
        boolean z;
        synchronized (this) {
            int i = this.f14133f;
            if (i <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i2 = i - 1;
            this.f14133f = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            this.f14131d.mo37342a(this.f14132e, this);
        }
    }

    public final String toString() {
        String str;
        synchronized (this) {
            str = "EngineResource{isMemoryCacheable=" + this.f14128a + ", listener=" + this.f14131d + ", key=" + this.f14132e + ", acquired=" + this.f14133f + ", isRecycled=" + this.f14134g + ", resource=" + this.f14129b + '}';
        }
        return str;
    }
}
