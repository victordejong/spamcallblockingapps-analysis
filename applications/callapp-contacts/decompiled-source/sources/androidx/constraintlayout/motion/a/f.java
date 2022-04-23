package androidx.constraintlayout.motion.a;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static String f1447a = "Oscillator";

    /* renamed from: d  reason: collision with root package name */
    public double[] f1450d;
    public int e;

    /* renamed from: b  reason: collision with root package name */
    public float[] f1448b = new float[0];

    /* renamed from: c  reason: collision with root package name */
    public double[] f1449c = new double[0];
    double f = 6.283185307179586d;
    public boolean g = false;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    private double c(double d2) {
        double d3;
        double d4 = 1.0d;
        if (d2 < 0.0d) {
            d3 = 0;
        } else {
            d3 = d2;
            if (d2 > 1.0d) {
                d3 = 4607182418800017408;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f1449c, d3);
        if (binarySearch <= 0) {
            if (binarySearch != 0) {
                int i = (-binarySearch) - 1;
                float[] fArr = this.f1448b;
                float f = fArr[i];
                int i2 = i - 1;
                double d5 = f - fArr[i2];
                double[] dArr = this.f1449c;
                double d6 = d5 / (dArr[i] - dArr[i2]);
                d4 = this.f1450d[i2] + ((fArr[i2] - (dArr[i2] * d6)) * (d3 - dArr[i2])) + ((d6 * ((d3 * d3) - (dArr[i2] * dArr[i2]))) / 2.0d);
            } else {
                d4 = 0.0d;
            }
        }
        return d4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    private double d(double d2) {
        double d3;
        double d4 = 0.0d;
        if (d2 <= 0.0d) {
            d3 = 4532020583610935537;
        } else {
            d3 = d2;
            if (d2 >= 1.0d) {
                d3 = 4607182409792818153;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f1449c, d3);
        if (binarySearch > 0) {
            return 0.0d;
        }
        if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.f1448b;
            float f = fArr[i];
            int i2 = i - 1;
            double d5 = f - fArr[i2];
            double[] dArr = this.f1449c;
            double d6 = d5 / (dArr[i] - dArr[i2]);
            d4 = (fArr[i2] - (d6 * dArr[i2])) + (d3 * d6);
        }
        return d4;
    }

    public final double a(double d2) {
        double abs;
        switch (this.e) {
            case 1:
                return Math.signum(0.5d - (c(d2) % 1.0d));
            case 2:
                abs = Math.abs((((c(d2) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((c(d2) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((c(d2) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f * c(d2));
            case 6:
                double abs2 = 1.0d - Math.abs(((c(d2) * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            default:
                return Math.sin(this.f * c(d2));
        }
        return 1.0d - abs;
    }

    public final void a(double d2, float f) {
        int length = this.f1448b.length + 1;
        int binarySearch = Arrays.binarySearch(this.f1449c, d2);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = (-binarySearch) - 1;
        }
        this.f1449c = Arrays.copyOf(this.f1449c, length);
        this.f1448b = Arrays.copyOf(this.f1448b, length);
        this.f1450d = new double[length];
        double[] dArr = this.f1449c;
        System.arraycopy(dArr, i, dArr, i + 1, (length - i) - 1);
        this.f1449c[i] = d2;
        this.f1448b[i] = f;
        this.g = false;
    }

    public final double b(double d2) {
        double signum;
        double d3;
        double d4;
        double d5;
        double sin;
        switch (this.e) {
            case 1:
                return 0.0d;
            case 2:
                d3 = d(d2) * 4.0d;
                signum = Math.signum((((c(d2) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                return d3 * signum;
            case 3:
                d4 = d(d2);
                return d4 * 2.0d;
            case 4:
                d4 = -d(d2);
                return d4 * 2.0d;
            case 5:
                d5 = (-this.f) * d(d2);
                sin = Math.sin(this.f * c(d2));
                return d5 * sin;
            case 6:
                d3 = d(d2) * 4.0d;
                signum = (((c(d2) * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                return d3 * signum;
            default:
                d5 = this.f * d(d2);
                sin = Math.cos(this.f * c(d2));
                return d5 * sin;
        }
    }

    public final String toString() {
        return "pos =" + Arrays.toString(this.f1449c) + " period=" + Arrays.toString(this.f1448b);
    }
}
