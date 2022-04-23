package com.bumptech.glide.f;

import com.bumptech.glide.load.b;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.resource.e.c;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/e.class */
public final class e<A, T, Z, R> implements f<A, T, Z, R> {

    /* renamed from: a  reason: collision with root package name */
    private final j<A, T> f3414a;

    /* renamed from: b  reason: collision with root package name */
    private final c<Z, R> f3415b;
    private final b<T, Z> c;

    public e(j<A, T> jVar, c<Z, R> cVar, b<T, Z> bVar) {
        if (jVar == null) {
            throw new NullPointerException("ModelLoader must not be null");
        }
        this.f3414a = jVar;
        if (cVar == null) {
            throw new NullPointerException("Transcoder must not be null");
        }
        this.f3415b = cVar;
        if (bVar == null) {
            throw new NullPointerException("DataLoadProvider must not be null");
        }
        this.c = bVar;
    }

    @Override // com.bumptech.glide.f.b
    public final com.bumptech.glide.load.e<File, Z> a() {
        return this.c.a();
    }

    @Override // com.bumptech.glide.f.b
    public final com.bumptech.glide.load.e<T, Z> b() {
        return this.c.b();
    }

    @Override // com.bumptech.glide.f.b
    public final b<T> c() {
        return this.c.c();
    }

    @Override // com.bumptech.glide.f.b
    public final f<Z> d() {
        return this.c.d();
    }

    @Override // com.bumptech.glide.f.f
    public final j<A, T> e() {
        return this.f3414a;
    }

    @Override // com.bumptech.glide.f.f
    public final c<Z, R> f() {
        return this.f3415b;
    }
}
