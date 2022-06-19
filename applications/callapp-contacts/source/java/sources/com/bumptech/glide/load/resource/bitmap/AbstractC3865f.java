package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.p116g.C3644k;
/* renamed from: com.bumptech.glide.load.resource.bitmap.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/f.class */
public abstract class AbstractC3865f implements AbstractC3826l<Bitmap> {
    /* renamed from: a */
    protected abstract Bitmap mo27006a(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2);

    @Override // com.bumptech.glide.load.AbstractC3826l
    /* renamed from: a */
    public final AbstractC3811u<Bitmap> mo37209a(Context context, AbstractC3811u<Bitmap> abstractC3811u, int i, int i2) {
        if (!C3644k.m37581a(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        AbstractC3712e abstractC3712e = ComponentCallbacks2C3548c.m37723a(context).f13531a;
        Bitmap mo37235b = abstractC3811u.mo37235b();
        int i3 = i;
        if (i == Integer.MIN_VALUE) {
            i3 = mo37235b.getWidth();
        }
        int i4 = i2;
        if (i2 == Integer.MIN_VALUE) {
            i4 = mo37235b.getHeight();
        }
        Bitmap mo27006a = mo27006a(abstractC3712e, mo37235b, i3, i4);
        if (!mo37235b.equals(mo27006a)) {
            abstractC3811u = C3864e.m37283a(mo27006a, abstractC3712e);
        }
        return abstractC3811u;
    }
}
