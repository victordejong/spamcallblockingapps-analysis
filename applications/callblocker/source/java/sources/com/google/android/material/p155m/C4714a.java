package com.google.android.material.p155m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.C0357o;
import androidx.core.widget.C0622c;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4702i;
import com.google.android.material.p149g.C4680a;
/* renamed from: com.google.android.material.m.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/m/a.class */
public class C4714a extends C0357o {

    /* renamed from: a */
    private static final int f20406a = C4492a.C4503k.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* renamed from: b */
    private static final int[][] f20407b = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: c */
    private ColorStateList f20408c;

    /* renamed from: d */
    private boolean f20409d;

    public C4714a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.radioButtonStyle);
    }

    public C4714a(Context context, AttributeSet attributeSet, int i) {
        super(C4702i.m2826a(context, attributeSet, i, f20406a), attributeSet, i);
        TypedArray m2825a = C4702i.m2825a(getContext(), attributeSet, C4492a.C4504l.MaterialRadioButton, i, f20406a, new int[0]);
        this.f20409d = m2825a.getBoolean(C4492a.C4504l.MaterialRadioButton_useMaterialThemeColors, false);
        m2825a.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f20408c == null) {
            int m2920a = C4680a.m2920a(this, C4492a.C4494b.colorControlActivated);
            int m2920a2 = C4680a.m2920a(this, C4492a.C4494b.colorOnSurface);
            int m2920a3 = C4680a.m2920a(this, C4492a.C4494b.colorSurface);
            int[] iArr = new int[f20407b.length];
            iArr[0] = C4680a.m2923a(m2920a3, m2920a, 1.0f);
            iArr[1] = C4680a.m2923a(m2920a3, m2920a2, 0.54f);
            iArr[2] = C4680a.m2923a(m2920a3, m2920a2, 0.38f);
            iArr[3] = C4680a.m2923a(m2920a3, m2920a2, 0.38f);
            this.f20408c = new ColorStateList(f20407b, iArr);
        }
        return this.f20408c;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f20409d || C0622c.m20163a(this) != null) {
            return;
        }
        setUseMaterialThemeColors(true);
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f20409d = z;
        if (z) {
            C0622c.m20162a(this, getMaterialThemeColorsTintList());
        } else {
            C0622c.m20162a(this, (ColorStateList) null);
        }
    }
}
