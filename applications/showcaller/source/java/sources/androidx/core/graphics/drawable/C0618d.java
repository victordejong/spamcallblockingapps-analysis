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
public class C0618d extends Drawable implements Drawable.Callback, AbstractC0617c, AbstractC0616b {

    /* renamed from: d */
    static final PorterDuff.Mode f3000d = PorterDuff.Mode.SRC_IN;

    /* renamed from: e */
    private int f3001e;

    /* renamed from: f */
    private PorterDuff.Mode f3002f;

    /* renamed from: g */
    private boolean f3003g;

    /* renamed from: h */
    C0620f f3004h;

    /* renamed from: i */
    private boolean f3005i;

    /* renamed from: j */
    Drawable f3006j;

    public C0618d(Drawable drawable) {
        this.f3004h = m33209d();
        mo33211a(drawable);
    }

    public C0618d(C0620f c0620f, Resources resources) {
        this.f3004h = c0620f;
        m33208e(resources);
    }

    /* renamed from: d */
    private C0620f m33209d() {
        return new C0620f(this.f3004h);
    }

    /* renamed from: e */
    private void m33208e(Resources resources) {
        Drawable.ConstantState constantState;
        C0620f c0620f = this.f3004h;
        if (c0620f == null || (constantState = c0620f.f3009b) == null) {
            return;
        }
        mo33211a(constantState.newDrawable(resources));
    }

    /* renamed from: f */
    private boolean m33207f(int[] iArr) {
        if (!mo33206c()) {
            return false;
        }
        C0620f c0620f = this.f3004h;
        ColorStateList colorStateList = c0620f.f3010c;
        PorterDuff.Mode mode = c0620f.f3011d;
        if (colorStateList == null || mode == null) {
            this.f3003g = false;
            clearColorFilter();
            return false;
        }
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f3003g && colorForState == this.f3001e && mode == this.f3002f) {
            return false;
        }
        setColorFilter(colorForState, mode);
        this.f3001e = colorForState;
        this.f3002f = mode;
        this.f3003g = true;
        return true;
    }

    @Override // androidx.core.graphics.drawable.AbstractC0617c
    /* renamed from: a */
    public final void mo33211a(Drawable drawable) {
        Drawable drawable2 = this.f3006j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3006j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C0620f c0620f = this.f3004h;
            if (c0620f != null) {
                c0620f.f3009b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // androidx.core.graphics.drawable.AbstractC0617c
    /* renamed from: b */
    public final Drawable mo33210b() {
        return this.f3006j;
    }

    /* renamed from: c */
    protected boolean mo33206c() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f3006j.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C0620f c0620f = this.f3004h;
        return changingConfigurations | (c0620f != null ? c0620f.getChangingConfigurations() : 0) | this.f3006j.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C0620f c0620f = this.f3004h;
        if (c0620f == null || !c0620f.m33204a()) {
            return null;
        }
        this.f3004h.f3008a = getChangingConfigurations();
        return this.f3004h;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f3006j.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3006j.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3006j.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getLayoutDirection() {
        return C0615a.m33224f(this.f3006j);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f3006j.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f3006j.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f3006j.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f3006j.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f3006j.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f3006j.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return C0615a.m33222h(this.f3006j);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0620f c0620f;
        ColorStateList colorStateList = (!mo33206c() || (c0620f = this.f3004h) == null) ? null : c0620f.f3010c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f3006j.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f3006j.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f3005i && super.mutate() == this) {
            this.f3004h = m33209d();
            Drawable drawable = this.f3006j;
            if (drawable != null) {
                drawable.mutate();
            }
            C0620f c0620f = this.f3004h;
            if (c0620f != null) {
                Drawable drawable2 = this.f3006j;
                c0620f.f3009b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f3005i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3006j;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return C0615a.m33217m(this.f3006j, i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f3006j.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3006j.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        C0615a.m33220j(this.f3006j, z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f3006j.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3006j.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f3006j.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f3006j.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m33207f(iArr) || this.f3006j.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintList(ColorStateList colorStateList) {
        this.f3004h.f3010c = colorStateList;
        m33207f(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f3004h.f3011d = mode;
        m33207f(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f3006j.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
