package com.google.android.material.p370g;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.material.g.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/g/a.class */
public final class C14594a {
    private C14594a() {
    }

    /* renamed from: a */
    public static float m10663a(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: a */
    public static float m10662a(float f, float f2, float f3, float f4) {
        return m10660c(m10661b(f, f2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED), m10661b(f, f2, f3, BitmapDescriptorFactory.HUE_RED), m10661b(f, f2, f3, f4), m10661b(f, f2, BitmapDescriptorFactory.HUE_RED, f4));
    }

    /* renamed from: a */
    public static boolean m10664a(float f, float f2) {
        return f + 1.0E-4f >= f2;
    }

    /* renamed from: b */
    private static float m10661b(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: c */
    private static float m10660c(float f, float f2, float f3, float f4) {
        return (f <= f2 || f <= f3 || f <= f4) ? (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2 : f;
    }
}
