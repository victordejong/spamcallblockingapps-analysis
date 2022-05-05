package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.i.h;
import com.bumptech.glide.load.b.k;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/c.class */
public final class c implements k<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f3601a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.b.a.c f3602b;

    public c(Bitmap bitmap, com.bumptech.glide.load.b.a.c cVar) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        } else if (cVar == null) {
            throw new NullPointerException("BitmapPool must not be null");
        } else {
            this.f3601a = bitmap;
            this.f3602b = cVar;
        }
    }

    public static c a(Bitmap bitmap, com.bumptech.glide.load.b.a.c cVar) {
        return bitmap == null ? null : new c(bitmap, cVar);
    }

    @Override // com.bumptech.glide.load.b.k
    public final /* bridge */ /* synthetic */ Bitmap a() {
        return this.f3601a;
    }

    @Override // com.bumptech.glide.load.b.k
    public final int b() {
        return h.a(this.f3601a);
    }

    @Override // com.bumptech.glide.load.b.k
    public final void c() {
        if (!this.f3602b.a(this.f3601a)) {
            this.f3601a.recycle();
        }
    }
}
