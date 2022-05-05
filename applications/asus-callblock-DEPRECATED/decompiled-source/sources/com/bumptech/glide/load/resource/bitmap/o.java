package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.f.b;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.c.m;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.resource.b.c;
import java.io.File;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/o.class */
public final class o implements b<InputStream, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final p f3621a;
    private final c<Bitmap> d;
    private final m c = new m();

    /* renamed from: b  reason: collision with root package name */
    private final b f3622b = new b();

    public o(com.bumptech.glide.load.b.a.c cVar, a aVar) {
        this.f3621a = new p(cVar, aVar);
        this.d = new c<>(this.f3621a);
    }

    @Override // com.bumptech.glide.f.b
    public final e<File, Bitmap> a() {
        return this.d;
    }

    @Override // com.bumptech.glide.f.b
    public final e<InputStream, Bitmap> b() {
        return this.f3621a;
    }

    @Override // com.bumptech.glide.f.b
    public final com.bumptech.glide.load.b<InputStream> c() {
        return this.c;
    }

    @Override // com.bumptech.glide.f.b
    public final f<Bitmap> d() {
        return this.f3622b;
    }
}
