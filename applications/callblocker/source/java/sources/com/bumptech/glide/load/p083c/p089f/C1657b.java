package com.bumptech.glide.load.p083c.p089f;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.p083c.p084a.C1611r;
import com.bumptech.glide.p077h.C1456i;
/* renamed from: com.bumptech.glide.load.c.f.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/f/b.class */
public class C1657b implements AbstractC1660e<Bitmap, BitmapDrawable> {

    /* renamed from: a */
    private final Resources f5085a;

    public C1657b(Resources resources) {
        this.f5085a = (Resources) C1456i.m16989a(resources);
    }

    @Override // com.bumptech.glide.load.p083c.p089f.AbstractC1660e
    /* renamed from: a */
    public AbstractC1771t<BitmapDrawable> mo16613a(AbstractC1771t<Bitmap> abstractC1771t, C1781h c1781h) {
        return C1611r.m16740a(this.f5085a, abstractC1771t);
    }
}
