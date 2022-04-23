package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.g.j;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.engine.u;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/e.class */
public final class e implements q, u<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f7658a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.a.e f7659b;

    public e(Bitmap bitmap, com.bumptech.glide.load.engine.a.e eVar) {
        this.f7658a = (Bitmap) j.a(bitmap, "Bitmap must not be null");
        this.f7659b = (com.bumptech.glide.load.engine.a.e) j.a(eVar, "BitmapPool must not be null");
    }

    public static e a(Bitmap bitmap, com.bumptech.glide.load.engine.a.e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new e(bitmap, eVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Class<Bitmap> a() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final /* bridge */ /* synthetic */ Bitmap b() {
        return this.f7658a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int c() {
        return k.a(this.f7658a);
    }

    @Override // com.bumptech.glide.load.engine.u
    public final void d() {
        this.f7659b.a(this.f7658a);
    }

    @Override // com.bumptech.glide.load.engine.q
    public final void e() {
        this.f7658a.prepareToDraw();
    }
}
