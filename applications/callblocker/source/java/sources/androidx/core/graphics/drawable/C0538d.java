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
public class C0538d extends Drawable implements Drawable.Callback, AbstractC0536b, AbstractC0537c {

    /* renamed from: a */
    static final PorterDuff.Mode f1987a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    C0540f f1988b;

    /* renamed from: c */
    Drawable f1989c;

    /* renamed from: d */
    private int f1990d;

    /* renamed from: e */
    private PorterDuff.Mode f1991e;

    /* renamed from: f */
    private boolean f1992f;

    /* renamed from: g */
    private boolean f1993g;

    public C0538d(Drawable drawable) {
        this.f1988b = m20577c();
        mo20579a(drawable);
    }

    public C0538d(C0540f c0540f, Resources resources) {
        this.f1988b = c0540f;
        m20580a(resources);
    }

    /* renamed from: a */
    private void m20580a(Resources resources) {
        if (this.f1988b == null || this.f1988b.f1996b == null) {
            return;
        }
        mo20579a(this.f1988b.f1996b.newDrawable(resources));
    }

    /* renamed from: a */
    private boolean m20578a(int[] iArr) {
        boolean z = false;
        if (mo20576b()) {
            ColorStateList colorStateList = this.f1988b.f1997c;
            PorterDuff.Mode mode = this.f1988b.f1998d;
            if (colorStateList == null || mode == null) {
                this.f1992f = false;
                clearColorFilter();
            } else {
                int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
                if (!this.f1992f || colorForState != this.f1990d || mode != this.f1991e) {
                    setColorFilter(colorForState, mode);
                    this.f1990d = colorForState;
                    this.f1991e = mode;
                    this.f1992f = true;
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    private C0540f m20577c() {
        return new C0540f(this.f1988b);
    }

    @Override // androidx.core.graphics.drawable.AbstractC0537c
    /* renamed from: a */
    public final Drawable mo20581a() {
        return this.f1989c;
    }

    @Override // androidx.core.graphics.drawable.AbstractC0537c
    /* renamed from: a */
    public final void mo20579a(Drawable drawable) {
        if (this.f1989c != null) {
            this.f1989c.setCallback(null);
        }
        this.f1989c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            if (this.f1988b != null) {
                this.f1988b.f1996b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* renamed from: b */
    protected boolean mo20576b() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f1989c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return (this.f1988b != null ? this.f1988b.getChangingConfigurations() : 0) | super.getChangingConfigurations() | this.f1989c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C0540f c0540f;
        if (this.f1988b == null || !this.f1988b.m20574a()) {
            c0540f = null;
        } else {
            this.f1988b.f1995a = getChangingConfigurations();
            c0540f = this.f1988b;
        }
        return c0540f;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1989c.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1989c.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1989c.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f1989c.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f1989c.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1989c.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f1989c.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f1989c.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f1989c.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1989c.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = (!mo20576b() || this.f1988b == null) ? null : this.f1988b.f1997c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f1989c.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f1989c.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1993g && super.mutate() == this) {
            this.f1988b = m20577c();
            if (this.f1989c != null) {
                this.f1989c.mutate();
            }
            if (this.f1988b != null) {
                this.f1988b.f1996b = this.f1989c != null ? this.f1989c.getConstantState() : null;
            }
            this.f1993g = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f1989c != null) {
            this.f1989c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f1989c.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1989c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f1989c.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f1989c.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1989c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f1989c.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f1989c.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m20578a(iArr) || this.f1989c.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintList(ColorStateList colorStateList) {
        this.f1988b.f1997c = colorStateList;
        m20578a(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1988b.f1998d = mode;
        m20578a(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f1989c.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
