package p012b.p042i.p046j;

import android.graphics.Color;
/* renamed from: b.i.j.b */
/* loaded from: classes-dex2jar.jar:b/i/j/b.class */
public final class C0891b {

    /* renamed from: a */
    public static final ThreadLocal<double[]> f4083a = new ThreadLocal<>();

    /* renamed from: a */
    public static double m35611a(int i) {
        double[] a = m35613a();
        m35605a(i, a);
        return a[1] / 100.0d;
    }

    /* renamed from: a */
    public static double m35610a(int i, int i2) {
        if (Color.alpha(i2) == 255) {
            int i3 = i;
            if (Color.alpha(i) < 255) {
                i3 = m35602c(i, i2);
            }
            double a = m35611a(i3) + 0.05d;
            double a2 = m35611a(i2) + 0.05d;
            return Math.max(a, a2) / Math.min(a, a2);
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i2));
    }

    /* renamed from: a */
    public static float m35612a(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f;
            if (f > f3) {
                f2 = f3;
            }
        }
        return f2;
    }

    /* renamed from: a */
    public static int m35609a(int i, int i2, float f) {
        int i3 = 255;
        if (Color.alpha(i2) == 255) {
            double d = f;
            if (m35610a(m35601d(i, 255), i2) < d) {
                return -1;
            }
            int i4 = 0;
            for (int i5 = 0; i5 <= 10 && i3 - i4 > 1; i5++) {
                int i6 = (i4 + i3) / 2;
                if (m35610a(m35601d(i, i6), i2) < d) {
                    i4 = i6;
                } else {
                    i3 = i6;
                }
            }
            return i3;
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i2));
    }

    /* renamed from: a */
    public static int m35608a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    /* renamed from: a */
    public static void m35607a(int i, int i2, int i3, double[] dArr) {
        if (dArr.length == 3) {
            double d = i;
            Double.isNaN(d);
            double d2 = d / 255.0d;
            double pow = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
            double d3 = i2;
            Double.isNaN(d3);
            double d4 = d3 / 255.0d;
            double pow2 = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
            double d5 = i3;
            Double.isNaN(d5);
            double d6 = d5 / 255.0d;
            double pow3 = d6 < 0.04045d ? d6 / 12.92d : Math.pow((d6 + 0.055d) / 1.055d, 2.4d);
            dArr[0] = ((0.4124d * pow) + (0.3576d * pow2) + (0.1805d * pow3)) * 100.0d;
            dArr[1] = ((0.2126d * pow) + (0.7152d * pow2) + (0.0722d * pow3)) * 100.0d;
            dArr[2] = ((pow * 0.0193d) + (pow2 * 0.1192d) + (pow3 * 0.9505d)) * 100.0d;
            return;
        }
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    }

    /* renamed from: a */
    public static void m35606a(int i, int i2, int i3, float[] fArr) {
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
        if (f8 < 0.0f) {
            f9 = f8 + 360.0f;
        }
        fArr[0] = m35612a(f9, 0.0f, 360.0f);
        fArr[1] = m35612a(f2, 0.0f, 1.0f);
        fArr[2] = m35612a(f7, 0.0f, 1.0f);
    }

    /* renamed from: a */
    public static void m35605a(int i, double[] dArr) {
        m35607a(Color.red(i), Color.green(i), Color.blue(i), dArr);
    }

    /* renamed from: a */
    public static void m35604a(int i, float[] fArr) {
        m35606a(Color.red(i), Color.green(i), Color.blue(i), fArr);
    }

    /* renamed from: a */
    public static double[] m35613a() {
        double[] dArr = f4083a.get();
        double[] dArr2 = dArr;
        if (dArr == null) {
            dArr2 = new double[3];
            f4083a.set(dArr2);
        }
        return dArr2;
    }

    /* renamed from: b */
    public static int m35603b(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }

    /* renamed from: c */
    public static int m35602c(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int b = m35603b(alpha2, alpha);
        return Color.argb(b, m35608a(Color.red(i), alpha2, Color.red(i2), alpha, b), m35608a(Color.green(i), alpha2, Color.green(i2), alpha, b), m35608a(Color.blue(i), alpha2, Color.blue(i2), alpha, b));
    }

    /* renamed from: d */
    public static int m35601d(int i, int i2) {
        if (i2 >= 0 && i2 <= 255) {
            return (i & 16777215) | (i2 << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }
}
