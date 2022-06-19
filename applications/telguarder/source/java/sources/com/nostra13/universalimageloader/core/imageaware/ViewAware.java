package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.utils.C1836L;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/imageaware/ViewAware.class */
public abstract class ViewAware implements ImageAware {
    public static final String WARN_CANT_SET_BITMAP = "Can't set a bitmap into view. You should call ImageLoader on UI thread for it.";
    public static final String WARN_CANT_SET_DRAWABLE = "Can't set a drawable into view. You should call ImageLoader on UI thread for it.";
    protected boolean checkActualViewSize;
    protected Reference<View> viewRef;

    public ViewAware(View view) {
        this(view, true);
    }

    public ViewAware(View view, boolean z) {
        if (view != null) {
            this.viewRef = new WeakReference(view);
            this.checkActualViewSize = z;
            return;
        }
        throw new IllegalArgumentException("view must not be null");
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getHeight() {
        View view = this.viewRef.get();
        int i = 0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            int i2 = 0;
            if (this.checkActualViewSize) {
                i2 = 0;
                if (layoutParams != null) {
                    i2 = 0;
                    if (layoutParams.height != -2) {
                        i2 = view.getHeight();
                    }
                }
            }
            i = i2;
            if (i2 <= 0) {
                i = i2;
                if (layoutParams != null) {
                    i = layoutParams.height;
                }
            }
        }
        return i;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getId() {
        View view = this.viewRef.get();
        return view == null ? super.hashCode() : view.hashCode();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public ViewScaleType getScaleType() {
        return ViewScaleType.CROP;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getWidth() {
        View view = this.viewRef.get();
        int i = 0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            int i2 = 0;
            if (this.checkActualViewSize) {
                i2 = 0;
                if (layoutParams != null) {
                    i2 = 0;
                    if (layoutParams.width != -2) {
                        i2 = view.getWidth();
                    }
                }
            }
            i = i2;
            if (i2 <= 0) {
                i = i2;
                if (layoutParams != null) {
                    i = layoutParams.width;
                }
            }
        }
        return i;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public View getWrappedView() {
        return this.viewRef.get();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public boolean isCollected() {
        return this.viewRef.get() == null;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public boolean setImageBitmap(Bitmap bitmap) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            C1836L.m1109w(WARN_CANT_SET_BITMAP, new Object[0]);
            return false;
        }
        View view = this.viewRef.get();
        if (view == null) {
            return false;
        }
        setImageBitmapInto(bitmap, view);
        return true;
    }

    protected abstract void setImageBitmapInto(Bitmap bitmap, View view);

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public boolean setImageDrawable(Drawable drawable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            C1836L.m1109w(WARN_CANT_SET_DRAWABLE, new Object[0]);
            return false;
        }
        View view = this.viewRef.get();
        if (view == null) {
            return false;
        }
        setImageDrawableInto(drawable, view);
        return true;
    }

    protected abstract void setImageDrawableInto(Drawable drawable, View view);
}
