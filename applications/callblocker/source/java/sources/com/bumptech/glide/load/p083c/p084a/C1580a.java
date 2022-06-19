package com.bumptech.glide.load.p083c.p084a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.p077h.C1456i;
/* renamed from: com.bumptech.glide.load.c.a.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/a.class */
public class C1580a<DataType> implements AbstractC1782i<DataType, BitmapDrawable> {

    /* renamed from: a */
    private final AbstractC1782i<DataType, Bitmap> f4950a;

    /* renamed from: b */
    private final Resources f4951b;

    public C1580a(Resources resources, AbstractC1782i<DataType, Bitmap> abstractC1782i) {
        this.f4951b = (Resources) C1456i.m16989a(resources);
        this.f4950a = (AbstractC1782i) C1456i.m16989a(abstractC1782i);
    }

    @Override // com.bumptech.glide.load.AbstractC1782i
    /* renamed from: a */
    public AbstractC1771t<BitmapDrawable> mo16319a(DataType datatype, int i, int i2, C1781h c1781h) {
        return C1611r.m16740a(this.f4951b, this.f4950a.mo16319a(datatype, i, i2, c1781h));
    }

    @Override // com.bumptech.glide.load.AbstractC1782i
    /* renamed from: a */
    public boolean mo16318a(DataType datatype, C1781h c1781h) {
        return this.f4950a.mo16318a(datatype, c1781h);
    }
}
