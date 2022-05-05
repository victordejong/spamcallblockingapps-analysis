package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.f.b;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import java.io.File;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g.class */
public final class g implements b<com.bumptech.glide.load.c.g, a> {

    /* renamed from: a  reason: collision with root package name */
    private final e<File, a> f3662a;

    /* renamed from: b  reason: collision with root package name */
    private final e<com.bumptech.glide.load.c.g, a> f3663b;
    private final f<a> c;
    private final com.bumptech.glide.load.b<com.bumptech.glide.load.c.g> d;

    public g(b<com.bumptech.glide.load.c.g, Bitmap> bVar, b<InputStream, com.bumptech.glide.load.resource.c.b> bVar2, c cVar) {
        c cVar2 = new c(bVar.b(), bVar2.b(), cVar);
        this.f3662a = new com.bumptech.glide.load.resource.b.c(new e(cVar2));
        this.f3663b = cVar2;
        this.c = new d(bVar.d(), bVar2.d());
        this.d = bVar.c();
    }

    @Override // com.bumptech.glide.f.b
    public final e<File, a> a() {
        return this.f3662a;
    }

    @Override // com.bumptech.glide.f.b
    public final e<com.bumptech.glide.load.c.g, a> b() {
        return this.f3663b;
    }

    @Override // com.bumptech.glide.f.b
    public final com.bumptech.glide.load.b<com.bumptech.glide.load.c.g> c() {
        return this.d;
    }

    @Override // com.bumptech.glide.f.b
    public final f<a> d() {
        return this.c;
    }
}
