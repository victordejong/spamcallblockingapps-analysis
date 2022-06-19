package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.AbstractC3806q;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.C3644k;
/* renamed from: com.bumptech.glide.load.resource.bitmap.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/e.class */
public final class C3864e implements AbstractC3806q, AbstractC3811u<Bitmap> {

    /* renamed from: a */
    private final Bitmap f14221a;

    /* renamed from: b */
    private final AbstractC3712e f14222b;

    public C3864e(Bitmap bitmap, AbstractC3712e abstractC3712e) {
        this.f14221a = (Bitmap) C3643j.m37588a(bitmap, "Bitmap must not be null");
        this.f14222b = (AbstractC3712e) C3643j.m37588a(abstractC3712e, "BitmapPool must not be null");
    }

    /* renamed from: a */
    public static C3864e m37283a(Bitmap bitmap, AbstractC3712e abstractC3712e) {
        if (bitmap == null) {
            return null;
        }
        return new C3864e(bitmap, abstractC3712e);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: a */
    public final Class<Bitmap> mo37213a() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Bitmap mo37235b() {
        return this.f14221a;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: c */
    public final int mo37212c() {
        return C3644k.m37579a(this.f14221a);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: d */
    public final void mo37211d() {
        this.f14222b.mo37266a(this.f14221a);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3806q
    /* renamed from: e */
    public final void mo37210e() {
        this.f14221a.prepareToDraw();
    }
}
