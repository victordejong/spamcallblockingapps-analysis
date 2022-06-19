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
public class C0539e extends C0538d {

    /* renamed from: d */
    private static Method f1994d;

    public C0539e(Drawable drawable) {
        super(drawable);
        m20575c();
    }

    public C0539e(C0540f c0540f, Resources resources) {
        super(c0540f, resources);
        m20575c();
    }

    /* renamed from: c */
    private void m20575c() {
        if (f1994d == null) {
            try {
                f1994d = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        if ((r0 instanceof android.graphics.drawable.RippleDrawable) != false) goto L12;
     */
    @Override // androidx.core.graphics.drawable.C0538d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean mo20576b() {
        /*
            r3 = this;
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 != r1) goto L31
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f1989c
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof android.graphics.drawable.GradientDrawable
            if (r0 != 0) goto L2f
            r0 = r6
            boolean r0 = r0 instanceof android.graphics.drawable.DrawableContainer
            if (r0 != 0) goto L2f
            r0 = r6
            boolean r0 = r0 instanceof android.graphics.drawable.InsetDrawable
            if (r0 != 0) goto L2f
            r0 = r4
            r5 = r0
            r0 = r6
            boolean r0 = r0 instanceof android.graphics.drawable.RippleDrawable
            if (r0 == 0) goto L31
        L2f:
            r0 = 1
            r5 = r0
        L31:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.C0539e.mo20576b():boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        return this.f1989c.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f1989c.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.f1989c.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f1989c.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.core.graphics.drawable.C0538d, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        boolean z;
        if (super.setState(iArr)) {
            invalidateSelf();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // androidx.core.graphics.drawable.C0538d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTint(int i) {
        if (mo20576b()) {
            super.setTint(i);
        } else {
            this.f1989c.setTint(i);
        }
    }

    @Override // androidx.core.graphics.drawable.C0538d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintList(ColorStateList colorStateList) {
        if (mo20576b()) {
            super.setTintList(colorStateList);
        } else {
            this.f1989c.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.C0538d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintMode(PorterDuff.Mode mode) {
        if (mo20576b()) {
            super.setTintMode(mode);
        } else {
            this.f1989c.setTintMode(mode);
        }
    }
}
