package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.AbstractC3806q;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.p116g.C3643j;
/* renamed from: com.bumptech.glide.load.resource.bitmap.t */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/t.class */
public final class C3891t implements AbstractC3806q, AbstractC3811u<BitmapDrawable> {

    /* renamed from: a */
    private final Resources f14275a;

    /* renamed from: b */
    private final AbstractC3811u<Bitmap> f14276b;

    private C3891t(Resources resources, AbstractC3811u<Bitmap> abstractC3811u) {
        this.f14275a = (Resources) C3643j.m37588a(resources, "Argument must not be null");
        this.f14276b = (AbstractC3811u) C3643j.m37588a(abstractC3811u, "Argument must not be null");
    }

    /* renamed from: a */
    public static AbstractC3811u<BitmapDrawable> m37253a(Resources resources, AbstractC3811u<Bitmap> abstractC3811u) {
        if (abstractC3811u == null) {
            return null;
        }
        return new C3891t(resources, abstractC3811u);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: a */
    public final Class<BitmapDrawable> mo37213a() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: b */
    public final /* synthetic */ BitmapDrawable mo37235b() {
        return new BitmapDrawable(this.f14275a, this.f14276b.mo37235b());
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: c */
    public final int mo37212c() {
        return this.f14276b.mo37212c();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: d */
    public final void mo37211d() {
        this.f14276b.mo37211d();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3806q
    /* renamed from: e */
    public final void mo37210e() {
        AbstractC3811u<Bitmap> abstractC3811u = this.f14276b;
        if (abstractC3811u instanceof AbstractC3806q) {
            ((AbstractC3806q) abstractC3811u).mo37210e();
        }
    }
}
