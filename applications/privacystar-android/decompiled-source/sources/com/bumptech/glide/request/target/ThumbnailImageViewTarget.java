package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.view.ViewGroup;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/target/ThumbnailImageViewTarget.class */
public abstract class ThumbnailImageViewTarget<T> extends ImageViewTarget<T> {
    public ThumbnailImageViewTarget(ImageView imageView) {
        super(imageView);
    }

    @Deprecated
    public ThumbnailImageViewTarget(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    protected abstract Drawable getDrawable(T t);

    @Override // com.bumptech.glide.request.target.ImageViewTarget
    protected void setResource(@Nullable T t) {
        ViewGroup.LayoutParams layoutParams = ((ImageView) this.view).getLayoutParams();
        Drawable drawable = getDrawable(t);
        Drawable drawable2 = drawable;
        if (layoutParams != null) {
            drawable2 = drawable;
            if (layoutParams.width > 0) {
                drawable2 = drawable;
                if (layoutParams.height > 0) {
                    drawable2 = new FixedSizeDrawable(drawable, layoutParams.width, layoutParams.height);
                }
            }
        }
        ((ImageView) this.view).setImageDrawable(drawable2);
    }
}
