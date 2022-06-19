package com.google.android.material.radiobutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.C0643e;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p099o.C1909a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/radiobutton/MaterialRadioButton.class */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* renamed from: g */
    private static final int f37166g = C1895k.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* renamed from: h */
    private static final int[][] f37167h = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: i */
    private ColorStateList f37168i;

    /* renamed from: j */
    private boolean f37169j;

    public MaterialRadioButton(Context context) {
        this(context, null);
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialRadioButton(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.radiobutton.MaterialRadioButton.f37166g
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
            int[] r2 = p078c.p084c.p085a.p096b.C1896l.MaterialRadioButton
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C8203l.m4462h(r0, r1, r2, r3, r4, r5)
            r9 = r0
            int r0 = p078c.p084c.p085a.p096b.C1896l.MaterialRadioButton_buttonTint
            r10 = r0
            r0 = r9
            r1 = r10
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L3d
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            android.content.res.ColorStateList r1 = p078c.p084c.p085a.p096b.p105u.C1919c.m28686a(r1, r2, r3)
            androidx.core.widget.C0643e.m33105c(r0, r1)
        L3d:
            r0 = r7
            r1 = r9
            int r2 = p078c.p084c.p085a.p096b.C1896l.MaterialRadioButton_useMaterialThemeColors
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.f37169j = r1
            r0 = r9
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.radiobutton.MaterialRadioButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f37168i == null) {
            int m28715d = C1909a.m28715d(this, C1886b.colorControlActivated);
            int m28715d2 = C1909a.m28715d(this, C1886b.colorOnSurface);
            int m28715d3 = C1909a.m28715d(this, C1886b.colorSurface);
            int[][] iArr = f37167h;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = C1909a.m28712g(m28715d3, m28715d, 1.0f);
            iArr2[1] = C1909a.m28712g(m28715d3, m28715d2, 0.54f);
            iArr2[2] = C1909a.m28712g(m28715d3, m28715d2, 0.38f);
            iArr2[3] = C1909a.m28712g(m28715d3, m28715d2, 0.38f);
            this.f37168i = new ColorStateList(iArr, iArr2);
        }
        return this.f37168i;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f37169j || C0643e.m33106b(this) != null) {
            return;
        }
        setUseMaterialThemeColors(true);
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f37169j = z;
        if (z) {
            C0643e.m33105c(this, getMaterialThemeColorsTintList());
        } else {
            C0643e.m33105c(this, null);
        }
    }
}
