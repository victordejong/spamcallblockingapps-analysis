package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.p223p.C4383k;
/* renamed from: com.bumptech.glide.load.resource.bitmap.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/f.class */
public abstract class AbstractC4298f implements AbstractC4148h<Bitmap> {
    @Override // com.bumptech.glide.load.AbstractC4148h
    /* renamed from: b */
    public final AbstractC4083s<Bitmap> mo22910b(Context context, AbstractC4083s<Bitmap> abstractC4083s, int i, int i2) {
        if (!C4383k.m22699s(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        AbstractC4096e m23692f = ComponentCallbacks2C3958c.m23695c(context).m23692f();
        Bitmap bitmap = abstractC4083s.get();
        int i3 = i;
        if (i == Integer.MIN_VALUE) {
            i3 = bitmap.getWidth();
        }
        int i4 = i2;
        if (i2 == Integer.MIN_VALUE) {
            i4 = bitmap.getHeight();
        }
        Bitmap mo22904c = mo22904c(m23692f, bitmap, i3, i4);
        if (!bitmap.equals(mo22904c)) {
            abstractC4083s = C4297e.m22944f(mo22904c, m23692f);
        }
        return abstractC4083s;
    }

    /* renamed from: c */
    protected abstract Bitmap mo22904c(AbstractC4096e abstractC4096e, Bitmap bitmap, int i, int i2);
}
