package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.a;
import com.google.android.material.h.b;
import com.google.android.material.h.c;
import com.google.android.material.theme.a.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textview/MaterialTextView.class */
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
        super(a.a(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        if (a(context2)) {
            Resources.Theme theme = context2.getTheme();
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, a.l.MaterialTextView, i, i2);
            boolean z = false;
            int a2 = a(context2, obtainStyledAttributes, a.l.MaterialTextView_android_lineHeight, a.l.MaterialTextView_lineHeight);
            obtainStyledAttributes.recycle();
            if (!(a2 != -1 ? true : z)) {
                TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, a.l.MaterialTextView, i, i2);
                int resourceId = obtainStyledAttributes2.getResourceId(a.l.MaterialTextView_android_textAppearance, -1);
                obtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    a(theme, resourceId);
                }
            }
        }
    }

    private static int a(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < 2 && i < 0; i2++) {
            i = c.a(context, typedArray, iArr[i2], -1);
        }
        return i;
    }

    private void a(Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, a.l.MaterialTextAppearance);
        int a2 = a(getContext(), obtainStyledAttributes, a.l.MaterialTextAppearance_android_lineHeight, a.l.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (a2 >= 0) {
            setLineHeight(a2);
        }
    }

    private static boolean a(Context context) {
        return b.a(context, a.b.textAppearanceLineHeightEnabled, true);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (a(context)) {
            a(context.getTheme(), i);
        }
    }
}
