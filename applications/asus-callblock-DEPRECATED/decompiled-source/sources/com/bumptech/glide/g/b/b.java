package com.bumptech.glide.g.b;

import android.graphics.Bitmap;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/b.class */
public final class b extends e<Bitmap> {
    public b(ImageView imageView) {
        super(imageView);
    }

    @Override // com.bumptech.glide.g.b.e
    protected final /* synthetic */ void a(Bitmap bitmap) {
        ((ImageView) this.d).setImageBitmap(bitmap);
    }
}
