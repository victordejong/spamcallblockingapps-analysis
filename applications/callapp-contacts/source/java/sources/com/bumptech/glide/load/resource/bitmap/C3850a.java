package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.p116g.C3643j;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.resource.bitmap.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/a.class */
public final class C3850a<DataType> implements AbstractC3824j<DataType, BitmapDrawable> {

    /* renamed from: a */
    private final AbstractC3824j<DataType, Bitmap> f14203a;

    /* renamed from: b */
    private final Resources f14204b;

    public C3850a(Context context, AbstractC3824j<DataType, Bitmap> abstractC3824j) {
        this(context.getResources(), abstractC3824j);
    }

    @Deprecated
    public C3850a(Resources resources, AbstractC3712e abstractC3712e, AbstractC3824j<DataType, Bitmap> abstractC3824j) {
        this(resources, abstractC3824j);
    }

    public C3850a(Resources resources, AbstractC3824j<DataType, Bitmap> abstractC3824j) {
        this.f14204b = (Resources) C3643j.m37588a(resources, "Argument must not be null");
        this.f14203a = (AbstractC3824j) C3643j.m37588a(abstractC3824j, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final AbstractC3811u<BitmapDrawable> mo37196a(DataType datatype, int i, int i2, C3822h c3822h) throws IOException {
        return C3891t.m37253a(this.f14204b, this.f14203a.mo37196a(datatype, i, i2, c3822h));
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final boolean mo37195a(DataType datatype, C3822h c3822h) throws IOException {
        return this.f14203a.mo37195a(datatype, c3822h);
    }
}
