package com.bumptech.glide.load.p083c.p084a;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.p077h.C1457j;
/* renamed from: com.bumptech.glide.load.c.a.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/e.class */
public abstract class AbstractC1584e implements AbstractC1784k<Bitmap> {
    /* renamed from: a */
    protected abstract Bitmap mo16744a(AbstractC1678e abstractC1678e, Bitmap bitmap, int i, int i2);

    @Override // com.bumptech.glide.load.AbstractC1784k
    /* renamed from: a */
    public final AbstractC1771t<Bitmap> mo16316a(Context context, AbstractC1771t<Bitmap> abstractC1771t, int i, int i2) {
        if (!C1457j.m16980a(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        AbstractC1678e m17311a = ComponentCallbacks2C1361c.m17308a(context).m17311a();
        Bitmap mo16347d = abstractC1771t.mo16347d();
        int i3 = i;
        if (i == Integer.MIN_VALUE) {
            i3 = mo16347d.getWidth();
        }
        int i4 = i2;
        if (i2 == Integer.MIN_VALUE) {
            i4 = mo16347d.getHeight();
        }
        Bitmap mo16744a = mo16744a(m17311a, mo16347d, i3, i4);
        if (!mo16347d.equals(mo16744a)) {
            abstractC1771t = C1583d.m16797a(mo16744a, m17311a);
        }
        return abstractC1771t;
    }
}
