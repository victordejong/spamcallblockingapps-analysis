package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/ImageViewAction.class */
public class ImageViewAction extends Action<ImageView> {
    public Callback callback;

    public ImageViewAction(Picasso picasso, ImageView imageView, Request request, int i, int i2, int i3, Drawable drawable, String str, Object obj, Callback callback, boolean z) {
        super(picasso, imageView, request, i, i2, i3, drawable, str, obj, z);
        this.callback = callback;
    }

    @Override // com.squareup.picasso.Action
    public void cancel() {
        super.cancel();
        if (this.callback != null) {
            this.callback = null;
        }
    }

    @Override // com.squareup.picasso.Action
    public void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap != null) {
            ImageView imageView = (ImageView) this.target.get();
            if (imageView != null) {
                Picasso picasso = this.picasso;
                PicassoDrawable.setBitmap(imageView, picasso.context, bitmap, loadedFrom, this.noFade, picasso.indicatorsEnabled);
                Callback callback = this.callback;
                if (callback != null) {
                    callback.onSuccess();
                    return;
                }
                return;
            }
            return;
        }
        throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
    }

    @Override // com.squareup.picasso.Action
    public void error(Exception exc) {
        ImageView imageView = (ImageView) this.target.get();
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).stop();
            }
            int i = this.errorResId;
            if (i != 0) {
                imageView.setImageResource(i);
            } else {
                Drawable drawable2 = this.errorDrawable;
                if (drawable2 != null) {
                    imageView.setImageDrawable(drawable2);
                }
            }
            Callback callback = this.callback;
            if (callback != null) {
                callback.onError(exc);
            }
        }
    }
}
