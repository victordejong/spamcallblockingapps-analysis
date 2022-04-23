package com.bumptech.glide.e.a;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/e.class */
public final class e extends f<Drawable> {
    public e(ImageView imageView) {
        super(imageView);
    }

    @Deprecated
    public e(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    @Override // com.bumptech.glide.e.a.f
    protected final /* synthetic */ void a(Drawable drawable) {
        ((ImageView) this.f7287a).setImageDrawable(drawable);
    }
}
