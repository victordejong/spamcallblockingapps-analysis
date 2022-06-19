package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.internal.C8209q;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p102r.C1912a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/switchmaterial/SwitchMaterial.class */
public class SwitchMaterial extends SwitchCompat {

    /* renamed from: S */
    private static final int f37265S = C1895k.Widget_MaterialComponents_CompoundButton_Switch;

    /* renamed from: T */
    private static final int[][] f37266T = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: U */
    private final C1912a f37267U;

    /* renamed from: V */
    private ColorStateList f37268V;

    /* renamed from: W */
    private ColorStateList f37269W;

    /* renamed from: a0 */
    private boolean f37270a0;

    public SwitchMaterial(Context context) {
        this(context, null);
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchMaterial(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r0 = com.google.android.material.switchmaterial.SwitchMaterial.f37265S
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
            r0 = r7
            c.c.a.b.r.a r1 = new c.c.a.b.r.a
            r2 = r1
            r3 = r8
            r2.<init>(r3)
            r0.f37267U = r1
            r0 = r8
            r1 = r9
            int[] r2 = p078c.p084c.p085a.p096b.C1896l.SwitchMaterial
            r3 = r10
            r4 = r11
            r5 = 0
            int[] r5 = new int[r5]
            android.content.res.TypedArray r0 = com.google.android.material.internal.C8203l.m4462h(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r7
            r1 = r8
            int r2 = p078c.p084c.p085a.p096b.C1896l.SwitchMaterial_useMaterialThemeColors
            r3 = 0
            boolean r1 = r1.getBoolean(r2, r3)
            r0.f37270a0 = r1
            r0 = r8
            r0.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.switchmaterial.SwitchMaterial.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.f37268V == null) {
            int m28715d = C1909a.m28715d(this, C1886b.colorSurface);
            int m28715d2 = C1909a.m28715d(this, C1886b.colorControlActivated);
            float dimension = getResources().getDimension(C1888d.mtrl_switch_thumb_elevation);
            float f = dimension;
            if (this.f37267U.m28705d()) {
                f = dimension + C8209q.m4446g(this);
            }
            int m28706c = this.f37267U.m28706c(m28715d, f);
            int[][] iArr = f37266T;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = C1909a.m28712g(m28715d, m28715d2, 1.0f);
            iArr2[1] = m28706c;
            iArr2[2] = C1909a.m28712g(m28715d, m28715d2, 0.38f);
            iArr2[3] = m28706c;
            this.f37268V = new ColorStateList(iArr, iArr2);
        }
        return this.f37268V;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.f37269W == null) {
            int[][] iArr = f37266T;
            int[] iArr2 = new int[iArr.length];
            int m28715d = C1909a.m28715d(this, C1886b.colorSurface);
            int m28715d2 = C1909a.m28715d(this, C1886b.colorControlActivated);
            int m28715d3 = C1909a.m28715d(this, C1886b.colorOnSurface);
            iArr2[0] = C1909a.m28712g(m28715d, m28715d2, 0.54f);
            iArr2[1] = C1909a.m28712g(m28715d, m28715d3, 0.32f);
            iArr2[2] = C1909a.m28712g(m28715d, m28715d2, 0.12f);
            iArr2[3] = C1909a.m28712g(m28715d, m28715d3, 0.12f);
            this.f37269W = new ColorStateList(iArr, iArr2);
        }
        return this.f37269W;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f37270a0 && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (!this.f37270a0 || getTrackTintList() != null) {
            return;
        }
        setTrackTintList(getMaterialThemeColorsTrackTintList());
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f37270a0 = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
            return;
        }
        setThumbTintList(null);
        setTrackTintList(null);
    }
}
