package com.rey.material.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.rey.material.C1686R;
import com.rey.material.drawable.LineMorphingDrawable;
import com.rey.material.drawable.ToolbarRippleDrawable;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/NavigationDrawerDrawable.class */
public class NavigationDrawerDrawable extends Drawable implements Drawable.Callback {
    public static final int STATE_ARROW = 1;
    public static final int STATE_DRAWER = 0;
    private LineMorphingDrawable mLineDrawable;
    private ToolbarRippleDrawable mRippleDrawable;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/NavigationDrawerDrawable$Builder.class */
    public static class Builder {
        private LineMorphingDrawable mLineDrawable;
        private ToolbarRippleDrawable mRippleDrawable;

        public Builder() {
        }

        public Builder(Context context, int i) {
            this(context, null, 0, i);
        }

        public Builder(Context context, AttributeSet attributeSet, int i, int i2) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.NavigationDrawerDrawable, i, i2);
            if (obtainStyledAttributes != null) {
                int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.NavigationDrawerDrawable_nd_ripple, 0);
                int resourceId2 = obtainStyledAttributes.getResourceId(C1686R.styleable.NavigationDrawerDrawable_nd_icon, 0);
                if (resourceId > 0) {
                    ripple(new ToolbarRippleDrawable.Builder(context, resourceId).build());
                }
                if (resourceId2 > 0) {
                    line(new LineMorphingDrawable.Builder(context, resourceId2).build());
                }
                obtainStyledAttributes.recycle();
            }
        }

        public NavigationDrawerDrawable build() {
            return new NavigationDrawerDrawable(this.mRippleDrawable, this.mLineDrawable);
        }

        public Builder line(LineMorphingDrawable lineMorphingDrawable) {
            this.mLineDrawable = lineMorphingDrawable;
            return this;
        }

        public Builder ripple(ToolbarRippleDrawable toolbarRippleDrawable) {
            this.mRippleDrawable = toolbarRippleDrawable;
            return this;
        }
    }

    public NavigationDrawerDrawable(ToolbarRippleDrawable toolbarRippleDrawable, LineMorphingDrawable lineMorphingDrawable) {
        this.mRippleDrawable = toolbarRippleDrawable;
        this.mLineDrawable = lineMorphingDrawable;
        this.mRippleDrawable.setCallback(this);
        this.mLineDrawable.setCallback(this);
    }

    public void cancel() {
        if (this.mRippleDrawable != null) {
            this.mRippleDrawable.cancel();
        }
        if (this.mLineDrawable != null) {
            this.mLineDrawable.cancel();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mRippleDrawable.draw(canvas);
        this.mLineDrawable.draw(canvas);
    }

    public float getIconAnimProgress() {
        return this.mLineDrawable.getAnimProgress();
    }

    public int getIconState() {
        return this.mLineDrawable.getLineState();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return this.mRippleDrawable.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mRippleDrawable.setAlpha(i);
        this.mLineDrawable.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        this.mRippleDrawable.setBounds(i, i2, i3, i4);
        this.mLineDrawable.setBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mRippleDrawable.setColorFilter(colorFilter);
        this.mLineDrawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.mRippleDrawable.setDither(z);
        this.mLineDrawable.setDither(z);
    }

    public boolean setIconState(int i, float f) {
        return this.mLineDrawable.setLineState(i, f);
    }

    public void switchIconState(int i, boolean z) {
        this.mLineDrawable.switchLineState(i, z);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
