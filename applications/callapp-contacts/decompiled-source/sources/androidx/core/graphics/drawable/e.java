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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/e.class */
public final class e extends d {

    /* renamed from: d  reason: collision with root package name */
    private static Method f1917d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Drawable drawable) {
        super(drawable);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(f fVar, Resources resources) {
        super(fVar, resources);
        c();
    }

    private static void c() {
        if (f1917d == null) {
            try {
                f1917d = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // androidx.core.graphics.drawable.d
    protected final boolean b() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f1915c;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.f1915c.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.f1915c.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        if (this.f1915c == null || (method = f1917d) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(this.f1915c, new Object[0])).booleanValue();
        } catch (Exception e) {
            Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e);
            return false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        this.f1915c.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f1915c.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.core.graphics.drawable.d, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // androidx.core.graphics.drawable.d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTint(int i) {
        if (b()) {
            super.setTint(i);
        } else {
            this.f1915c.setTint(i);
        }
    }

    @Override // androidx.core.graphics.drawable.d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintList(ColorStateList colorStateList) {
        if (b()) {
            super.setTintList(colorStateList);
        } else {
            this.f1915c.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (b()) {
            super.setTintMode(mode);
        } else {
            this.f1915c.setTintMode(mode);
        }
    }
}
