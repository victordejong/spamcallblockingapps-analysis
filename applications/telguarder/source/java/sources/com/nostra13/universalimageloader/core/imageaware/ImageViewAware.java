package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.utils.C1836L;
import java.lang.reflect.Field;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/imageaware/ImageViewAware.class */
public class ImageViewAware extends ViewAware {
    public ImageViewAware(ImageView imageView) {
        super(imageView);
    }

    public ImageViewAware(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    private static int getImageViewFieldValue(Object obj, String str) {
        int i;
        try {
            Field declaredField = ImageView.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            int intValue = ((Integer) declaredField.get(obj)).intValue();
            i = 0;
            if (intValue > 0) {
                i = 0;
                if (intValue < Integer.MAX_VALUE) {
                    i = intValue;
                }
            }
        } catch (Exception e) {
            C1836L.m1112e(e);
            i = 0;
        }
        return i;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getHeight() {
        int height = super.getHeight();
        int i = height;
        if (height <= 0) {
            ImageView imageView = (ImageView) this.viewRef.get();
            i = height;
            if (imageView != null) {
                i = getImageViewFieldValue(imageView, "mMaxHeight");
            }
        }
        return i;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public ViewScaleType getScaleType() {
        ImageView imageView = (ImageView) this.viewRef.get();
        return imageView != null ? ViewScaleType.fromImageView(imageView) : super.getScaleType();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getWidth() {
        int width = super.getWidth();
        int i = width;
        if (width <= 0) {
            ImageView imageView = (ImageView) this.viewRef.get();
            i = width;
            if (imageView != null) {
                i = getImageViewFieldValue(imageView, "mMaxWidth");
            }
        }
        return i;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public ImageView getWrappedView() {
        return (ImageView) super.getWrappedView();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware
    protected void setImageBitmapInto(Bitmap bitmap, View view) {
        ((ImageView) view).setImageBitmap(bitmap);
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware
    protected void setImageDrawableInto(Drawable drawable, View view) {
        ((ImageView) view).setImageDrawable(drawable);
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).start();
        }
    }
}
