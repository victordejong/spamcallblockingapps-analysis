package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.C0286e0;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1896l;
/* renamed from: com.google.android.material.internal.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/l.class */
public final class C8203l {

    /* renamed from: a */
    private static final int[] f37026a = {C1886b.colorPrimary};

    /* renamed from: b */
    private static final int[] f37027b = {C1886b.colorPrimaryVariant};

    /* renamed from: a */
    public static void m4469a(Context context) {
        m4465e(context, f37026a, "Theme.AppCompat");
    }

    /* renamed from: b */
    private static void m4468b(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.ThemeEnforcement, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(C1896l.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(C1886b.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                m4467c(context);
            }
        }
        m4469a(context);
    }

    /* renamed from: c */
    public static void m4467c(Context context) {
        m4465e(context, f37027b, "Theme.MaterialComponents");
    }

    /* renamed from: d */
    private static void m4466d(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.ThemeEnforcement, i, i2);
        boolean z = false;
        if (!obtainStyledAttributes.getBoolean(C1896l.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            z = m4464f(context, attributeSet, iArr, i, i2, iArr2);
        } else if (obtainStyledAttributes.getResourceId(C1896l.ThemeEnforcement_android_textAppearance, -1) != -1) {
            z = true;
        }
        obtainStyledAttributes.recycle();
        if (!z) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    /* renamed from: e */
    private static void m4465e(Context context, int[] iArr, String str) {
        if (m4463g(context, iArr)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }

    /* renamed from: f */
    private static boolean m4464f(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
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
    private static boolean m4463g(Context context, int[] iArr) {
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

    /* renamed from: h */
    public static TypedArray m4462h(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m4468b(context, attributeSet, i, i2);
        m4466d(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: i */
    public static C0286e0 m4461i(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m4468b(context, attributeSet, i, i2);
        m4466d(context, attributeSet, iArr, i, i2, iArr2);
        return C0286e0.m34946v(context, attributeSet, iArr, i, i2);
    }
}
