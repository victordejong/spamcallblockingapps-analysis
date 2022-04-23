package com.bumptech.glide.load.resource.e;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/c.class */
public final class c implements e<Drawable, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final e f7740a;

    /* renamed from: b  reason: collision with root package name */
    private final e<Bitmap, byte[]> f7741b;

    /* renamed from: c  reason: collision with root package name */
    private final e<com.bumptech.glide.load.resource.d.c, byte[]> f7742c;

    public c(e eVar, e<Bitmap, byte[]> eVar2, e<com.bumptech.glide.load.resource.d.c, byte[]> eVar3) {
        this.f7740a = eVar;
        this.f7741b = eVar2;
        this.f7742c = eVar3;
    }

    @Override // com.bumptech.glide.load.resource.e.e
    public final u<byte[]> a(u<Drawable> uVar, h hVar) {
        Drawable b2 = uVar.b();
        if (b2 instanceof BitmapDrawable) {
            return this.f7741b.a(com.bumptech.glide.load.resource.bitmap.e.a(((BitmapDrawable) b2).getBitmap(), this.f7740a), hVar);
        }
        if (b2 instanceof com.bumptech.glide.load.resource.d.c) {
            return this.f7742c.a(uVar, hVar);
        }
        return null;
    }
}
