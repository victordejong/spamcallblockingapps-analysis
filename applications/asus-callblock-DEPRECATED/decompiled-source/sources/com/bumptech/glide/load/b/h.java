package com.bumptech.glide.load.b;

import android.os.Looper;
import com.bumptech.glide.load.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/h.class */
public final class h<Z> implements k<Z> {

    /* renamed from: a  reason: collision with root package name */
    final boolean f3547a;

    /* renamed from: b  reason: collision with root package name */
    a f3548b;
    c c;
    private final k<Z> d;
    private int e;
    private boolean f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/h$a.class */
    interface a {
        void b(c cVar, h<?> hVar);
    }

    public h(k<Z> kVar, boolean z) {
        if (kVar == null) {
            throw new NullPointerException("Wrapped resource must not be null");
        }
        this.d = kVar;
        this.f3547a = z;
    }

    @Override // com.bumptech.glide.load.b.k
    public final Z a() {
        return this.d.a();
    }

    @Override // com.bumptech.glide.load.b.k
    public final int b() {
        return this.d.b();
    }

    @Override // com.bumptech.glide.load.b.k
    public final void c() {
        if (this.e > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        } else if (this.f) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        } else {
            this.f = true;
            this.d.c();
        }
    }

    public final void d() {
        if (this.f) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        } else if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        } else {
            this.e++;
        }
    }

    public final void e() {
        if (this.e <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        } else if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call release on the main thread");
        } else {
            int i = this.e - 1;
            this.e = i;
            if (i == 0) {
                this.f3548b.b(this.c, this);
            }
        }
    }
}
