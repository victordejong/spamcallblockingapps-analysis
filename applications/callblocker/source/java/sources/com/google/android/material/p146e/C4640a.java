package com.google.android.material.p146e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.widget.C0622c;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4702i;
import com.google.android.material.p149g.C4680a;
import com.google.android.material.p156n.C4718c;
/* renamed from: com.google.android.material.e.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/e/a.class */
public class C4640a extends AppCompatCheckBox {

    /* renamed from: a */
    private static final int f20146a = C4492a.C4503k.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* renamed from: b */
    private static final int[][] f20147b = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: c */
    private ColorStateList f20148c;

    /* renamed from: d */
    private boolean f20149d;

    public C4640a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.checkboxStyle);
    }

    public C4640a(Context context, AttributeSet attributeSet, int i) {
        super(C4702i.m2826a(context, attributeSet, i, f20146a), attributeSet, i);
        Context context2 = getContext();
        TypedArray m2825a = C4702i.m2825a(context2, attributeSet, C4492a.C4504l.MaterialCheckBox, i, f20146a, new int[0]);
        if (m2825a.hasValue(C4492a.C4504l.MaterialCheckBox_buttonTint)) {
            C0622c.m20162a(this, C4718c.m2784a(context2, m2825a, C4492a.C4504l.MaterialCheckBox_buttonTint));
        }
        this.f20149d = m2825a.getBoolean(C4492a.C4504l.MaterialCheckBox_useMaterialThemeColors, false);
        m2825a.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f20148c == null) {
            int[] iArr = new int[f20147b.length];
            int m2920a = C4680a.m2920a(this, C4492a.C4494b.colorControlActivated);
            int m2920a2 = C4680a.m2920a(this, C4492a.C4494b.colorSurface);
            int m2920a3 = C4680a.m2920a(this, C4492a.C4494b.colorOnSurface);
            iArr[0] = C4680a.m2923a(m2920a2, m2920a, 1.0f);
            iArr[1] = C4680a.m2923a(m2920a2, m2920a3, 0.54f);
            iArr[2] = C4680a.m2923a(m2920a2, m2920a3, 0.38f);
            iArr[3] = C4680a.m2923a(m2920a2, m2920a3, 0.38f);
            this.f20148c = new ColorStateList(f20147b, iArr);
        }
        return this.f20148c;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f20149d || C0622c.m20163a(this) != null) {
            return;
        }
        setUseMaterialThemeColors(true);
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f20149d = z;
        if (z) {
            C0622c.m20162a(this, getMaterialThemeColorsTintList());
        } else {
            C0622c.m20162a(this, (ColorStateList) null);
        }
    }
}
