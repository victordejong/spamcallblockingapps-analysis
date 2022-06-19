package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.C0212c0;
import p102g4.C2811a;
import p134j4.C3260w0;
import p304z3.C5070b;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textview/MaterialTextView.class */
public class MaterialTextView extends C0212c0 {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 16842884, 0), attributeSet, 16842884);
        Context context2 = getContext();
        boolean z = true;
        if (C5070b.m74b(context2, 2130969707, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = C3260w0.f11044y;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, 16842884, 0);
            int m4501e = m4501e(context2, obtainStyledAttributes, 1, 2);
            obtainStyledAttributes.recycle();
            if (m4501e == -1 ? false : z) {
                return;
            }
            TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, 16842884, 0);
            int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
            obtainStyledAttributes2.recycle();
            if (resourceId == -1) {
                return;
            }
            m4502c(theme, resourceId);
        }
    }

    /* renamed from: e */
    public static int m4501e(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            int i3 = iArr[i2];
            TypedValue typedValue = new TypedValue();
            if (!typedArray.getValue(i3, typedValue) || typedValue.type != 2) {
                i = typedArray.getDimensionPixelSize(i3, -1);
            } else {
                TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                i = obtainStyledAttributes.getDimensionPixelSize(0, -1);
                obtainStyledAttributes.recycle();
            }
        }
        return i;
    }

    /* renamed from: c */
    public final void m4502c(Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, C3260w0.f11043x);
        int m4501e = m4501e(getContext(), obtainStyledAttributes, 1, 2);
        obtainStyledAttributes.recycle();
        if (m4501e >= 0) {
            setLineHeight(m4501e);
        }
    }

    @Override // androidx.appcompat.widget.C0212c0, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (C5070b.m74b(context, 2130969707, true)) {
            m4502c(context.getTheme(), i);
        }
    }
}
