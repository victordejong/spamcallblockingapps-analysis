package com.bumptech.glide.load.p214j.p219h;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.resource.bitmap.C4317t;
import com.bumptech.glide.p223p.C4382j;
/* renamed from: com.bumptech.glide.load.j.h.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/h/b.class */
public class C4269b implements AbstractC4272e<Bitmap, BitmapDrawable> {

    /* renamed from: a */
    private final Resources f13198a;

    public C4269b(Resources resources) {
        this.f13198a = (Resources) C4382j.m22719d(resources);
    }

    @Override // com.bumptech.glide.load.p214j.p219h.AbstractC4272e
    /* renamed from: a */
    public AbstractC4083s<BitmapDrawable> mo22989a(AbstractC4083s<Bitmap> abstractC4083s, C4032e c4032e) {
        return C4317t.m22886f(this.f13198a, abstractC4083s);
    }
}
