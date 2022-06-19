package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.AbstractC4078o;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4382j;
/* renamed from: com.bumptech.glide.load.resource.bitmap.t */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/t.class */
public final class C4317t implements AbstractC4083s<BitmapDrawable>, AbstractC4078o {

    /* renamed from: d */
    private final Resources f13291d;

    /* renamed from: e */
    private final AbstractC4083s<Bitmap> f13292e;

    private C4317t(Resources resources, AbstractC4083s<Bitmap> abstractC4083s) {
        this.f13291d = (Resources) C4382j.m22719d(resources);
        this.f13292e = (AbstractC4083s) C4382j.m22719d(abstractC4083s);
    }

    /* renamed from: f */
    public static AbstractC4083s<BitmapDrawable> m22886f(Resources resources, AbstractC4083s<Bitmap> abstractC4083s) {
        if (abstractC4083s == null) {
            return null;
        }
        return new C4317t(resources, abstractC4083s);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: a */
    public void mo22858a() {
        this.f13292e.mo22858a();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4078o
    /* renamed from: b */
    public void mo22888b() {
        AbstractC4083s<Bitmap> abstractC4083s = this.f13292e;
        if (abstractC4083s instanceof AbstractC4078o) {
            ((AbstractC4078o) abstractC4083s).mo22888b();
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: c */
    public int mo22856c() {
        return this.f13292e.mo22856c();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: d */
    public Class<BitmapDrawable> mo22855d() {
        return BitmapDrawable.class;
    }

    /* renamed from: e */
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f13291d, this.f13292e.get());
    }
}
