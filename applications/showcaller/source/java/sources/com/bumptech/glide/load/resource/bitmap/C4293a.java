package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4382j;
/* renamed from: com.bumptech.glide.load.resource.bitmap.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/a.class */
public class C4293a<DataType> implements AbstractC4146f<DataType, BitmapDrawable> {

    /* renamed from: a */
    private final AbstractC4146f<DataType, Bitmap> f13240a;

    /* renamed from: b */
    private final Resources f13241b;

    public C4293a(Resources resources, AbstractC4146f<DataType, Bitmap> abstractC4146f) {
        this.f13241b = (Resources) C4382j.m22719d(resources);
        this.f13240a = (AbstractC4146f) C4382j.m22719d(abstractC4146f);
    }

    @Override // com.bumptech.glide.load.AbstractC4146f
    /* renamed from: a */
    public boolean mo22862a(DataType datatype, C4032e c4032e) {
        return this.f13240a.mo22862a(datatype, c4032e);
    }

    @Override // com.bumptech.glide.load.AbstractC4146f
    /* renamed from: b */
    public AbstractC4083s<BitmapDrawable> mo22861b(DataType datatype, int i, int i2, C4032e c4032e) {
        return C4317t.m22886f(this.f13241b, this.f13240a.mo22861b(datatype, i, i2, c4032e));
    }
}
