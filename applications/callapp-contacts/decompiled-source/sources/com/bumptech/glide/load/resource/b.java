package com.bumptech.glide.load.resource;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.u;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b.class */
public class b<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f7633a;

    public b(T t) {
        this.f7633a = (T) j.a(t, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Class<T> a() {
        return (Class<T>) this.f7633a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final T b() {
        return this.f7633a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int c() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final void d() {
    }
}
