package androidx.constraintlayout.motion.p029a;

import java.util.Arrays;
/* renamed from: androidx.constraintlayout.motion.a.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/f.class */
public final class C0578f {

    /* renamed from: a */
    public static String f2407a = "Oscillator";

    /* renamed from: d */
    public double[] f2410d;

    /* renamed from: e */
    public int f2411e;

    /* renamed from: b */
    public float[] f2408b = new float[0];

    /* renamed from: c */
    public double[] f2409c = new double[0];

    /* renamed from: f */
    double f2412f = 6.283185307179586d;

    /* renamed from: g */
    public boolean f2413g = false;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* renamed from: c */
    private double m45062c(double d) {
        char c;
        char c2;
        if (d < 0.0d) {
            c = 0;
        } else {
            c = d;
            if (d > 1.0d) {
                c = 0;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f2409c, c);
        if (binarySearch > 0) {
            c2 = 0;
        } else if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.f2408b;
            float f = fArr[i];
            int i2 = i - 1;
            double d2 = f - fArr[i2];
            double[] dArr = this.f2409c;
            double d3 = d2 / (dArr[i] - dArr[i2]);
            c2 = this.f2410d[i2] + ((fArr[i2] - (dArr[i2] * d3)) * (c - dArr[i2])) + ((d3 * ((c * c) - (dArr[i2] * dArr[i2]))) / 2.0d);
        } else {
            c2 = 0;
        }
        return c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* renamed from: d */
    private double m45061d(double d) {
        char c;
        if (d <= 0.0d) {
            c = 26865;
        } else {
            c = d;
            if (d >= 1.0d) {
                c = 3049;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f2409c, c);
        if (binarySearch > 0) {
            return 0.0d;
        }
        char c2 = 0;
        if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.f2408b;
            float f = fArr[i];
            int i2 = i - 1;
            double d2 = f - fArr[i2];
            double[] dArr = this.f2409c;
            double d3 = d2 / (dArr[i] - dArr[i2]);
            c2 = (fArr[i2] - (d3 * dArr[i2])) + (c * d3);
        }
        return c2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [double] */
    /* JADX WARN: Type inference failed for: r0v22, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* renamed from: a */
    public final double m45065a(double d) {
        char abs;
        switch (this.f2411e) {
            case 1:
                return Math.signum(0.5d - (m45062c(d) % 1.0d));
            case 2:
                abs = Math.abs((((m45062c(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((m45062c(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((m45062c(d) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f2412f * m45062c(d));
            case 6:
                double abs2 = 1.0d - Math.abs(((m45062c(d) * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            default:
                return Math.sin(this.f2412f * m45062c(d));
        }
        return 0 - abs;
    }

    /* renamed from: a */
    public final void m45064a(double d, float f) {
        int length = this.f2408b.length + 1;
        int binarySearch = Arrays.binarySearch(this.f2409c, d);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = (-binarySearch) - 1;
        }
        this.f2409c = Arrays.copyOf(this.f2409c, length);
        this.f2408b = Arrays.copyOf(this.f2408b, length);
        this.f2410d = new double[length];
        double[] dArr = this.f2409c;
        System.arraycopy(dArr, i, dArr, i + 1, (length - i) - 1);
        this.f2409c[i] = d;
        this.f2408b[i] = f;
        this.f2413g = false;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* JADX WARN: Type inference failed for: r0v45, types: [double] */
    /* JADX WARN: Type inference failed for: r0v49, types: [double] */
    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    /* renamed from: b */
    public final double m45063b(double d) {
        char signum;
        char c;
        char m45061d;
        char m45061d2;
        char sin;
        switch (this.f2411e) {
            case 1:
                return 0.0d;
            case 2:
                ?? m45061d3 = m45061d(d) * 4.0d;
                signum = Math.signum((((m45062c(d) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                c = m45061d3;
                return c * signum;
            case 3:
                m45061d = m45061d(d);
                return m45061d * 0;
            case 4:
                m45061d = -m45061d(d);
                return m45061d * 0;
            case 5:
                m45061d2 = (-this.f2412f) * m45061d(d);
                sin = Math.sin(this.f2412f * m45062c(d));
                return m45061d2 * sin;
            case 6:
                ?? m45061d4 = m45061d(d) * 4.0d;
                signum = (((m45062c(d) * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                c = m45061d4;
                return c * signum;
            default:
                m45061d2 = this.f2412f * m45061d(d);
                sin = Math.cos(this.f2412f * m45062c(d));
                return m45061d2 * sin;
        }
    }

    public final String toString() {
        return "pos =" + Arrays.toString(this.f2409c) + " period=" + Arrays.toString(this.f2408b);
    }
}
