package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.f.b;
import com.bumptech.glide.load.c.g;
import com.bumptech.glide.load.c.h;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import java.io.File;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/m.class */
public final class m implements b<g, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final l f3617a;

    /* renamed from: b  reason: collision with root package name */
    private final e<File, Bitmap> f3618b;
    private final f<Bitmap> c;
    private final h d;

    public m(b<InputStream, Bitmap> bVar, b<ParcelFileDescriptor, Bitmap> bVar2) {
        this.c = bVar.d();
        this.d = new h(bVar.c(), bVar2.c());
        this.f3618b = bVar.a();
        this.f3617a = new l(bVar.b(), bVar2.b());
    }

    @Override // com.bumptech.glide.f.b
    public final e<File, Bitmap> a() {
        return this.f3618b;
    }

    @Override // com.bumptech.glide.f.b
    public final e<g, Bitmap> b() {
        return this.f3617a;
    }

    @Override // com.bumptech.glide.f.b
    public final com.bumptech.glide.load.b<g> c() {
        return this.d;
    }

    @Override // com.bumptech.glide.f.b
    public final f<Bitmap> d() {
        return this.c;
    }
}
