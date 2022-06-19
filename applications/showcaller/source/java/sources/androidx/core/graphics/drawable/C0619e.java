package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: androidx.core.graphics.drawable.e */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/e.class */
public class C0619e extends C0618d {

    /* renamed from: k */
    private static Method f3007k;

    public C0619e(Drawable drawable) {
        super(drawable);
        m33205g();
    }

    public C0619e(C0620f c0620f, Resources resources) {
        super(c0620f, resources);
        m33205g();
    }

    /* renamed from: g */
    private void m33205g() {
        if (f3007k == null) {
            try {
                f3007k = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if ((r0 instanceof android.graphics.drawable.RippleDrawable) != false) goto L12;
     */
    @Override // androidx.core.graphics.drawable.C0618d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean mo33206c() {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 21
            if (r0 != r1) goto L38
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3006j
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof android.graphics.drawable.GradientDrawable
            if (r0 != 0) goto L36
            r0 = r7
            boolean r0 = r0 instanceof android.graphics.drawable.DrawableContainer
            if (r0 != 0) goto L36
            r0 = r7
            boolean r0 = r0 instanceof android.graphics.drawable.InsetDrawable
            if (r0 != 0) goto L36
            r0 = r5
            r6 = r0
            r0 = r7
            boolean r0 = r0 instanceof android.graphics.drawable.RippleDrawable
            if (r0 == 0) goto L38
        L36:
            r0 = 1
            r6 = r0
        L38:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.C0619e.mo33206c():boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        return this.f3006j.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f3006j.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.f3006j;
        if (drawable == null || (method = f3007k) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
        } catch (Exception e) {
            Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e);
            return false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.f3006j.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f3006j.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.core.graphics.drawable.C0618d, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (super.setState(iArr)) {
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // androidx.core.graphics.drawable.C0618d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTint(int i) {
        if (mo33206c()) {
            super.setTint(i);
        } else {
            this.f3006j.setTint(i);
        }
    }

    @Override // androidx.core.graphics.drawable.C0618d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintList(ColorStateList colorStateList) {
        if (mo33206c()) {
            super.setTintList(colorStateList);
        } else {
            this.f3006j.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.C0618d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintMode(PorterDuff.Mode mode) {
        if (mo33206c()) {
            super.setTintMode(mode);
        } else {
            this.f3006j.setTintMode(mode);
        }
    }
}
