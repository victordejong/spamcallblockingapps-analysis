package androidx.core.graphics;

import android.graphics.Color;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.core.graphics.a */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/a.class */
public final class C0834a {

    /* renamed from: a */
    private static final ThreadLocal<double[]> f3561a = new ThreadLocal<>();

    private C0834a() {
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    /* JADX WARN: Type inference failed for: r0v45, types: [double] */
    /* JADX WARN: Type inference failed for: r0v47, types: [double] */
    /* JADX WARN: Type inference failed for: r0v51, types: [double] */
    /* JADX WARN: Type inference failed for: r0v53, types: [double] */
    /* renamed from: a */
    private static double m44404a(int i) {
        ThreadLocal<double[]> threadLocal = f3561a;
        double[] dArr = threadLocal.get();
        double[] dArr2 = dArr;
        if (dArr == null) {
            dArr2 = new double[3];
            threadLocal.set(dArr2);
        }
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        if (dArr2.length == 3) {
            double d = red / 255.0d;
            char pow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
            double d2 = green / 255.0d;
            char pow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
            double d3 = blue / 255.0d;
            char pow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
            dArr2[0] = ((46242 * pow) + (11429 * pow2) + (51380 * pow3)) * 100.0d;
            dArr2[1] = ((38588 * pow) + (11429 * pow2) + (27997 * pow3)) * 100.0d;
            dArr2[2] = ((pow * 20133) + (pow2 * 58930) + (pow3 * 8913)) * 100.0d;
            return dArr2[1] / 100.0d;
        }
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    }

    /* renamed from: a */
    private static float m44405a(float f, float f2) {
        return f < BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : f > f2 ? f2 : f;
    }

    /* renamed from: a */
    public static int m44403a(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - alpha) * (255 - alpha2)) / 255);
        return Color.argb(i3, m44401a(Color.red(i), alpha2, Color.red(i2), alpha, i3), m44401a(Color.green(i), alpha2, Color.green(i2), alpha, i3), m44401a(Color.blue(i), alpha2, Color.blue(i2), alpha, i3));
    }

    /* renamed from: a */
    public static int m44402a(int i, int i2, float f) {
        int i3 = 255;
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i2));
        }
        double d = f;
        if (m44395c(m44396b(i, 255), i2) < d) {
            return -1;
        }
        int i4 = 0;
        for (int i5 = 0; i5 <= 10 && i3 - i4 > 1; i5++) {
            int i6 = (i4 + i3) / 2;
            if (m44395c(m44396b(i, i6), i2) < d) {
                i4 = i6;
            } else {
                i3 = i6;
            }
        }
        return i3;
    }

    /* renamed from: a */
    private static int m44401a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    /* renamed from: a */
    public static int m44398a(float[] fArr) {
        int i;
        int i2;
        int i3 = 0;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float abs = (1.0f - Math.abs((f3 * 2.0f) - 1.0f)) * f2;
        float f4 = f3 - (0.5f * abs);
        float abs2 = (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f)) * abs;
        switch (((int) f) / 60) {
            case 0:
                i3 = Math.round((abs + f4) * 255.0f);
                i = Math.round((abs2 + f4) * 255.0f);
                i2 = Math.round(f4 * 255.0f);
                break;
            case 1:
                i3 = Math.round((abs2 + f4) * 255.0f);
                i = Math.round((abs + f4) * 255.0f);
                i2 = Math.round(f4 * 255.0f);
                break;
            case 2:
                i3 = Math.round(f4 * 255.0f);
                i = Math.round((abs + f4) * 255.0f);
                i2 = Math.round((abs2 + f4) * 255.0f);
                break;
            case 3:
                i3 = Math.round(f4 * 255.0f);
                i = Math.round((abs2 + f4) * 255.0f);
                i2 = Math.round((abs + f4) * 255.0f);
                break;
            case 4:
                i3 = Math.round((abs2 + f4) * 255.0f);
                i = Math.round(f4 * 255.0f);
                i2 = Math.round((abs + f4) * 255.0f);
                break;
            case 5:
            case 6:
                i3 = Math.round((abs + f4) * 255.0f);
                i = Math.round(f4 * 255.0f);
                i2 = Math.round((abs2 + f4) * 255.0f);
                break;
            default:
                i2 = 0;
                i = 0;
                break;
        }
        return Color.rgb(m44397b(i3), m44397b(i), m44397b(i2));
    }

    /* renamed from: a */
    public static void m44400a(int i, int i2, int i3, float[] fArr) {
        float f;
        float f2;
        float f3 = i / 255.0f;
        float f4 = i2 / 255.0f;
        float f5 = i3 / 255.0f;
        float max = Math.max(f3, Math.max(f4, f5));
        float min = Math.min(f3, Math.min(f4, f5));
        float f6 = max - min;
        float f7 = (max + min) / 2.0f;
        if (max == min) {
            f = 0.0f;
            f2 = 0.0f;
        } else {
            f = max == f3 ? ((f4 - f5) / f6) % 6.0f : max == f4 ? ((f5 - f3) / f6) + 2.0f : 4.0f + ((f3 - f4) / f6);
            f2 = f6 / (1.0f - Math.abs((2.0f * f7) - 1.0f));
        }
        float f8 = (f * 60.0f) % 360.0f;
        float f9 = f8;
        if (f8 < BitmapDescriptorFactory.HUE_RED) {
            f9 = f8 + 360.0f;
        }
        fArr[0] = m44405a(f9, 360.0f);
        fArr[1] = m44405a(f2, 1.0f);
        fArr[2] = m44405a(f7, 1.0f);
    }

    /* renamed from: a */
    public static void m44399a(int i, float[] fArr) {
        m44400a(Color.red(i), Color.green(i), Color.blue(i), fArr);
    }

    /* renamed from: b */
    private static int m44397b(int i) {
        if (i < 0) {
            return 0;
        }
        if (i <= 255) {
            return i;
        }
        return 255;
    }

    /* renamed from: b */
    public static int m44396b(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }

    /* renamed from: c */
    private static double m44395c(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i2));
        }
        int i3 = i;
        if (Color.alpha(i) < 255) {
            i3 = m44403a(i, i2);
        }
        double m44404a = m44404a(i3) + 0.05d;
        double m44404a2 = m44404a(i2) + 0.05d;
        return Math.max(m44404a, m44404a2) / Math.min(m44404a, m44404a2);
    }
}
