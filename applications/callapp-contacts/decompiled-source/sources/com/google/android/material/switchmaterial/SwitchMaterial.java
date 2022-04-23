package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.a;
import com.google.android.material.h.b;
import com.google.android.material.internal.r;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/switchmaterial/SwitchMaterial.class */
public class SwitchMaterial extends SwitchCompat {
    private static final int e = a.k.Widget_MaterialComponents_CompoundButton_Switch;
    private static final int[][] f = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    private final com.google.android.material.e.a g;
    private ColorStateList h;
    private ColorStateList i;
    private boolean j;

    public SwitchMaterial(Context context) {
        this(context, null);
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchMaterial(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.switchmaterial.SwitchMaterial.e
            r11 = r0
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            android.content.Context r1 = com.google.android.material.theme.a.a.a(r1, r2, r3, r4)
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r8 = r0
            r0 = r7
            com.google.android.material.e.a r1 = new com.google.android.material.e.a
            r2 = r1
            r3 = r8
            r2.<init>(r3)
            r0.g = r1
            r0 = r8
            r1 = r9
            int[] r2 = com.google.android.material.a.l.SwitchMaterial
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.l.a(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.a.l.SwitchMaterial_useMaterialThemeColors
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.j = r1
            r0 = r8
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.switchmaterial.SwitchMaterial.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private ColorStateList c() {
        if (this.h == null) {
            int a2 = b.a(this, a.b.colorSurface);
            int a3 = b.a(this, a.b.colorControlActivated);
            float dimension = getResources().getDimension(a.d.mtrl_switch_thumb_elevation);
            float f2 = dimension;
            if (this.g.f30491a) {
                f2 = dimension + r.c(this);
            }
            int a4 = this.g.a(a2, f2);
            int[][] iArr = f;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = com.google.android.material.b.a.a(a2, a3, 1.0f);
            iArr2[1] = a4;
            iArr2[2] = com.google.android.material.b.a.a(a2, a3, 0.38f);
            iArr2[3] = a4;
            this.h = new ColorStateList(iArr, iArr2);
        }
        return this.h;
    }

    private ColorStateList d() {
        if (this.i == null) {
            int[][] iArr = f;
            int[] iArr2 = new int[iArr.length];
            int a2 = b.a(this, a.b.colorSurface);
            int a3 = b.a(this, a.b.colorControlActivated);
            int a4 = b.a(this, a.b.colorOnSurface);
            iArr2[0] = com.google.android.material.b.a.a(a2, a3, 0.54f);
            iArr2[1] = com.google.android.material.b.a.a(a2, a4, 0.32f);
            iArr2[2] = com.google.android.material.b.a.a(a2, a3, 0.12f);
            iArr2[3] = com.google.android.material.b.a.a(a2, a4, 0.12f);
            this.i = new ColorStateList(iArr, iArr2);
        }
        return this.i;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.j && b() == null) {
            setThumbTintList(c());
        }
        if (this.j && a() == null) {
            setTrackTintList(d());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.j = z;
        if (z) {
            setThumbTintList(c());
            setTrackTintList(d());
            return;
        }
        setThumbTintList(null);
        setTrackTintList(null);
    }
}
