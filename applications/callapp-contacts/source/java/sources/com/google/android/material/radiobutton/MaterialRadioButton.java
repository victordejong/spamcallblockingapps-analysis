package com.google.android.material.radiobutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.C0954c;
import com.google.android.material.C14376a;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.p371h.C14597b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/radiobutton/MaterialRadioButton.class */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* renamed from: a */
    private static final int f53734a = C14376a.C14387k.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* renamed from: b */
    private static final int[][] f53735b = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: c */
    private ColorStateList f53736c;

    /* renamed from: d */
    private boolean f53737d;

    public MaterialRadioButton(Context context) {
        this(context, null);
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialRadioButton(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.radiobutton.MaterialRadioButton.f53734a
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
            r0 = r8
            r1 = r9
            int[] r2 = com.google.android.material.C14376a.C14388l.MaterialRadioButton
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C14647l.m10508a(r0, r1, r2, r3, r4, r5)
            r9 = r0
            r0 = r9
            int r1 = com.google.android.material.C14376a.C14388l.MaterialRadioButton_buttonTint
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L3d
            r0 = r7
            r1 = r8
            r2 = r9
            int r3 = com.google.android.material.C14376a.C14388l.MaterialRadioButton_buttonTint
            android.content.res.ColorStateList r1 = com.google.android.material.p371h.C14598c.m10653a(r1, r2, r3)
            androidx.core.widget.C0954c.m43982a(r0, r1)
        L3d:
            r0 = r7
            r1 = r9
            int r2 = com.google.android.material.C14376a.C14388l.MaterialRadioButton_useMaterialThemeColors
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.f53737d = r1
            r0 = r9
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.radiobutton.MaterialRadioButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f53737d || C0954c.m43983a(this) != null) {
            return;
        }
        setUseMaterialThemeColors(true);
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f53737d = z;
        if (!z) {
            C0954c.m43982a(this, (ColorStateList) null);
            return;
        }
        if (this.f53736c == null) {
            int m10655a = C14597b.m10655a(this, C14376a.C14378b.colorControlActivated);
            int m10655a2 = C14597b.m10655a(this, C14376a.C14378b.colorOnSurface);
            int m10655a3 = C14597b.m10655a(this, C14376a.C14378b.colorSurface);
            int[][] iArr = f53735b;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = C14416a.m11241a(m10655a3, m10655a, 1.0f);
            iArr2[1] = C14416a.m11241a(m10655a3, m10655a2, 0.54f);
            iArr2[2] = C14416a.m11241a(m10655a3, m10655a2, 0.38f);
            iArr2[3] = C14416a.m11241a(m10655a3, m10655a2, 0.38f);
            this.f53736c = new ColorStateList(iArr, iArr2);
        }
        C0954c.m43982a(this, this.f53736c);
    }
}
