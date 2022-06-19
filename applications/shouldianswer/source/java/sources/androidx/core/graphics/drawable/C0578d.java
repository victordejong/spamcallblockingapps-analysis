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
public class C0578d extends Drawable implements Drawable.Callback, AbstractC0576b, AbstractC0577c {

    /* renamed from: a */
    static final PorterDuff.Mode f1942a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    C0580f f1943b;

    /* renamed from: c */
    Drawable f1944c;

    /* renamed from: d */
    private int f1945d;

    /* renamed from: e */
    private PorterDuff.Mode f1946e;

    /* renamed from: f */
    private boolean f1947f;

    /* renamed from: g */
    private boolean f1948g;

    public C0578d(Drawable drawable) {
        this.f1943b = m6115c();
        mo6117a(drawable);
    }

    public C0578d(C0580f c0580f, Resources resources) {
        this.f1943b = c0580f;
        m6118a(resources);
    }

    /* renamed from: a */
    private void m6118a(Resources resources) {
        C0580f c0580f = this.f1943b;
        if (c0580f == null || c0580f.f1951b == null) {
            return;
        }
        mo6117a(this.f1943b.f1951b.newDrawable(resources));
    }

    /* renamed from: a */
    private boolean m6116a(int[] iArr) {
        if (!mo6114b()) {
            return false;
        }
        ColorStateList colorStateList = this.f1943b.f1952c;
        PorterDuff.Mode mode = this.f1943b.f1953d;
        if (colorStateList == null || mode == null) {
            this.f1947f = false;
            clearColorFilter();
            return false;
        }
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1947f && colorForState == this.f1945d && mode == this.f1946e) {
            return false;
        }
        setColorFilter(colorForState, mode);
        this.f1945d = colorForState;
        this.f1946e = mode;
        this.f1947f = true;
        return true;
    }

    /* renamed from: c */
    private C0580f m6115c() {
        return new C0580f(this.f1943b);
    }

    @Override // androidx.core.graphics.drawable.AbstractC0577c
    /* renamed from: a */
    public final Drawable mo6119a() {
        return this.f1944c;
    }

    @Override // androidx.core.graphics.drawable.AbstractC0577c
    /* renamed from: a */
    public final void mo6117a(Drawable drawable) {
        Drawable drawable2 = this.f1944c;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1944c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C0580f c0580f = this.f1943b;
            if (c0580f != null) {
                c0580f.f1951b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* renamed from: b */
    protected boolean mo6114b() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f1944c.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C0580f c0580f = this.f1943b;
        return changingConfigurations | (c0580f != null ? c0580f.getChangingConfigurations() : 0) | this.f1944c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C0580f c0580f = this.f1943b;
        if (c0580f == null || !c0580f.m6112a()) {
            return null;
        }
        this.f1943b.f1950a = getChangingConfigurations();
        return this.f1943b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1944c.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1944c.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1944c.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f1944c.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f1944c.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1944c.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f1944c.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f1944c.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f1944c.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1944c.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0580f c0580f;
        ColorStateList colorStateList = (!mo6114b() || (c0580f = this.f1943b) == null) ? null : c0580f.f1952c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f1944c.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f1944c.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1948g && super.mutate() == this) {
            this.f1943b = m6115c();
            Drawable drawable = this.f1944c;
            if (drawable != null) {
                drawable.mutate();
            }
            C0580f c0580f = this.f1943b;
            if (c0580f != null) {
                Drawable drawable2 = this.f1944c;
                c0580f.f1951b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f1948g = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1944c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f1944c.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1944c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f1944c.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f1944c.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1944c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f1944c.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f1944c.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m6116a(iArr) || this.f1944c.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintList(ColorStateList colorStateList) {
        this.f1943b.f1952c = colorStateList;
        m6116a(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1943b.f1953d = mode;
        m6116a(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f1944c.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
