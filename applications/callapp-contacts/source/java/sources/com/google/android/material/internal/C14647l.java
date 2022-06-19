package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.C0370ab;
import com.google.android.material.C14376a;
/* renamed from: com.google.android.material.internal.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/l.class */
public final class C14647l {

    /* renamed from: a */
    private static final int[] f53435a = {C14376a.C14378b.colorPrimary};

    /* renamed from: b */
    private static final int[] f53436b = {C14376a.C14378b.colorPrimaryVariant};

    private C14647l() {
    }

    /* renamed from: a */
    public static TypedArray m10508a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m10509a(context, attributeSet, i, i2);
        m10503c(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: a */
    public static void m10510a(Context context) {
        m10506a(context, f53435a, "Theme.AppCompat");
    }

    /* renamed from: a */
    private static void m10509a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.ThemeEnforcement, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(C14376a.C14388l.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(C14376a.C14378b.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                m10505b(context);
            }
        }
        m10510a(context);
    }

    /* renamed from: a */
    private static void m10506a(Context context, int[] iArr, String str) {
        if (m10507a(context, iArr)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }

    /* renamed from: a */
    private static boolean m10507a(Context context, int[] iArr) {
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

    /* renamed from: b */
    public static C0370ab m10504b(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m10509a(context, attributeSet, i, i2);
        m10503c(context, attributeSet, iArr, i, i2, iArr2);
        return C0370ab.m45804a(context, attributeSet, iArr, i, i2);
    }

    /* renamed from: b */
    public static void m10505b(Context context) {
        m10506a(context, f53436b, "Theme.MaterialComponents");
    }

    /* renamed from: c */
    private static void m10503c(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.ThemeEnforcement, i, i2);
        boolean z = false;
        if (!obtainStyledAttributes.getBoolean(C14376a.C14388l.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            z = m10502d(context, attributeSet, iArr, i, i2, iArr2);
        } else if (obtainStyledAttributes.getResourceId(C14376a.C14388l.ThemeEnforcement_android_textAppearance, -1) != -1) {
            z = true;
        }
        obtainStyledAttributes.recycle();
        if (!z) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    /* renamed from: d */
    private static boolean m10502d(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
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
}
