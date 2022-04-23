package com.bumptech.glide.load.engine.a;

import android.graphics.Bitmap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/f.class */
public class f implements e {
    @Override // com.bumptech.glide.load.engine.a.e
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public final void a() {
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public final void a(int i) {
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public void a(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.bumptech.glide.load.engine.a.e
    public final Bitmap b(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }
}
