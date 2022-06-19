package com.bumptech.glide.load.resource.p126e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.bitmap.C3891t;
import com.bumptech.glide.p116g.C3643j;
/* renamed from: com.bumptech.glide.load.resource.e.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/b.class */
public final class C3922b implements AbstractC3925e<Bitmap, BitmapDrawable> {

    /* renamed from: a */
    private final Resources f14351a;

    public C3922b(Context context) {
        this(context.getResources());
    }

    public C3922b(Resources resources) {
        this.f14351a = (Resources) C3643j.m37588a(resources, "Argument must not be null");
    }

    @Deprecated
    public C3922b(Resources resources, AbstractC3712e abstractC3712e) {
        this(resources);
    }

    @Override // com.bumptech.glide.load.resource.p126e.AbstractC3925e
    /* renamed from: a */
    public final AbstractC3811u<BitmapDrawable> mo37189a(AbstractC3811u<Bitmap> abstractC3811u, C3822h c3822h) {
        return C3891t.m37253a(this.f14351a, abstractC3811u);
    }
}
