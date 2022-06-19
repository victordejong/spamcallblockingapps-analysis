package com.google.android.material.p154l;
/* renamed from: com.google.android.material.l.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/l/a.class */
public final class C4713a {
    /* renamed from: a */
    public static float m2796a(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: a */
    public static float m2795a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: a */
    public static float m2794a(float f, float f2, float f3, float f4, float f5, float f6) {
        return m2792b(m2795a(f, f2, f3, f4), m2795a(f, f2, f5, f4), m2795a(f, f2, f5, f6), m2795a(f, f2, f3, f6));
    }

    /* renamed from: b */
    private static float m2792b(float f, float f2, float f3, float f4) {
        if (f <= f2 || f <= f3 || f <= f4) {
            f = (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2;
        }
        return f;
    }

    /* renamed from: b */
    public static boolean m2793b(float f, float f2, float f3) {
        return f + f3 >= f2;
    }
}
