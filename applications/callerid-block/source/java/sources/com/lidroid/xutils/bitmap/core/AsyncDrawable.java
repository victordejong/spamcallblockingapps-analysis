package com.lidroid.xutils.bitmap.core;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.lidroid.xutils.BitmapUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/bitmap/core/AsyncDrawable.class */
public class AsyncDrawable<T extends View> extends Drawable {
    private final Drawable baseDrawable;
    private final WeakReference<BitmapUtils.BitmapLoadTask<T>> bitmapLoadTaskReference;

    public AsyncDrawable(Drawable drawable, BitmapUtils.BitmapLoadTask<T> bitmapLoadTask) {
        if (bitmapLoadTask != null) {
            this.baseDrawable = drawable;
            this.bitmapLoadTaskReference = new WeakReference<>(bitmapLoadTask);
            return;
        }
        throw new IllegalArgumentException("bitmapWorkerTask may not be null");
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.clearColorFilter();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    public BitmapUtils.BitmapLoadTask<T> getBitmapWorkerTask() {
        return this.bitmapLoadTaskReference.get();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? 0 : drawable.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? null : drawable.getConstantState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? null : drawable.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? 0 : drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? 0 : drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? 0 : drawable.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? 0 : drawable.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? 127 : drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Drawable drawable = this.baseDrawable;
        return drawable != null && drawable.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? null : drawable.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? null : drawable.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.baseDrawable;
        return drawable != null && drawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.baseDrawable;
        return drawable == null ? null : drawable.mutate();
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.setBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(Rect rect) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.setChangingConfigurations(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, PorterDuff.Mode mode) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.setColorFilter(i, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.setDither(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.setFilterBitmap(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        Drawable drawable = this.baseDrawable;
        return drawable != null && drawable.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.baseDrawable;
        return drawable != null && drawable.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.baseDrawable;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        }
    }
}
