package p012b.p042i.p046j.p047m;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
/* renamed from: b.i.j.m.d */
/* loaded from: classes-dex2jar.jar:b/i/j/m/d.class */
public class C0910d extends Drawable implements Drawable.Callback, AbstractC0909c, AbstractC0908b {

    /* renamed from: g */
    public static final PorterDuff.Mode f4116g = PorterDuff.Mode.SRC_IN;

    /* renamed from: a */
    public int f4117a;

    /* renamed from: b */
    public PorterDuff.Mode f4118b;

    /* renamed from: c */
    public boolean f4119c;

    /* renamed from: d */
    public C0912f f4120d;

    /* renamed from: e */
    public boolean f4121e;

    /* renamed from: f */
    public Drawable f4122f;

    public C0910d(Drawable drawable) {
        this.f4120d = m35509c();
        mo35511a(drawable);
    }

    public C0910d(C0912f fVar, Resources resources) {
        this.f4120d = fVar;
        m35512a(resources);
    }

    @Override // p012b.p042i.p046j.p047m.AbstractC0909c
    /* renamed from: a */
    public final Drawable mo35513a() {
        return this.f4122f;
    }

    /* renamed from: a */
    public final void m35512a(Resources resources) {
        Drawable.ConstantState constantState;
        C0912f fVar = this.f4120d;
        if (fVar != null && (constantState = fVar.f4125b) != null) {
            mo35511a(constantState.newDrawable(resources));
        }
    }

    @Override // p012b.p042i.p046j.p047m.AbstractC0909c
    /* renamed from: a */
    public final void mo35511a(Drawable drawable) {
        Drawable drawable2 = this.f4122f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f4122f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C0912f fVar = this.f4120d;
            if (fVar != null) {
                fVar.f4125b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* renamed from: a */
    public final boolean m35510a(int[] iArr) {
        if (!mo35508b()) {
            return false;
        }
        C0912f fVar = this.f4120d;
        ColorStateList colorStateList = fVar.f4126c;
        PorterDuff.Mode mode = fVar.f4127d;
        if (colorStateList == null || mode == null) {
            this.f4119c = false;
            clearColorFilter();
            return false;
        }
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f4119c && colorForState == this.f4117a && mode == this.f4118b) {
            return false;
        }
        setColorFilter(colorForState, mode);
        this.f4117a = colorForState;
        this.f4118b = mode;
        this.f4119c = true;
        return true;
    }

    /* renamed from: b */
    public boolean mo35508b() {
        return true;
    }

    /* renamed from: c */
    public final C0912f m35509c() {
        return new C0912f(this.f4120d);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f4122f.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C0912f fVar = this.f4120d;
        return changingConfigurations | (fVar != null ? fVar.getChangingConfigurations() : 0) | this.f4122f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C0912f fVar = this.f4120d;
        if (fVar == null || !fVar.m35506a()) {
            return null;
        }
        this.f4120d.f4124a = getChangingConfigurations();
        return this.f4120d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f4122f.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f4122f.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f4122f.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f4122f.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f4122f.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f4122f.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f4122f.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f4122f.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f4122f.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f4122f.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0912f fVar;
        ColorStateList colorStateList = (!mo35508b() || (fVar = this.f4120d) == null) ? null : fVar.f4126c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f4122f.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f4122f.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f4121e && super.mutate() == this) {
            this.f4120d = m35509c();
            Drawable drawable = this.f4122f;
            if (drawable != null) {
                drawable.mutate();
            }
            C0912f fVar = this.f4120d;
            if (fVar != null) {
                Drawable drawable2 = this.f4122f;
                fVar.f4125b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f4121e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f4122f;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        return this.f4122f.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f4122f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f4122f.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f4122f.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4122f.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f4122f.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f4122f.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m35510a(iArr) || this.f4122f.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTintList(ColorStateList colorStateList) {
        this.f4120d.f4126c = colorStateList;
        m35510a(getState());
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f4120d.f4127d = mode;
        m35510a(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f4122f.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
