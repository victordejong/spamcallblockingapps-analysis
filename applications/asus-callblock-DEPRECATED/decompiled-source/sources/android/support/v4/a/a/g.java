package android.support.v4.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.a.a.c;
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a/g.class */
final class g extends f {

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/g$a.class */
    private static final class a extends c.a {
        a(c.a aVar) {
            super(aVar);
        }

        @Override // android.support.v4.a.a.c.a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new g(this, resources);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Drawable drawable) {
        super(drawable);
    }

    g(c.a aVar, Resources resources) {
        super(aVar, resources);
    }

    @Override // android.support.v4.a.a.f, android.support.v4.a.a.e, android.support.v4.a.a.c
    final c.a a() {
        return new a(this.f22b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if ((r0 instanceof android.graphics.drawable.InsetDrawable) != false) goto L_0x0028;
     */
    @Override // android.support.v4.a.a.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final boolean b() {
        /*
            r3 = this;
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 != r1) goto L_0x002a
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.c
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof android.graphics.drawable.GradientDrawable
            if (r0 != 0) goto L_0x0028
            r0 = r6
            boolean r0 = r0 instanceof android.graphics.drawable.DrawableContainer
            if (r0 != 0) goto L_0x0028
            r0 = r4
            r5 = r0
            r0 = r6
            boolean r0 = r0 instanceof android.graphics.drawable.InsetDrawable
            if (r0 == 0) goto L_0x002a
        L_0x0028:
            r0 = 1
            r5 = r0
        L_0x002a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.a.a.g.b():boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.c.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.c.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        this.c.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.c.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.support.v4.a.a.c, android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        boolean z;
        if (super.setState(iArr)) {
            invalidateSelf();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.support.v4.a.a.c, android.graphics.drawable.Drawable, android.support.v4.a.a.k
    public final void setTint(int i) {
        if (b()) {
            super.setTint(i);
        } else {
            this.c.setTint(i);
        }
    }

    @Override // android.support.v4.a.a.c, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (b()) {
            super.setTintList(colorStateList);
        } else {
            this.c.setTintList(colorStateList);
        }
    }

    @Override // android.support.v4.a.a.c, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (b()) {
            super.setTintMode(mode);
        } else {
            this.c.setTintMode(mode);
        }
    }
}
