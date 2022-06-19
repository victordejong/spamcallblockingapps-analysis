package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.C0840a;
import com.google.android.material.C14376a;
import com.google.android.material.p374k.C14674i;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/MaterialToolbar.class */
public class MaterialToolbar extends Toolbar {

    /* renamed from: n */
    private static final int f52476n = C14376a.C14387k.Widget_MaterialComponents_Toolbar;

    /* renamed from: o */
    private Integer f52477o;

    public MaterialToolbar(Context context) {
        this(context, null);
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.toolbarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialToolbar(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.appbar.MaterialToolbar.f52476n
            r11 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            android.content.Context r1 = com.google.android.material.theme.p376a.C14828a.m9923a(r1, r2, r3, r4)
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r8 = r0
            int[] r0 = com.google.android.material.C14376a.C14388l.MaterialToolbar
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r8
            r1 = r9
            r2 = r12
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C14647l.m10508a(r0, r1, r2, r3, r4, r5)
            r9 = r0
            r0 = r9
            int r1 = com.google.android.material.C14376a.C14388l.MaterialToolbar_navigationIconTint
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L44
            r0 = r7
            r1 = r9
            int r2 = com.google.android.material.C14376a.C14388l.MaterialToolbar_navigationIconTint
            r3 = -1
            int r1 = r1.getColor(r2, r3)
            r0.setNavigationIconTint(r1)
        L44:
            r0 = r9
            r0.recycle()
            r0 = r7
            android.graphics.drawable.Drawable r0 = r0.getBackground()
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L5b
            r0 = r12
            boolean r0 = r0 instanceof android.graphics.drawable.ColorDrawable
            if (r0 == 0) goto L8e
        L5b:
            com.google.android.material.k.h r0 = new com.google.android.material.k.h
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r13
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L74
            r0 = r12
            android.graphics.drawable.ColorDrawable r0 = (android.graphics.drawable.ColorDrawable) r0
            int r0 = r0.getColor()
            r10 = r0
        L74:
            r0 = r9
            r1 = r10
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            r0.m10456g(r1)
            r0 = r9
            r1 = r8
            r0.m10479a(r1)
            r0 = r9
            r1 = r7
            float r1 = androidx.core.view.C0926v.m44085n(r1)
            r0.m10439r(r1)
            r0 = r7
            r1 = r9
            androidx.core.view.C0926v.m44128a(r0, r1)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.MaterialToolbar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14674i.m10437a(this);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C14674i.m10436a(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (this.f52477o != null) {
                drawable2 = C0840a.m44345f(drawable);
                C0840a.m44357a(drawable2, this.f52477o.intValue());
            }
        }
        super.setNavigationIcon(drawable2);
    }

    public void setNavigationIconTint(int i) {
        this.f52477o = Integer.valueOf(i);
        Drawable e = m45837e();
        if (e != null) {
            setNavigationIcon(e);
        }
    }
}
