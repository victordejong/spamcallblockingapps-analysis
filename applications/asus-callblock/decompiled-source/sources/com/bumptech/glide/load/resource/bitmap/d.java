package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.i.h;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.g;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/d.class */
public abstract class d implements g<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private c f3603a;

    public d(c cVar) {
        this.f3603a = cVar;
    }

    protected abstract Bitmap a(c cVar, Bitmap bitmap, int i, int i2);

    @Override // com.bumptech.glide.load.g
    public final k<Bitmap> a(k<Bitmap> kVar, int i, int i2) {
        if (!h.a(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        Bitmap a2 = kVar.a();
        int i3 = i;
        if (i == Integer.MIN_VALUE) {
            i3 = a2.getWidth();
        }
        int i4 = i2;
        if (i2 == Integer.MIN_VALUE) {
            i4 = a2.getHeight();
        }
        Bitmap a3 = a(this.f3603a, a2, i3, i4);
        if (!a2.equals(a3)) {
            kVar = c.a(a3, this.f3603a);
        }
        return kVar;
    }
}
