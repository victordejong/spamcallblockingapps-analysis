package com.bumptech.glide.load.engine.p209x;

import android.graphics.Bitmap;
/* renamed from: com.bumptech.glide.load.engine.x.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/f.class */
public class C4097f implements AbstractC4096e {
    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: a */
    public void mo23260a(int i) {
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: b */
    public void mo23259b() {
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: c */
    public void mo22911c(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: d */
    public Bitmap mo23258d(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4096e
    /* renamed from: e */
    public Bitmap mo23257e(int i, int i2, Bitmap.Config config) {
        return mo23258d(i, i2, config);
    }
}
