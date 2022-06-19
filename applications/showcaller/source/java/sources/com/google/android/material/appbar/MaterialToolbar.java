package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.C0615a;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1942i;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/MaterialToolbar.class */
public class MaterialToolbar extends Toolbar {

    /* renamed from: S */
    private static final int f36082S = C1895k.Widget_MaterialComponents_Toolbar;

    /* renamed from: T */
    private Integer f36083T;

    public MaterialToolbar(Context context) {
        this(context, null);
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.toolbarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialToolbar(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.appbar.MaterialToolbar.f36082S
            r11 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            android.content.Context r1 = com.google.android.material.theme.p275a.C8328a.m3881c(r1, r2, r3, r4)
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r8 = r0
            r0 = r8
            r1 = r9
            int[] r2 = p078c.p084c.p085a.p096b.C1896l.MaterialToolbar
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C8203l.m4462h(r0, r1, r2, r3, r4, r5)
            r9 = r0
            int r0 = p078c.p084c.p085a.p096b.C1896l.MaterialToolbar_navigationIconTint
            r10 = r0
            r0 = r9
            r1 = r10
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L3d
            r0 = r7
            r1 = r9
            r2 = r10
            r3 = -1
            int r1 = r1.getColor(r2, r3)
            r0.setNavigationIconTint(r1)
        L3d:
            r0 = r9
            r0.recycle()
            r0 = r7
            r1 = r8
            r0.m5672K(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.MaterialToolbar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: K */
    private void m5672K(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            C1938h c1938h = new C1938h();
            c1938h.m28625a0(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            c1938h.m28636P(context);
            c1938h.m28626Z(C1679w.m29264w(this));
            C1679w.m29267u0(this, c1938h);
        }
    }

    /* renamed from: L */
    private Drawable m5671L(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (this.f36083T != null) {
                drawable2 = C0615a.m33212r(drawable);
                C0615a.m33216n(drawable2, this.f36083T.intValue());
            }
        }
        return drawable2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1942i.m28580e(this);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C1942i.m28581d(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(m5671L(drawable));
    }

    public void setNavigationIconTint(int i) {
        this.f36083T = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }
}
