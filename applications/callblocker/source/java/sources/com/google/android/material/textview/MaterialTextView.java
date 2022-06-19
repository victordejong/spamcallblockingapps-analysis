package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.C4492a;
import com.google.android.material.p156n.C4717b;
import com.google.android.material.p156n.C4718c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textview/MaterialTextView.class */
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
        super(context, attributeSet, i);
        int m2220a;
        if (m2224a(context)) {
            Resources.Theme theme = context.getTheme();
            if (m2223a(context, theme, attributeSet, i, i2) || (m2220a = m2220a(theme, attributeSet, i, i2)) == -1) {
                return;
            }
            m2221a(theme, m2220a);
        }
    }

    /* renamed from: a */
    private static int m2222a(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            i = C4718c.m2783a(context, typedArray, iArr[i2], -1);
        }
        return i;
    }

    /* renamed from: a */
    private static int m2220a(Resources.Theme theme, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C4492a.C4504l.MaterialTextView, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C4492a.C4504l.MaterialTextView_android_textAppearance, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: a */
    private void m2221a(Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, C4492a.C4504l.MaterialTextAppearance);
        int m2222a = m2222a(getContext(), obtainStyledAttributes, C4492a.C4504l.MaterialTextAppearance_android_lineHeight, C4492a.C4504l.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (m2222a >= 0) {
            setLineHeight(m2222a);
        }
    }

    /* renamed from: a */
    private static boolean m2224a(Context context) {
        return C4717b.m2786a(context, C4492a.C4494b.textAppearanceLineHeightEnabled, true);
    }

    /* renamed from: a */
    private static boolean m2223a(Context context, Resources.Theme theme, AttributeSet attributeSet, int i, int i2) {
        boolean z = true;
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C4492a.C4504l.MaterialTextView, i, i2);
        int m2222a = m2222a(context, obtainStyledAttributes, C4492a.C4504l.MaterialTextView_android_lineHeight, C4492a.C4504l.MaterialTextView_lineHeight);
        obtainStyledAttributes.recycle();
        if (m2222a == -1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (m2224a(context)) {
            m2221a(context.getTheme(), i);
        }
    }
}
