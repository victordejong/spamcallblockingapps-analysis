package com.bumptech.glide.load.resource.c;

import android.graphics.Bitmap;
import com.bumptech.glide.b.a;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/h.class */
final class h implements e<a, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final c f3644a;

    public h(c cVar) {
        this.f3644a = cVar;
    }

    @Override // com.bumptech.glide.load.e
    public final /* synthetic */ k<Bitmap> a(a aVar, int i, int i2) {
        return com.bumptech.glide.load.resource.bitmap.c.a(aVar.b(), this.f3644a);
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        return "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif";
    }
}
