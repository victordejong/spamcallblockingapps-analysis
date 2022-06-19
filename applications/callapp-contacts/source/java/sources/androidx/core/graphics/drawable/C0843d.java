package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
/* renamed from: androidx.core.graphics.drawable.d */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/d.class */
public class C0843d extends Drawable implements Drawable.Callback, AbstractC0841b, AbstractC0842c {

    /* renamed from: a */
    static final PorterDuff.Mode f3587a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    C0845f f3588b;

    /* renamed from: c */
    Drawable f3589c;

    /* renamed from: d */
    private int f3590d;

    /* renamed from: e */
    private PorterDuff.Mode f3591e;

    /* renamed from: f */
    private boolean f3592f;

    /* renamed from: g */
    private boolean f3593g;

    public C0843d(Drawable drawable) {
        this.f3588b = m44339c();
        mo44341a(drawable);
    }

    public C0843d(C0845f c0845f, Resources resources) {
        this.f3588b = c0845f;
        if (c0845f == null || c0845f.f3596b == null) {
            return;
        }
        mo44341a(this.f3588b.f3596b.newDrawable(resources));
    }

    /* renamed from: a */
    private boolean m44340a(int[] iArr) {
        if (!mo44338b()) {
            return false;
        }
        ColorStateList colorStateList = this.f3588b.f3597c;
        PorterDuff.Mode mode = this.f3588b.f3598d;
        if (colorStateList == null || mode == null) {
            this.f3592f = false;
            clearColorFilter();
            return false;
        }
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f3592f && colorForState == this.f3590d && mode == this.f3591e) {
            return false;
        }
        setColorFilter(colorForState, mode);
        this.f3590d = colorForState;
        this.f3591e = mode;
        this.f3592f = true;
        return true;
    }

    /* renamed from: c */
    private C0845f m44339c() {
        return new C0845f(this.f3588b);
    }

    @Override // androidx.core.graphics.drawable.AbstractC0842c
    /* renamed from: a */
    public final Drawable mo44342a() {
        return this.f3589c;
    }

    @Override // androidx.core.graphics.drawable.AbstractC0842c
    /* renamed from: a */
    public final void mo44341a(Drawable drawable) {
        Drawable drawable2 = this.f3589c;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3589c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C0845f c0845f = this.f3588b;
            if (c0845f != null) {
                c0845f.f3596b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* renamed from: b */
    protected boolean mo44338b() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f3589c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C0845f c0845f = this.f3588b;
        return changingConfigurations | (c0845f != null ? c0845f.getChangingConfigurations() : 0) | this.f3589c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C0845f c0845f = this.f3588b;
        if (c0845f != null) {
            if (!(c0845f.f3596b != null)) {
                return null;
            }
            this.f3588b.f3595a = getChangingConfigurations();
            return this.f3588b;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f3589c.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3589c.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3589c.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f3589c.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f3589c.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f3589c.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f3589c.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f3589c.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f3589c.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f3589c.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0845f c0845f;
        ColorStateList colorStateList = (!mo44338b() || (c0845f = this.f3588b) == null) ? null : c0845f.f3597c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f3589c.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f3589c.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3593g && super.mutate() == this) {
            this.f3588b = m44339c();
            Drawable drawable = this.f3589c;
            if (drawable != null) {
                drawable.mutate();
            }
            C0845f c0845f = this.f3588b;
            if (c0845f != null) {
                Drawable drawable2 = this.f3589c;
                c0845f.f3596b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f3593g = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3589c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f3589c.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3589c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f3589c.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f3589c.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3589c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f3589c.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f3589c.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m44340a(iArr) || this.f3589c.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public void setTintList(ColorStateList colorStateList) {
        this.f3588b.f3597c = colorStateList;
        m44340a(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f3588b.f3598d = mode;
        m44340a(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f3589c.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
