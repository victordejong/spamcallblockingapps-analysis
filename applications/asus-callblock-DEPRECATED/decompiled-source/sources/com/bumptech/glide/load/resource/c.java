package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.b.k;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c.class */
public class c<T> implements k<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f3627a;

    public c(T t) {
        if (t == null) {
            throw new NullPointerException("Data must not be null");
        }
        this.f3627a = t;
    }

    @Override // com.bumptech.glide.load.b.k
    public final T a() {
        return this.f3627a;
    }

    @Override // com.bumptech.glide.load.b.k
    public final int b() {
        return 1;
    }

    @Override // com.bumptech.glide.load.b.k
    public final void c() {
    }
}
