package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/a.class */
public final class a<DataType> implements j<DataType, BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final j<DataType, Bitmap> f7642a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f7643b;

    public a(Context context, j<DataType, Bitmap> jVar) {
        this(context.getResources(), jVar);
    }

    @Deprecated
    public a(Resources resources, e eVar, j<DataType, Bitmap> jVar) {
        this(resources, jVar);
    }

    public a(Resources resources, j<DataType, Bitmap> jVar) {
        this.f7643b = (Resources) com.bumptech.glide.g.j.a(resources, "Argument must not be null");
        this.f7642a = (j) com.bumptech.glide.g.j.a(jVar, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.j
    public final u<BitmapDrawable> a(DataType datatype, int i, int i2, h hVar) throws IOException {
        return t.a(this.f7643b, this.f7642a.a(datatype, i, i2, hVar));
    }

    @Override // com.bumptech.glide.load.j
    public final boolean a(DataType datatype, h hVar) throws IOException {
        return this.f7642a.a(datatype, hVar);
    }
}
