package com.google.android.material.g;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/g/a.class */
public final class a {
    private a() {
    }

    public static float a(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    public static float a(float f, float f2, float f3, float f4) {
        return c(b(f, f2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED), b(f, f2, f3, BitmapDescriptorFactory.HUE_RED), b(f, f2, f3, f4), b(f, f2, BitmapDescriptorFactory.HUE_RED, f4));
    }

    public static boolean a(float f, float f2) {
        return f + 1.0E-4f >= f2;
    }

    private static float b(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    private static float c(float f, float f2, float f3, float f4) {
        return (f <= f2 || f <= f3 || f <= f4) ? (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2 : f;
    }
}
