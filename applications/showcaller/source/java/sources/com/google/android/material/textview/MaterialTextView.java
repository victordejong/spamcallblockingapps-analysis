package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.theme.p275a.C8328a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1918b;
import p078c.p084c.p085a.p096b.p105u.C1919c;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textview/MaterialTextView.class */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context) {
        this(context, null);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(C8328a.m3881c(context, attributeSet, i, i2), attributeSet, i);
        int m3891p;
        Context context2 = getContext();
        if (m3892o(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (m3889r(context2, theme, attributeSet, i, i2) || (m3891p = m3891p(theme, attributeSet, i, i2)) == -1) {
                return;
            }
            m3893j(theme, m3891p);
        }
    }

    /* renamed from: j */
    private void m3893j(Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, C1896l.MaterialTextAppearance);
        int m3890q = m3890q(getContext(), obtainStyledAttributes, C1896l.MaterialTextAppearance_android_lineHeight, C1896l.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (m3890q >= 0) {
            setLineHeight(m3890q);
        }
    }

    /* renamed from: o */
    private static boolean m3892o(Context context) {
        return C1918b.m28689b(context, C1886b.textAppearanceLineHeightEnabled, true);
    }

    /* renamed from: p */
    private static int m3891p(Resources.Theme theme, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1896l.MaterialTextView, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C1896l.MaterialTextView_android_textAppearance, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: q */
    private static int m3890q(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            i = C1919c.m28684c(context, typedArray, iArr[i2], -1);
        }
        return i;
    }

    /* renamed from: r */
    private static boolean m3889r(Context context, Resources.Theme theme, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1896l.MaterialTextView, i, i2);
        boolean z = false;
        int m3890q = m3890q(context, obtainStyledAttributes, C1896l.MaterialTextView_android_lineHeight, C1896l.MaterialTextView_lineHeight);
        obtainStyledAttributes.recycle();
        if (m3890q != -1) {
            z = true;
        }
        return z;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (m3892o(context)) {
            m3893j(context.getTheme(), i);
        }
    }
}
