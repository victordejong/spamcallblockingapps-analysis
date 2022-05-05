package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.i.h;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.resource.a.a;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k.class */
public final class k extends a<j> {

    /* renamed from: b  reason: collision with root package name */
    private final c f3614b;

    public k(j jVar, c cVar) {
        super(jVar);
        this.f3614b = cVar;
    }

    @Override // com.bumptech.glide.load.b.k
    public final int b() {
        return h.a(((j) this.f3588a).f3610a.f3612a);
    }

    @Override // com.bumptech.glide.load.b.k
    public final void c() {
        this.f3614b.a(((j) this.f3588a).f3610a.f3612a);
    }
}
