package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.bitmap.n */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/n.class */
public final class C3883n implements AbstractC3826l<Drawable> {

    /* renamed from: b */
    private final AbstractC3826l<Bitmap> f14254b;

    /* renamed from: c */
    private final boolean f14255c;

    public C3883n(AbstractC3826l<Bitmap> abstractC3826l, boolean z) {
        this.f14254b = abstractC3826l;
        this.f14255c = z;
    }

    @Override // com.bumptech.glide.load.AbstractC3826l
    /* renamed from: a */
    public final AbstractC3811u<Drawable> mo37209a(Context context, AbstractC3811u<Drawable> abstractC3811u, int i, int i2) {
        AbstractC3712e abstractC3712e = ComponentCallbacks2C3548c.m37723a(context).f13531a;
        Drawable mo37235b = abstractC3811u.mo37235b();
        AbstractC3811u<Bitmap> m37268a = C3881m.m37268a(abstractC3712e, mo37235b, i, i2);
        if (m37268a != null) {
            AbstractC3811u<Bitmap> mo37209a = this.f14254b.mo37209a(context, m37268a, i, i2);
            if (!mo37209a.equals(m37268a)) {
                return C3891t.m37253a(context.getResources(), mo37209a);
            }
            mo37209a.mo37211d();
            return abstractC3811u;
        } else if (!this.f14255c) {
            return abstractC3811u;
        } else {
            throw new IllegalArgumentException("Unable to convert " + mo37235b + " to a Bitmap");
        }
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (obj instanceof C3883n) {
            return this.f14254b.equals(((C3883n) obj).f14254b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        return this.f14254b.hashCode();
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f14254b.updateDiskCacheKey(messageDigest);
    }
}
