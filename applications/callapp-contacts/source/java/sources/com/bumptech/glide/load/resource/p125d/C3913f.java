package com.bumptech.glide.load.resource.p125d;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.resource.bitmap.C3864e;
import com.bumptech.glide.p116g.C3643j;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.d.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/f.class */
public final class C3913f implements AbstractC3826l<C3909c> {

    /* renamed from: b */
    private final AbstractC3826l<Bitmap> f14319b;

    public C3913f(AbstractC3826l<Bitmap> abstractC3826l) {
        this.f14319b = (AbstractC3826l) C3643j.m37588a(abstractC3826l, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.AbstractC3826l
    /* renamed from: a */
    public final AbstractC3811u<C3909c> mo37209a(Context context, AbstractC3811u<C3909c> abstractC3811u, int i, int i2) {
        C3909c mo37235b = abstractC3811u.mo37235b();
        AbstractC3811u<Bitmap> c3864e = new C3864e(mo37235b.m37223a(), ComponentCallbacks2C3548c.m37723a(context).f13531a);
        AbstractC3811u<Bitmap> mo37209a = this.f14319b.mo37209a(context, c3864e, i, i2);
        if (!c3864e.equals(mo37209a)) {
            c3864e.mo37211d();
        }
        Bitmap mo37235b2 = mo37209a.mo37235b();
        mo37235b.f14307a.f14318a.m37207a(this.f14319b, mo37235b2);
        return abstractC3811u;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (obj instanceof C3913f) {
            return this.f14319b.equals(((C3913f) obj).f14319b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        return this.f14319b.hashCode();
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f14319b.updateDiskCacheKey(messageDigest);
    }
}
