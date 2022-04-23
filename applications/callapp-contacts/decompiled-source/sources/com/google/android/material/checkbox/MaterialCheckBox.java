package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.widget.c;
import com.google.android.material.a;
import com.google.android.material.h.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/checkbox/MaterialCheckBox.class */
public class MaterialCheckBox extends AppCompatCheckBox {

    /* renamed from: a  reason: collision with root package name */
    private static final int f30365a = a.k.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* renamed from: b  reason: collision with root package name */
    private static final int[][] f30366b = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: c  reason: collision with root package name */
    private ColorStateList f30367c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30368d;

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.checkboxStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCheckBox(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.checkbox.MaterialCheckBox.f30365a
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
            r0 = r8
            r1 = r9
            int[] r2 = com.google.android.material.a.l.MaterialCheckBox
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.l.a(r0, r1, r2, r3, r4, r5)
            r9 = r0
            r0 = r9
            int r1 = com.google.android.material.a.l.MaterialCheckBox_buttonTint
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L_0x003d
            r0 = r7
            r1 = r8
            r2 = r9
            int r3 = com.google.android.material.a.l.MaterialCheckBox_buttonTint
            android.content.res.ColorStateList r1 = com.google.android.material.h.c.a(r1, r2, r3)
            androidx.core.widget.c.a(r0, r1)
        L_0x003d:
            r0 = r7
            r1 = r9
            int r2 = com.google.android.material.a.l.MaterialCheckBox_useMaterialThemeColors
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.f30368d = r1
            r0 = r9
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.checkbox.MaterialCheckBox.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f30368d && c.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f30368d = z;
        if (z) {
            if (this.f30367c == null) {
                int[][] iArr = f30366b;
                int[] iArr2 = new int[iArr.length];
                int a2 = b.a(this, a.b.colorControlActivated);
                int a3 = b.a(this, a.b.colorSurface);
                int a4 = b.a(this, a.b.colorOnSurface);
                iArr2[0] = com.google.android.material.b.a.a(a3, a2, 1.0f);
                iArr2[1] = com.google.android.material.b.a.a(a3, a4, 0.54f);
                iArr2[2] = com.google.android.material.b.a.a(a3, a4, 0.38f);
                iArr2[3] = com.google.android.material.b.a.a(a3, a4, 0.38f);
                this.f30367c = new ColorStateList(iArr, iArr2);
            }
            c.a(this, this.f30367c);
            return;
        }
        c.a(this, (ColorStateList) null);
    }
}
