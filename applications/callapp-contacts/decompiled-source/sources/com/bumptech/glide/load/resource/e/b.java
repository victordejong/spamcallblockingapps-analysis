package com.bumptech.glide.load.resource.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.bitmap.t;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/b.class */
public final class b implements e<Bitmap, BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f7739a;

    public b(Context context) {
        this(context.getResources());
    }

    public b(Resources resources) {
        this.f7739a = (Resources) j.a(resources, "Argument must not be null");
    }

    @Deprecated
    public b(Resources resources, e eVar) {
        this(resources);
    }

    @Override // com.bumptech.glide.load.resource.e.e
    public final u<BitmapDrawable> a(u<Bitmap> uVar, h hVar) {
        return t.a(this.f7739a, uVar);
    }
}
