package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.C14376a;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.theme.p376a.C14828a;
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
        super(C14828a.m9923a(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        if (m9931a(context2)) {
            Resources.Theme theme = context2.getTheme();
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C14376a.C14388l.MaterialTextView, i, i2);
            boolean z = false;
            int m9930a = m9930a(context2, obtainStyledAttributes, C14376a.C14388l.MaterialTextView_android_lineHeight, C14376a.C14388l.MaterialTextView_lineHeight);
            obtainStyledAttributes.recycle();
            if (m9930a != -1 ? true : z) {
                return;
            }
            TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, C14376a.C14388l.MaterialTextView, i, i2);
            int resourceId = obtainStyledAttributes2.getResourceId(C14376a.C14388l.MaterialTextView_android_textAppearance, -1);
            obtainStyledAttributes2.recycle();
            if (resourceId == -1) {
                return;
            }
            m9929a(theme, resourceId);
        }
    }

    /* renamed from: a */
    private static int m9930a(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < 2 && i < 0; i2++) {
            i = C14598c.m10652a(context, typedArray, iArr[i2], -1);
        }
        return i;
    }

    /* renamed from: a */
    private void m9929a(Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, C14376a.C14388l.MaterialTextAppearance);
        int m9930a = m9930a(getContext(), obtainStyledAttributes, C14376a.C14388l.MaterialTextAppearance_android_lineHeight, C14376a.C14388l.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (m9930a >= 0) {
            setLineHeight(m9930a);
        }
    }

    /* renamed from: a */
    private static boolean m9931a(Context context) {
        return C14597b.m10656a(context, C14376a.C14378b.textAppearanceLineHeightEnabled, true);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (m9931a(context)) {
            m9929a(context.getTheme(), i);
        }
    }
}
