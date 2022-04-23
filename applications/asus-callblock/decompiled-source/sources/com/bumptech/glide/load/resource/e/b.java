package com.bumptech.glide.load.resource.e;

import android.content.res.Resources;
import android.graphics.Bitmap;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.resource.bitmap.j;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/b.class */
public final class b implements c<Bitmap, j> {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f3665a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3666b;

    public b(Resources resources, c cVar) {
        this.f3665a = resources;
        this.f3666b = cVar;
    }

    @Override // com.bumptech.glide.load.resource.e.c
    public final k<j> a(k<Bitmap> kVar) {
        return new com.bumptech.glide.load.resource.bitmap.k(new j(this.f3665a, kVar.a()), this.f3666b);
    }

    @Override // com.bumptech.glide.load.resource.e.c
    public final String a() {
        return "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }
}
