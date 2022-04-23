package com.bumptech.glide.e.a;

import android.graphics.Bitmap;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/b.class */
public final class b extends f<Bitmap> {
    public b(ImageView imageView) {
        super(imageView);
    }

    @Deprecated
    public b(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    @Override // com.bumptech.glide.e.a.f
    protected final /* synthetic */ void a(Bitmap bitmap) {
        ((ImageView) this.f7287a).setImageBitmap(bitmap);
    }
}
