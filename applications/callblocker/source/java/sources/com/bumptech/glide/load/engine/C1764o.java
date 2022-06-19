package com.bumptech.glide.load.engine;

import android.os.Looper;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.p077h.C1456i;
/* renamed from: com.bumptech.glide.load.engine.o */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/o.class */
class C1764o<Z> implements AbstractC1771t<Z> {

    /* renamed from: a */
    private final boolean f5364a;

    /* renamed from: b */
    private final boolean f5365b;

    /* renamed from: c */
    private AbstractC1765a f5366c;

    /* renamed from: d */
    private AbstractC1777f f5367d;

    /* renamed from: e */
    private int f5368e;

    /* renamed from: f */
    private boolean f5369f;

    /* renamed from: g */
    private final AbstractC1771t<Z> f5370g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.o$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/o$a.class */
    public interface AbstractC1765a {
        /* renamed from: a */
        void mo16363a(AbstractC1777f abstractC1777f, C1764o<?> c1764o);
    }

    public C1764o(AbstractC1771t<Z> abstractC1771t, boolean z, boolean z2) {
        this.f5370g = (AbstractC1771t) C1456i.m16989a(abstractC1771t);
        this.f5364a = z;
        this.f5365b = z2;
    }

    /* renamed from: a */
    public AbstractC1771t<Z> m16368a() {
        return this.f5370g;
    }

    /* renamed from: a */
    public void m16367a(AbstractC1777f abstractC1777f, AbstractC1765a abstractC1765a) {
        this.f5367d = abstractC1777f;
        this.f5366c = abstractC1765a;
    }

    /* renamed from: b */
    public boolean m16366b() {
        return this.f5364a;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: c */
    public Class<Z> mo16348c() {
        return this.f5370g.mo16348c();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: d */
    public Z mo16347d() {
        return this.f5370g.mo16347d();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: e */
    public int mo16346e() {
        return this.f5370g.mo16346e();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: f */
    public void mo16345f() {
        if (this.f5368e > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f5369f) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f5369f = true;
        if (!this.f5365b) {
            return;
        }
        this.f5370g.mo16345f();
    }

    /* renamed from: g */
    public void m16365g() {
        if (this.f5369f) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
        this.f5368e++;
    }

    /* renamed from: h */
    public void m16364h() {
        if (this.f5368e <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
        int i = this.f5368e - 1;
        this.f5368e = i;
        if (i != 0) {
            return;
        }
        this.f5366c.mo16363a(this.f5367d, this);
    }

    public String toString() {
        return "EngineResource{isCacheable=" + this.f5364a + ", listener=" + this.f5366c + ", key=" + this.f5367d + ", acquired=" + this.f5368e + ", isRecycled=" + this.f5369f + ", resource=" + this.f5370g + '}';
    }
}
