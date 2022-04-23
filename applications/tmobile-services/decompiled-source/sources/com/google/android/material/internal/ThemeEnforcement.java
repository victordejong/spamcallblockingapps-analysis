package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.C1027R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ThemeEnforcement.class */
public final class ThemeEnforcement {

    /* renamed from: a */
    private static final int[] f10943a = {C1027R.attr.colorPrimary};

    /* renamed from: b */
    private static final int[] f10944b = {C1027R.attr.colorPrimaryVariant};

    private ThemeEnforcement() {
    }

    /* renamed from: a */
    public static void m9452a(@NonNull Context context) {
        m9448e(context, f10943a, "Theme.AppCompat");
    }

    /* renamed from: b */
    private static void m9451b(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.ThemeEnforcement, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(C1027R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(C1027R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                m9450c(context);
            }
        }
        m9452a(context);
    }

    /* renamed from: c */
    public static void m9450c(@NonNull Context context) {
        m9448e(context, f10944b, "Theme.MaterialComponents");
    }

    /* renamed from: d */
    private static void m9449d(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @Nullable @StyleableRes int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.ThemeEnforcement, i, i2);
        boolean z = false;
        if (!obtainStyledAttributes.getBoolean(C1027R.styleable.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            z = m9447f(context, attributeSet, iArr, i, i2, iArr2);
        } else if (obtainStyledAttributes.getResourceId(C1027R.styleable.ThemeEnforcement_android_textAppearance, -1) != -1) {
            z = true;
        }
        obtainStyledAttributes.recycle();
        if (!z) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    /* renamed from: e */
    private static void m9448e(@NonNull Context context, @NonNull int[] iArr, String str) {
        if (!m9446g(context, iArr)) {
            throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
        }
    }

    /* renamed from: f */
    private static boolean m9447f(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @NonNull @StyleableRes int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        for (int i3 : iArr2) {
            if (obtainStyledAttributes.getResourceId(i3, -1) == -1) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    /* renamed from: g */
    private static boolean m9446g(@NonNull Context context, @NonNull int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i = 0; i < iArr.length; i++) {
            if (!obtainStyledAttributes.hasValue(i)) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    @NonNull
    /* renamed from: h */
    public static TypedArray m9445h(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        m9451b(context, attributeSet, i, i2);
        m9449d(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: i */
    public static TintTypedArray m9444i(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        m9451b(context, attributeSet, i, i2);
        m9449d(context, attributeSet, iArr, i, i2, iArr2);
        return TintTypedArray.m21244v(context, attributeSet, iArr, i, i2);
    }
}
