package com.rey.material.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.p001v4.graphics.drawable.DrawableCompat;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/PaddingDrawable.class */
public class PaddingDrawable extends Drawable implements Drawable.Callback {
    private Drawable mDrawable;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;

    public PaddingDrawable(Drawable drawable) {
        setWrappedDrawable(drawable);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mDrawable != null) {
            this.mDrawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.mDrawable != null ? this.mDrawable.getChangingConfigurations() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.mDrawable != null ? this.mDrawable.getCurrent() : null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (this.mDrawable != null ? this.mDrawable.getIntrinsicHeight() : 0) + this.mPaddingTop + this.mPaddingBottom;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (this.mDrawable != null ? this.mDrawable.getIntrinsicWidth() : 0) + this.mPaddingLeft + this.mPaddingRight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return (this.mDrawable != null ? this.mDrawable.getMinimumHeight() : 0) + this.mPaddingTop + this.mPaddingBottom;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return (this.mDrawable != null ? this.mDrawable.getMinimumWidth() : 0) + this.mPaddingLeft + this.mPaddingRight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mDrawable != null ? this.mDrawable.getOpacity() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean z = this.mDrawable != null && this.mDrawable.getPadding(rect);
        if (z) {
            rect.left += this.mPaddingLeft;
            rect.top += this.mPaddingTop;
            rect.right += this.mPaddingRight;
            rect.bottom += this.mPaddingBottom;
        } else {
            rect.set(this.mPaddingLeft, this.mPaddingTop, this.mPaddingRight, this.mPaddingBottom);
            z = (this.mPaddingLeft == 0 && this.mPaddingTop == 0 && this.mPaddingRight == 0 && this.mPaddingBottom == 0) ? false : true;
        }
        return z;
    }

    public int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    public int getPaddingLeft() {
        return this.mPaddingLeft;
    }

    public int getPaddingRight() {
        return this.mPaddingRight;
    }

    public int getPaddingTop() {
        return this.mPaddingTop;
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.mDrawable != null ? this.mDrawable.getState() : null;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.mDrawable != null ? this.mDrawable.getTransparentRegion() : null;
    }

    public Drawable getWrappedDrawable() {
        return this.mDrawable;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mDrawable != null && DrawableCompat.isAutoMirrored(this.mDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mDrawable != null && this.mDrawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        if (this.mDrawable != null) {
            DrawableCompat.jumpToCurrentState(this.mDrawable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.mDrawable != null) {
            this.mDrawable.setBounds(rect.left + this.mPaddingLeft, rect.top + this.mPaddingTop, rect.right - this.mPaddingRight, rect.bottom - this.mPaddingBottom);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.mDrawable != null && this.mDrawable.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.mDrawable != null) {
            this.mDrawable.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.mDrawable != null) {
            DrawableCompat.setAutoMirrored(this.mDrawable, z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        if (this.mDrawable != null) {
            this.mDrawable.setChangingConfigurations(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mDrawable != null) {
            this.mDrawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.mDrawable != null) {
            this.mDrawable.setDither(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        if (this.mDrawable != null) {
            this.mDrawable.setFilterBitmap(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        if (this.mDrawable != null) {
            DrawableCompat.setHotspot(this.mDrawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.mDrawable != null) {
            DrawableCompat.setHotspotBounds(this.mDrawable, i, i2, i3, i4);
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.mDrawable != null && this.mDrawable.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        if (this.mDrawable != null) {
            DrawableCompat.setTint(this.mDrawable, i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.mDrawable != null) {
            DrawableCompat.setTintList(this.mDrawable, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.mDrawable != null) {
            DrawableCompat.setTintMode(this.mDrawable, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || (this.mDrawable != null && this.mDrawable.setVisible(z, z2));
    }

    public void setWrappedDrawable(Drawable drawable) {
        if (this.mDrawable != null) {
            this.mDrawable.setCallback(null);
        }
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        onBoundsChange(getBounds());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
