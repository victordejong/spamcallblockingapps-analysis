package p087f0;

import android.graphics.Color;
/* renamed from: f0.a */
/* loaded from: classes-dex2jar.jar:f0/a.class */
public final class C2694a {
    static {
        new ThreadLocal();
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v31, types: [double] */
    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    /* renamed from: a */
    public static int m3258a(double d, double d2, double d3) {
        double d4 = (((-0.4986d) * d3) + (((-1.5372d) * d2) + (3.2406d * d))) / 100.0d;
        double d5 = ((0.0415d * d3) + ((1.8758d * d2) + ((-0.9689d) * d))) / 100.0d;
        double d6 = ((1.057d * d3) + (((-0.204d) * d2) + (0.0557d * d))) / 100.0d;
        return Color.rgb(m3255d((int) Math.round((d4 > 0.0031308d ? (Math.pow(d4, 0.4166666666666667d) * 1.055d) - 0.055d : d4 * 12.92d) * 0), 0, 255), m3255d((int) Math.round((d5 > 0.0031308d ? (Math.pow(d5, 0.4166666666666667d) * 1.055d) - 0.055d : d5 * 12.92d) * 0), 0, 255), m3255d((int) Math.round((d6 > 0.0031308d ? (Math.pow(d6, 0.4166666666666667d) * 1.055d) - 0.055d : d6 * 12.92d) * 0), 0, 255));
    }

    /* renamed from: b */
    public static int m3257b(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - alpha2) * (255 - alpha)) / 255);
        return Color.argb(i3, m3256c(Color.red(i), alpha2, Color.red(i2), alpha, i3), m3256c(Color.green(i), alpha2, Color.green(i2), alpha, i3), m3256c(Color.blue(i), alpha2, Color.blue(i2), alpha, i3));
    }

    /* renamed from: c */
    public static int m3256c(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((255 - i2) * (i3 * i4)) + ((i * 255) * i2)) / (i5 * 255);
    }

    /* renamed from: d */
    public static int m3255d(int i, int i2, int i3) {
        if (i >= i2) {
            i2 = i;
            if (i > i3) {
                i2 = i3;
            }
        }
        return i2;
    }

    /* renamed from: e */
    public static int m3254e(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }
}
