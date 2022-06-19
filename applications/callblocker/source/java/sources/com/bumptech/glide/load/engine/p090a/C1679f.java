package com.bumptech.glide.load.engine.p090a;

import android.graphics.Bitmap;
/* renamed from: com.bumptech.glide.load.engine.a.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/f.class */
public class C1679f implements AbstractC1678e {
    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: a */
    public Bitmap mo16543a(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: a */
    public void mo16545a() {
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: a */
    public void mo16544a(int i) {
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: a */
    public void mo16540a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1678e
    /* renamed from: b */
    public Bitmap mo16538b(int i, int i2, Bitmap.Config config) {
        return mo16543a(i, i2, config);
    }
}
