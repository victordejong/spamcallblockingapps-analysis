package org.xutils.image;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:org/xutils/image/AsyncDrawable.class */
public final class AsyncDrawable extends Drawable {

    /* renamed from: a */
    private final WeakReference<C9672a> f40791a;

    /* renamed from: b */
    private Drawable f40792b;

    public AsyncDrawable(C9672a c9672a, Drawable drawable) {
        if (c9672a != null) {
            this.f40792b = drawable;
            while (true) {
                Drawable drawable2 = this.f40792b;
                if (!(drawable2 instanceof AsyncDrawable)) {
                    this.f40791a = new WeakReference<>(c9672a);
                    return;
                }
                this.f40792b = ((AsyncDrawable) drawable2).f40792b;
            }
        } else {
            throw new IllegalArgumentException("imageLoader may not be null");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.clearColorFilter();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    protected void finalize() {
        super.finalize();
        C9672a imageLoader = getImageLoader();
        if (imageLoader != null) {
            imageLoader.cancel();
        }
    }

    public Drawable getBaseDrawable() {
        return this.f40792b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f40792b;
        return drawable == null ? 0 : drawable.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f40792b;
        return drawable == null ? null : drawable.getConstantState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        Drawable drawable = this.f40792b;
        return drawable == null ? null : drawable.getCurrent();
    }

    public C9672a getImageLoader() {
        return this.f40791a.get();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f40792b;
        return drawable == null ? 0 : drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f40792b;
        return drawable == null ? 0 : drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        Drawable drawable = this.f40792b;
        return drawable == null ? 0 : drawable.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        Drawable drawable = this.f40792b;
        return drawable == null ? 0 : drawable.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f40792b;
        return drawable == null ? -3 : drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Drawable drawable = this.f40792b;
        return drawable != null && drawable.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        Drawable drawable = this.f40792b;
        return drawable == null ? null : drawable.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Drawable drawable = this.f40792b;
        return drawable == null ? null : drawable.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f40792b;
        return drawable != null && drawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f40792b;
        return drawable == null ? null : drawable.mutate();
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
    }

    public void setBaseDrawable(Drawable drawable) {
        this.f40792b = drawable;
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.setBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(Rect rect) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.setChangingConfigurations(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, PorterDuff.Mode mode) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.setColorFilter(i, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.setDither(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.setFilterBitmap(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        Drawable drawable = this.f40792b;
        return drawable != null && drawable.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f40792b;
        return drawable != null && drawable.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f40792b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        }
    }
}
