package p1727n3.p1807k.p1812c;

import android.graphics.Color;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.c.a */
/* loaded from: classes-dex2jar.jar:n3/k/c/a.class */
public final class C26493a {

    /* renamed from: a */
    public static final ThreadLocal<double[]> f74275a = new ThreadLocal<>();

    /* renamed from: a */
    public static void m1758a(int i, int i2, int i3, float[] fArr) {
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
        fArr[0] = m1750i(f9, 0.0f, 360.0f);
        fArr[1] = m1750i(f2, 0.0f, 1.0f);
        fArr[2] = m1750i(f7, 0.0f, 1.0f);
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* renamed from: b */
    public static void m1757b(int i, int i2, int i3, double[] dArr) {
        if (dArr.length == 3) {
            double d = i / 255.0d;
            char pow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
            double d2 = i2 / 255.0d;
            char pow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
            double d3 = i3 / 255.0d;
            char pow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
            dArr[0] = ((51380 * pow3) + (11429 * pow2) + (46242 * pow)) * 100.0d;
            dArr[1] = ((27997 * pow3) + (11429 * pow2) + (38588 * pow)) * 100.0d;
            dArr[2] = ((pow3 * 8913) + (pow2 * 58930) + (pow * 20133)) * 100.0d;
            return;
        }
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    }

    /* renamed from: c */
    public static double m1756c(int i, int i2) {
        if (Color.alpha(i2) == 255) {
            int i3 = i;
            if (Color.alpha(i) < 255) {
                i3 = m1752g(i, i2);
            }
            double m1755d = m1755d(i3) + 0.05d;
            double m1755d2 = m1755d(i2) + 0.05d;
            return Math.max(m1755d, m1755d2) / Math.min(m1755d, m1755d2);
        }
        throw new IllegalArgumentException(C22128a.m8668S1(i2, C22128a.m8728C("background can not be translucent: #")));
    }

    /* renamed from: d */
    public static double m1755d(int i) {
        ThreadLocal<double[]> threadLocal = f74275a;
        double[] dArr = threadLocal.get();
        double[] dArr2 = dArr;
        if (dArr == null) {
            dArr2 = new double[3];
            threadLocal.set(dArr2);
        }
        m1757b(Color.red(i), Color.green(i), Color.blue(i), dArr2);
        return dArr2[1] / 100.0d;
    }

    /* renamed from: e */
    public static int m1754e(int i, int i2, float f) {
        int i3 = 255;
        if (Color.alpha(i2) == 255) {
            double d = f;
            if (m1756c(m1747l(i, 255), i2) < d) {
                return -1;
            }
            int i4 = 0;
            for (int i5 = 0; i5 <= 10 && i3 - i4 > 1; i5++) {
                int i6 = (i4 + i3) / 2;
                if (m1756c(m1747l(i, i6), i2) < d) {
                    i4 = i6;
                } else {
                    i3 = i6;
                }
            }
            return i3;
        }
        throw new IllegalArgumentException(C22128a.m8668S1(i2, C22128a.m8728C("background can not be translucent: #")));
    }

    /* renamed from: f */
    public static void m1753f(int i, double[] dArr) {
        m1757b(Color.red(i), Color.green(i), Color.blue(i), dArr);
        double d = dArr[0];
        double d2 = dArr[1];
        double d3 = dArr[2];
        if (dArr.length == 3) {
            double m1748k = m1748k(d / 95.047d);
            double m1748k2 = m1748k(d2 / 100.0d);
            double m1748k3 = m1748k(d3 / 108.883d);
            dArr[0] = Math.max((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE, (116.0d * m1748k2) - 16.0d);
            dArr[1] = (m1748k - m1748k2) * 500.0d;
            dArr[2] = (m1748k2 - m1748k3) * 200.0d;
            return;
        }
        throw new IllegalArgumentException("outLab must have a length of 3.");
    }

    /* renamed from: g */
    public static int m1752g(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - alpha2) * (255 - alpha)) / 255);
        return Color.argb(i3, m1751h(Color.red(i), alpha2, Color.red(i2), alpha, i3), m1751h(Color.green(i), alpha2, Color.green(i2), alpha, i3), m1751h(Color.blue(i), alpha2, Color.blue(i2), alpha, i3));
    }

    /* renamed from: h */
    public static int m1751h(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return C22128a.m8548y1(255, i2, i3 * i4, (i * 255) * i2) / (i5 * 255);
    }

    /* renamed from: i */
    public static float m1750i(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f;
            if (f > f3) {
                f2 = f3;
            }
        }
        return f2;
    }

    /* renamed from: j */
    public static int m1749j(int i, int i2, int i3) {
        if (i >= i2) {
            i2 = i;
            if (i > i3) {
                i2 = i3;
            }
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [double] */
    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    /* renamed from: k */
    public static double m1748k(double d) {
        return d > 0.008856d ? Math.pow(d, 0.3333333333333333d) : ((d * 903.3d) + 16.0d) / 116.0d;
    }

    /* renamed from: l */
    public static int m1747l(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }
}
