package com.google.android.material.theme.p275a;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import p020b.p021a.p028o.C1458d;
import p078c.p084c.p085a.p096b.C1886b;
/* renamed from: com.google.android.material.theme.a.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/theme/a/a.class */
public class C8328a {

    /* renamed from: a */
    private static final int[] f37547a = {16842752, C1886b.theme};

    /* renamed from: b */
    private static final int[] f37548b = {C1886b.materialThemeOverlay};

    /* renamed from: a */
    private static int m3883a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f37547a);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        if (resourceId == 0) {
            resourceId = resourceId2;
        }
        return resourceId;
    }

    /* renamed from: b */
    private static int m3882b(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f37548b, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: c */
    public static Context m3881c(Context context, AttributeSet attributeSet, int i, int i2) {
        int m3882b = m3882b(context, attributeSet, i, i2);
        boolean z = (context instanceof C1458d) && ((C1458d) context).m30039c() == m3882b;
        if (m3882b == 0 || z) {
            return context;
        }
        C1458d c1458d = new C1458d(context, m3882b);
        int m3883a = m3883a(context, attributeSet);
        if (m3883a != 0) {
            c1458d.getTheme().applyStyle(m3883a, true);
        }
        return c1458d;
    }
}
