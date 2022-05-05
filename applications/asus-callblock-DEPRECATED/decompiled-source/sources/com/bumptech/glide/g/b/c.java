package com.bumptech.glide.g.b;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/c.class */
public final class c extends e<Drawable> {
    public c(ImageView imageView) {
        super(imageView);
    }

    @Override // com.bumptech.glide.g.b.e
    protected final /* synthetic */ void a(Drawable drawable) {
        ((ImageView) this.d).setImageDrawable(drawable);
    }
}
