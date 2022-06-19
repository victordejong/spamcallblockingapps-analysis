package p098g0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: g0.e */
/* loaded from: classes-dex2jar.jar:g0/e.class */
public class C2793e extends C2792d {

    /* renamed from: h */
    public static Method f9517h;

    public C2793e(Drawable drawable) {
        super(drawable);
        m3002e();
    }

    public C2793e(C2794f c2794f, Resources resources) {
        super(c2794f, resources);
        m3002e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if ((r0 instanceof android.graphics.drawable.RippleDrawable) != false) goto L12;
     */
    @Override // p098g0.C2792d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3003c() {
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
            android.graphics.drawable.Drawable r0 = r0.f9516f
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
        throw new UnsupportedOperationException("Method not decompiled: p098g0.C2793e.mo3003c():boolean");
    }

    /* renamed from: e */
    public final void m3002e() {
        if (f9517h == null) {
            try {
                f9517h = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        return this.f9516f.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f9516f.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.f9516f;
        if (drawable == null || (method = f9517h) == null) {
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
        this.f9516f.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f9516f.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p098g0.C2792d, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (super.setState(iArr)) {
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // p098g0.C2792d, android.graphics.drawable.Drawable
    public void setTint(int i) {
        if (mo3003c()) {
            super.setTint(i);
        } else {
            this.f9516f.setTint(i);
        }
    }

    @Override // p098g0.C2792d, android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (!mo3003c()) {
            this.f9516f.setTintList(colorStateList);
            return;
        }
        this.f9514d.f9520c = colorStateList;
        m3004d(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (!mo3003c()) {
            this.f9516f.setTintMode(mode);
            return;
        }
        this.f9514d.f9521d = mode;
        m3004d(getState());
    }
}
