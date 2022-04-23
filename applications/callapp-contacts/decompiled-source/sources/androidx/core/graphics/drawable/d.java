package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/d.class */
public class d extends Drawable implements Drawable.Callback, b, c {

    /* renamed from: a  reason: collision with root package name */
    static final PorterDuff.Mode f1913a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    f f1914b;

    /* renamed from: c  reason: collision with root package name */
    Drawable f1915c;

    /* renamed from: d  reason: collision with root package name */
    private int f1916d;
    private PorterDuff.Mode e;
    private boolean f;
    private boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Drawable drawable) {
        this.f1914b = c();
        a(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(f fVar, Resources resources) {
        this.f1914b = fVar;
        if (fVar != null && fVar.f1919b != null) {
            a(this.f1914b.f1919b.newDrawable(resources));
        }
    }

    private boolean a(int[] iArr) {
        if (!b()) {
            return false;
        }
        ColorStateList colorStateList = this.f1914b.f1920c;
        PorterDuff.Mode mode = this.f1914b.f1921d;
        if (colorStateList == null || mode == null) {
            this.f = false;
            clearColorFilter();
            return false;
        }
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f && colorForState == this.f1916d && mode == this.e) {
            return false;
        }
        setColorFilter(colorForState, mode);
        this.f1916d = colorForState;
        this.e = mode;
        this.f = true;
        return true;
    }

    private f c() {
        return new f(this.f1914b);
    }

    @Override // androidx.core.graphics.drawable.c
    public final Drawable a() {
        return this.f1915c;
    }

    @Override // androidx.core.graphics.drawable.c
    public final void a(Drawable drawable) {
        Drawable drawable2 = this.f1915c;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1915c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            f fVar = this.f1914b;
            if (fVar != null) {
                fVar.f1919b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    protected boolean b() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f1915c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        f fVar = this.f1914b;
        return changingConfigurations | (fVar != null ? fVar.getChangingConfigurations() : 0) | this.f1915c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        f fVar = this.f1914b;
        if (fVar == null) {
            return null;
        }
        if (!(fVar.f1919b != null)) {
            return null;
        }
        this.f1914b.f1918a = getChangingConfigurations();
        return this.f1914b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1915c.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1915c.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1915c.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f1915c.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f1915c.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1915c.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f1915c.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f1915c.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f1915c.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1915c.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        f fVar;
        ColorStateList colorStateList = (!b() || (fVar = this.f1914b) == null) ? null : fVar.f1920c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f1915c.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f1915c.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.g && super.mutate() == this) {
            this.f1914b = c();
            Drawable drawable = this.f1915c;
            if (drawable != null) {
                drawable.mutate();
            }
            f fVar = this.f1914b;
            if (fVar != null) {
                Drawable drawable2 = this.f1915c;
                fVar.f1919b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.g = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1915c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f1915c.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1915c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f1915c.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f1915c.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1915c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f1915c.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f1915c.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return a(iArr) || this.f1915c.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.f1914b.f1920c = colorStateList;
        a(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1914b.f1921d = mode;
        a(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f1915c.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
