package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.AbstractC4078o;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.C4383k;
/* renamed from: com.bumptech.glide.load.resource.bitmap.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/e.class */
public class C4297e implements AbstractC4083s<Bitmap>, AbstractC4078o {

    /* renamed from: d */
    private final Bitmap f13248d;

    /* renamed from: e */
    private final AbstractC4096e f13249e;

    public C4297e(Bitmap bitmap, AbstractC4096e abstractC4096e) {
        this.f13248d = (Bitmap) C4382j.m22718e(bitmap, "Bitmap must not be null");
        this.f13249e = (AbstractC4096e) C4382j.m22718e(abstractC4096e, "BitmapPool must not be null");
    }

    /* renamed from: f */
    public static C4297e m22944f(Bitmap bitmap, AbstractC4096e abstractC4096e) {
        if (bitmap == null) {
            return null;
        }
        return new C4297e(bitmap, abstractC4096e);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: a */
    public void mo22858a() {
        this.f13249e.mo22911c(this.f13248d);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4078o
    /* renamed from: b */
    public void mo22888b() {
        this.f13248d.prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: c */
    public int mo22856c() {
        return C4383k.m22711g(this.f13248d);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: d */
    public Class<Bitmap> mo22855d() {
        return Bitmap.class;
    }

    /* renamed from: e */
    public Bitmap get() {
        return this.f13248d;
    }
}
