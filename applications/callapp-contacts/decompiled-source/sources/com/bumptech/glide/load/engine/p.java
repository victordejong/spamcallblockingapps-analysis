package com.bumptech.glide.load.engine;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/p.class */
final class p<Z> implements u<Z> {

    /* renamed from: a  reason: collision with root package name */
    final boolean f7590a;

    /* renamed from: b  reason: collision with root package name */
    final u<Z> f7591b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f7592c;

    /* renamed from: d  reason: collision with root package name */
    private final a f7593d;
    private final f e;
    private int f;
    private boolean g;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/p$a.class */
    interface a {
        void a(f fVar, p<?> pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(u<Z> uVar, boolean z, boolean z2, f fVar, a aVar) {
        this.f7591b = (u) j.a(uVar, "Argument must not be null");
        this.f7590a = z;
        this.f7592c = z2;
        this.e = fVar;
        this.f7593d = (a) j.a(aVar, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Class<Z> a() {
        return this.f7591b.a();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Z b() {
        return this.f7591b.b();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int c() {
        return this.f7591b.c();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final void d() {
        synchronized (this) {
            if (this.f > 0) {
                throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
            } else if (!this.g) {
                this.g = true;
                if (this.f7592c) {
                    this.f7591b.d();
                }
            } else {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        synchronized (this) {
            if (!this.g) {
                this.f++;
            } else {
                throw new IllegalStateException("Cannot acquire a recycled resource");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        boolean z;
        synchronized (this) {
            int i = this.f;
            if (i > 0) {
                z = true;
                int i2 = i - 1;
                this.f = i2;
                if (i2 != 0) {
                    z = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z) {
            this.f7593d.a(this.e, this);
        }
    }

    public final String toString() {
        String str;
        synchronized (this) {
            str = "EngineResource{isMemoryCacheable=" + this.f7590a + ", listener=" + this.f7593d + ", key=" + this.e + ", acquired=" + this.f + ", isRecycled=" + this.g + ", resource=" + this.f7591b + '}';
        }
        return str;
    }
}
