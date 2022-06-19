package com.bumptech.glide.load.p083c.p084a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.AbstractC1766p;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.p077h.C1456i;
/* renamed from: com.bumptech.glide.load.c.a.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/r.class */
public final class C1611r implements AbstractC1766p, AbstractC1771t<BitmapDrawable> {

    /* renamed from: a */
    private final Resources f5000a;

    /* renamed from: b */
    private final AbstractC1771t<Bitmap> f5001b;

    private C1611r(Resources resources, AbstractC1771t<Bitmap> abstractC1771t) {
        this.f5000a = (Resources) C1456i.m16989a(resources);
        this.f5001b = (AbstractC1771t) C1456i.m16989a(abstractC1771t);
    }

    /* renamed from: a */
    public static AbstractC1771t<BitmapDrawable> m16740a(Resources resources, AbstractC1771t<Bitmap> abstractC1771t) {
        return abstractC1771t == null ? null : new C1611r(resources, abstractC1771t);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1766p
    /* renamed from: a */
    public void mo16362a() {
        if (this.f5001b instanceof AbstractC1766p) {
            ((AbstractC1766p) this.f5001b).mo16362a();
        }
    }

    /* renamed from: b */
    public BitmapDrawable mo16347d() {
        return new BitmapDrawable(this.f5000a, this.f5001b.mo16347d());
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: c */
    public Class<BitmapDrawable> mo16348c() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: e */
    public int mo16346e() {
        return this.f5001b.mo16346e();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: f */
    public void mo16345f() {
        this.f5001b.mo16345f();
    }
}
