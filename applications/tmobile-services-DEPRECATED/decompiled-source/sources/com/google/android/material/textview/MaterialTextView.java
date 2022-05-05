package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.C1027R;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textview/MaterialTextView.class */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(@NonNull Context context) {
        this(context, null);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, i2), attributeSet, i);
        int h;
        Context context2 = getContext();
        if (m8709g(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (!m8706j(context2, theme, attributeSet, i, i2) && (h = m8708h(theme, attributeSet, i, i2)) != -1) {
                m8710f(theme, h);
            }
        }
    }

    /* renamed from: f */
    private void m8710f(@NonNull Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, C1027R.styleable.MaterialTextAppearance);
        int i2 = m8707i(getContext(), obtainStyledAttributes, C1027R.styleable.MaterialTextAppearance_android_lineHeight, C1027R.styleable.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (i2 >= 0) {
            setLineHeight(i2);
        }
    }

    /* renamed from: g */
    private static boolean m8709g(Context context) {
        return MaterialAttributes.m9397b(context, C1027R.attr.textAppearanceLineHeightEnabled, true);
    }

    /* renamed from: h */
    private static int m8708h(@NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1027R.styleable.MaterialTextView, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C1027R.styleable.MaterialTextView_android_textAppearance, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: i */
    private static int m8707i(@NonNull Context context, @NonNull TypedArray typedArray, @NonNull @StyleableRes int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            i = MaterialResources.m9392c(context, typedArray, iArr[i2], -1);
        }
        return i;
    }

    /* renamed from: j */
    private static boolean m8706j(@NonNull Context context, @NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1027R.styleable.MaterialTextView, i, i2);
        boolean z = false;
        int i3 = m8707i(context, obtainStyledAttributes, C1027R.styleable.MaterialTextView_android_lineHeight, C1027R.styleable.MaterialTextView_lineHeight);
        obtainStyledAttributes.recycle();
        if (i3 != -1) {
            z = true;
        }
        return z;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i) {
        super.setTextAppearance(context, i);
        if (m8709g(context)) {
            m8710f(context.getTheme(), i);
        }
    }
}
