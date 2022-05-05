package com.bumptech.glide.load.resource.e;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.resource.a.b;
import com.bumptech.glide.load.resource.bitmap.j;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/a.class */
public final class a implements c<com.bumptech.glide.load.resource.d.a, b> {

    /* renamed from: a  reason: collision with root package name */
    private final c<Bitmap, j> f3664a;

    public a(c<Bitmap, j> cVar) {
        this.f3664a = cVar;
    }

    @Override // com.bumptech.glide.load.resource.e.c
    public final k<b> a(k<com.bumptech.glide.load.resource.d.a> kVar) {
        com.bumptech.glide.load.resource.d.a a2 = kVar.a();
        k<Bitmap> kVar2 = a2.f3653b;
        return kVar2 != null ? this.f3664a.a(kVar2) : a2.f3652a;
    }

    @Override // com.bumptech.glide.load.resource.e.c
    public final String a() {
        return "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }
}
