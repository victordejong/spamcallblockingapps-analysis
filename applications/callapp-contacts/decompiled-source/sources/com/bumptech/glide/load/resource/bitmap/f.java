package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.c;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.l;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/f.class */
public abstract class f implements l<Bitmap> {
    protected abstract Bitmap a(e eVar, Bitmap bitmap, int i, int i2);

    @Override // com.bumptech.glide.load.l
    public final u<Bitmap> a(Context context, u<Bitmap> uVar, int i, int i2) {
        if (k.a(i, i2)) {
            e eVar = c.a(context).f7232a;
            Bitmap b2 = uVar.b();
            int i3 = i;
            if (i == Integer.MIN_VALUE) {
                i3 = b2.getWidth();
            }
            int i4 = i2;
            if (i2 == Integer.MIN_VALUE) {
                i4 = b2.getHeight();
            }
            Bitmap a2 = a(eVar, b2, i3, i4);
            if (!b2.equals(a2)) {
                uVar = e.a(a2, eVar);
            }
            return uVar;
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
