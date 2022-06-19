package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.p223p.C4382j;
/* renamed from: com.bumptech.glide.load.engine.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/n.class */
class C4076n<Z> implements AbstractC4083s<Z> {

    /* renamed from: d */
    private final boolean f12863d;

    /* renamed from: e */
    private final boolean f12864e;

    /* renamed from: f */
    private final AbstractC4083s<Z> f12865f;

    /* renamed from: g */
    private final AbstractC4077a f12866g;

    /* renamed from: h */
    private final AbstractC3999c f12867h;

    /* renamed from: i */
    private int f12868i;

    /* renamed from: j */
    private boolean f12869j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.n$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/n$a.class */
    public interface AbstractC4077a {
        /* renamed from: d */
        void mo23327d(AbstractC3999c abstractC3999c, C4076n<?> c4076n);
    }

    public C4076n(AbstractC4083s<Z> abstractC4083s, boolean z, boolean z2, AbstractC3999c abstractC3999c, AbstractC4077a abstractC4077a) {
        this.f12865f = (AbstractC4083s) C4382j.m22719d(abstractC4083s);
        this.f12863d = z;
        this.f12864e = z2;
        this.f12867h = abstractC3999c;
        this.f12866g = (AbstractC4077a) C4382j.m22719d(abstractC4077a);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: a */
    public void mo22858a() {
        synchronized (this) {
            if (this.f12868i > 0) {
                throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
            }
            if (this.f12869j) {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
            this.f12869j = true;
            if (this.f12864e) {
                this.f12865f.mo22858a();
            }
        }
    }

    /* renamed from: b */
    public void m23331b() {
        synchronized (this) {
            if (this.f12869j) {
                throw new IllegalStateException("Cannot acquire a recycled resource");
            }
            this.f12868i++;
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: c */
    public int mo22856c() {
        return this.f12865f.mo22856c();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: d */
    public Class<Z> mo22855d() {
        return this.f12865f.mo22855d();
    }

    /* renamed from: e */
    public AbstractC4083s<Z> m23330e() {
        return this.f12865f;
    }

    /* renamed from: f */
    public boolean m23329f() {
        return this.f12863d;
    }

    /* renamed from: g */
    public void m23328g() {
        boolean z;
        synchronized (this) {
            int i = this.f12868i;
            if (i <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i2 = i - 1;
            this.f12868i = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            this.f12866g.mo23327d(this.f12867h, this);
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    public Z get() {
        return this.f12865f.get();
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = "EngineResource{isMemoryCacheable=" + this.f12863d + ", listener=" + this.f12866g + ", key=" + this.f12867h + ", acquired=" + this.f12868i + ", isRecycled=" + this.f12869j + ", resource=" + this.f12865f + '}';
        }
        return str;
    }
}
