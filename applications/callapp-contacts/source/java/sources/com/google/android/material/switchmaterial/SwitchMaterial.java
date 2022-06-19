package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.p368e.C14552a;
import com.google.android.material.p371h.C14597b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/switchmaterial/SwitchMaterial.class */
public class SwitchMaterial extends SwitchCompat {

    /* renamed from: e */
    private static final int f53876e = C14376a.C14387k.Widget_MaterialComponents_CompoundButton_Switch;

    /* renamed from: f */
    private static final int[][] f53877f = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: g */
    private final C14552a f53878g;

    /* renamed from: h */
    private ColorStateList f53879h;

    /* renamed from: i */
    private ColorStateList f53880i;

    /* renamed from: j */
    private boolean f53881j;

    public SwitchMaterial(Context context) {
        this(context, null);
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchMaterial(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.switchmaterial.SwitchMaterial.f53876e
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
            r0 = r7
            com.google.android.material.e.a r1 = new com.google.android.material.e.a
            r2 = r1
            r3 = r8
            r2.<init>(r3)
            r0.f53878g = r1
            r0 = r8
            r1 = r9
            int[] r2 = com.google.android.material.C14376a.C14388l.SwitchMaterial
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C14647l.m10508a(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r7
            r1 = r8
            int r2 = com.google.android.material.C14376a.C14388l.SwitchMaterial_useMaterialThemeColors
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.f53881j = r1
            r0 = r8
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.switchmaterial.SwitchMaterial.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: c */
    private ColorStateList m10146c() {
        if (this.f53879h == null) {
            int m10655a = C14597b.m10655a(this, C14376a.C14378b.colorSurface);
            int m10655a2 = C14597b.m10655a(this, C14376a.C14378b.colorControlActivated);
            float dimension = getResources().getDimension(C14376a.C14380d.mtrl_switch_thumb_elevation);
            float f = dimension;
            if (this.f53878g.f53068a) {
                f = dimension + C14654r.m10494c(this);
            }
            int m10779a = this.f53878g.m10779a(m10655a, f);
            int[][] iArr = f53877f;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = C14416a.m11241a(m10655a, m10655a2, 1.0f);
            iArr2[1] = m10779a;
            iArr2[2] = C14416a.m11241a(m10655a, m10655a2, 0.38f);
            iArr2[3] = m10779a;
            this.f53879h = new ColorStateList(iArr, iArr2);
        }
        return this.f53879h;
    }

    /* renamed from: d */
    private ColorStateList m10145d() {
        if (this.f53880i == null) {
            int[][] iArr = f53877f;
            int[] iArr2 = new int[iArr.length];
            int m10655a = C14597b.m10655a(this, C14376a.C14378b.colorSurface);
            int m10655a2 = C14597b.m10655a(this, C14376a.C14378b.colorControlActivated);
            int m10655a3 = C14597b.m10655a(this, C14376a.C14378b.colorOnSurface);
            iArr2[0] = C14416a.m11241a(m10655a, m10655a2, 0.54f);
            iArr2[1] = C14416a.m11241a(m10655a, m10655a3, 0.32f);
            iArr2[2] = C14416a.m11241a(m10655a, m10655a2, 0.12f);
            iArr2[3] = C14416a.m11241a(m10655a, m10655a3, 0.12f);
            this.f53880i = new ColorStateList(iArr, iArr2);
        }
        return this.f53880i;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f53881j && m45861b() == null) {
            setThumbTintList(m10146c());
        }
        if (!this.f53881j || m45864a() != null) {
            return;
        }
        setTrackTintList(m10145d());
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f53881j = z;
        if (z) {
            setThumbTintList(m10146c());
            setTrackTintList(m10145d());
            return;
        }
        setThumbTintList(null);
        setTrackTintList(null);
    }
}
