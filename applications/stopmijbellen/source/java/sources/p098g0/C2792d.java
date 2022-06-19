package p098g0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
/* renamed from: g0.d */
/* loaded from: classes-dex2jar.jar:g0/d.class */
public class C2792d extends Drawable implements Drawable.Callback, AbstractC2791c, AbstractC2790b {

    /* renamed from: g */
    public static final PorterDuff.Mode f9510g = PorterDuff.Mode.SRC_IN;

    /* renamed from: a */
    public int f9511a;

    /* renamed from: b */
    public PorterDuff.Mode f9512b;

    /* renamed from: c */
    public boolean f9513c;

    /* renamed from: d */
    public C2794f f9514d;

    /* renamed from: e */
    public boolean f9515e;

    /* renamed from: f */
    public Drawable f9516f;

    public C2792d(Drawable drawable) {
        this.f9514d = new C2794f(this.f9514d);
        mo3006a(drawable);
    }

    public C2792d(C2794f c2794f, Resources resources) {
        Drawable.ConstantState constantState;
        this.f9514d = c2794f;
        if (c2794f == null || (constantState = c2794f.f9519b) == null) {
            return;
        }
        mo3006a(constantState.newDrawable(resources));
    }

    @Override // p098g0.AbstractC2791c
    /* renamed from: a */
    public final void mo3006a(Drawable drawable) {
        Drawable drawable2 = this.f9516f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f9516f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C2794f c2794f = this.f9514d;
            if (c2794f != null) {
                c2794f.f9519b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // p098g0.AbstractC2791c
    /* renamed from: b */
    public final Drawable mo3005b() {
        return this.f9516f;
    }

    /* renamed from: c */
    public boolean mo3003c() {
        throw null;
    }

    /* renamed from: d */
    public final boolean m3004d(int[] iArr) {
        if (!mo3003c()) {
            return false;
        }
        C2794f c2794f = this.f9514d;
        ColorStateList colorStateList = c2794f.f9520c;
        PorterDuff.Mode mode = c2794f.f9521d;
        if (colorStateList == null || mode == null) {
            this.f9513c = false;
            clearColorFilter();
            return false;
        }
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f9513c && colorForState == this.f9511a && mode == this.f9512b) {
            return false;
        }
        setColorFilter(colorForState, mode);
        this.f9511a = colorForState;
        this.f9512b = mode;
        this.f9513c = true;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f9516f.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C2794f c2794f = this.f9514d;
        return changingConfigurations | (c2794f != null ? c2794f.getChangingConfigurations() : 0) | this.f9516f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C2794f c2794f = this.f9514d;
        if (c2794f != null) {
            if (!(c2794f.f9519b != null)) {
                return null;
            }
            c2794f.f9518a = getChangingConfigurations();
            return this.f9514d;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f9516f.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f9516f.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f9516f.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getLayoutDirection() {
        return C2789a.m3013b(this.f9516f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f9516f.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f9516f.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f9516f.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f9516f.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f9516f.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f9516f.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f9516f.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C2794f c2794f;
        ColorStateList colorStateList = (!mo3003c() || (c2794f = this.f9514d) == null) ? null : c2794f.f9520c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f9516f.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f9516f.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f9515e && super.mutate() == this) {
            this.f9514d = new C2794f(this.f9514d);
            Drawable drawable = this.f9516f;
            if (drawable != null) {
                drawable.mutate();
            }
            C2794f c2794f = this.f9514d;
            if (c2794f != null) {
                Drawable drawable2 = this.f9516f;
                c2794f.f9519b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f9515e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f9516f;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return C2789a.m3012c(this.f9516f, i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        return this.f9516f.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f9516f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f9516f.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f9516f.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f9516f.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f9516f.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f9516f.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m3004d(iArr) || this.f9516f.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f9516f.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
