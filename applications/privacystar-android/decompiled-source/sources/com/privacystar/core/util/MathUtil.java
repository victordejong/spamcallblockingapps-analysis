package com.privacystar.core.util;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/MathUtil.class */
public class MathUtil {
    public static boolean almostEqual(double d, double d2) {
        return almostEqual(d, d2, 9.999999717180685E-10d);
    }

    public static boolean almostEqual(double d, double d2, double d3) {
        return Math.abs(d - d2) < d3;
    }

    public static boolean almostEqual(float f, float f2) {
        return almostEqual(f, f2, 1.0E-6f);
    }

    public static boolean almostEqual(float f, float f2, float f3) {
        return Math.abs(f - f2) < f3;
    }

    public static boolean isNegative(float f) {
        return f < 0.0f;
    }
}
