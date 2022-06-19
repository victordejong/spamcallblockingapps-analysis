package com.bumptech.glide.load.resource.p126e;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.bitmap.C3864e;
import com.bumptech.glide.load.resource.p125d.C3909c;
/* renamed from: com.bumptech.glide.load.resource.e.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/c.class */
public final class C3923c implements AbstractC3925e<Drawable, byte[]> {

    /* renamed from: a */
    private final AbstractC3712e f14352a;

    /* renamed from: b */
    private final AbstractC3925e<Bitmap, byte[]> f14353b;

    /* renamed from: c */
    private final AbstractC3925e<C3909c, byte[]> f14354c;

    public C3923c(AbstractC3712e abstractC3712e, AbstractC3925e<Bitmap, byte[]> abstractC3925e, AbstractC3925e<C3909c, byte[]> abstractC3925e2) {
        this.f14352a = abstractC3712e;
        this.f14353b = abstractC3925e;
        this.f14354c = abstractC3925e2;
    }

    @Override // com.bumptech.glide.load.resource.p126e.AbstractC3925e
    /* renamed from: a */
    public final AbstractC3811u<byte[]> mo37189a(AbstractC3811u<Drawable> abstractC3811u, C3822h c3822h) {
        Drawable mo37235b = abstractC3811u.mo37235b();
        if (mo37235b instanceof BitmapDrawable) {
            return this.f14353b.mo37189a(C3864e.m37283a(((BitmapDrawable) mo37235b).getBitmap(), this.f14352a), c3822h);
        }
        if (!(mo37235b instanceof C3909c)) {
            return null;
        }
        return this.f14354c.mo37189a(abstractC3811u, c3822h);
    }
}
