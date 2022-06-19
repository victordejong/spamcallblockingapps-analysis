package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.C0317ap;
import com.google.android.material.C4492a;
/* renamed from: com.google.android.material.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i.class */
public final class C4702i {

    /* renamed from: a */
    private static final int[] f20388a = {C4492a.C4494b.colorPrimary};

    /* renamed from: b */
    private static final int[] f20389b = {C4492a.C4494b.colorPrimaryVariant};

    /* renamed from: c */
    private static final int[] f20390c = {16842752, C4492a.C4494b.theme};

    /* renamed from: d */
    private static final int[] f20391d = {C4492a.C4494b.materialThemeOverlay};

    /* renamed from: a */
    private static int m2827a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f20390c);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        if (resourceId != 0) {
            resourceId2 = resourceId;
        }
        return resourceId2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0021, code lost:
        if (((androidx.appcompat.view.C0175d) r5).m21983a() != r0) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Context m2826a(android.content.Context r5, android.util.AttributeSet r6, int r7, int r8) {
        /*
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            int r0 = m2819c(r0, r1, r2, r3)
            r7 = r0
            r0 = r5
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L46
            r0 = r5
            boolean r0 = r0 instanceof androidx.appcompat.view.C0175d
            if (r0 == 0) goto L24
            r0 = r5
            r9 = r0
            r0 = r5
            androidx.appcompat.view.d r0 = (androidx.appcompat.view.C0175d) r0
            int r0 = r0.m21983a()
            r1 = r7
            if (r0 == r1) goto L46
        L24:
            androidx.appcompat.view.d r0 = new androidx.appcompat.view.d
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r2, r3)
            r9 = r0
            r0 = r9
            r1 = r6
            int r0 = m2827a(r0, r1)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L49
            androidx.appcompat.view.d r0 = new androidx.appcompat.view.d
            r1 = r0
            r2 = r9
            r3 = r7
            r1.<init>(r2, r3)
            r9 = r0
        L46:
            r0 = r9
            return r0
        L49:
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.internal.C4702i.m2826a(android.content.Context, android.util.AttributeSet, int, int):android.content.Context");
    }

    /* renamed from: a */
    public static TypedArray m2825a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m2821b(context, attributeSet, i, i2);
        m2818c(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: a */
    public static void m2828a(Context context) {
        m2823a(context, f20388a, "Theme.AppCompat");
    }

    /* renamed from: a */
    private static void m2823a(Context context, int[] iArr, String str) {
        if (!m2824a(context, iArr)) {
            throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
        }
    }

    /* renamed from: a */
    private static boolean m2824a(Context context, int[] iArr) {
        boolean z = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        int i = 0;
        while (true) {
            if (i >= iArr.length) {
                obtainStyledAttributes.recycle();
                z = true;
                break;
            } else if (!obtainStyledAttributes.hasValue(i)) {
                obtainStyledAttributes.recycle();
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static C0317ap m2820b(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m2821b(context, attributeSet, i, i2);
        m2818c(context, attributeSet, iArr, i, i2, iArr2);
        return C0317ap.m21433a(context, attributeSet, iArr, i, i2);
    }

    /* renamed from: b */
    public static void m2822b(Context context) {
        m2823a(context, f20389b, "Theme.MaterialComponents");
    }

    /* renamed from: b */
    private static void m2821b(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4492a.C4504l.ThemeEnforcement, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(C4492a.C4504l.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(C4492a.C4494b.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                m2822b(context);
            }
        }
        m2828a(context);
    }

    /* renamed from: c */
    private static int m2819c(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f20391d, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: c */
    private static void m2818c(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        boolean z = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4492a.C4504l.ThemeEnforcement, i, i2);
        if (!obtainStyledAttributes.getBoolean(C4492a.C4504l.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            z = m2817d(context, attributeSet, iArr, i, i2, iArr2);
        } else if (obtainStyledAttributes.getResourceId(C4492a.C4504l.ThemeEnforcement_android_textAppearance, -1) != -1) {
            z = true;
        }
        obtainStyledAttributes.recycle();
        if (z) {
            return;
        }
        throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
    }

    /* renamed from: d */
    private static boolean m2817d(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        boolean z = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        int length = iArr2.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                obtainStyledAttributes.recycle();
                z = true;
                break;
            } else if (obtainStyledAttributes.getResourceId(iArr2[i3], -1) == -1) {
                obtainStyledAttributes.recycle();
                break;
            } else {
                i3++;
            }
        }
        return z;
    }
}
