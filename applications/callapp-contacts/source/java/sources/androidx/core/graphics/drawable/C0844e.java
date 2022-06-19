package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: androidx.core.graphics.drawable.e */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/e.class */
public final class C0844e extends C0843d {

    /* renamed from: d */
    private static Method f3594d;

    public C0844e(Drawable drawable) {
        super(drawable);
        m44337c();
    }

    public C0844e(C0845f c0845f, Resources resources) {
        super(c0845f, resources);
        m44337c();
    }

    /* renamed from: c */
    private static void m44337c() {
        if (f3594d == null) {
            try {
                f3594d = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // androidx.core.graphics.drawable.C0843d
    /* renamed from: b */
    protected final boolean mo44338b() {
        if (Build.VERSION.SDK_INT == 21) {
            Drawable drawable = this.f3589c;
            return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.f3589c.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.f3589c.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        if (this.f3589c == null || (method = f3594d) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(this.f3589c, new Object[0])).booleanValue();
        } catch (Exception e) {
            Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e);
            return false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        this.f3589c.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f3589c.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.core.graphics.drawable.C0843d, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (super.setState(iArr)) {
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // androidx.core.graphics.drawable.C0843d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTint(int i) {
        if (mo44338b()) {
            super.setTint(i);
        } else {
            this.f3589c.setTint(i);
        }
    }

    @Override // androidx.core.graphics.drawable.C0843d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintList(ColorStateList colorStateList) {
        if (mo44338b()) {
            super.setTintList(colorStateList);
        } else {
            this.f3589c.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.C0843d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (mo44338b()) {
            super.setTintMode(mode);
        } else {
            this.f3589c.setTintMode(mode);
        }
    }
}
