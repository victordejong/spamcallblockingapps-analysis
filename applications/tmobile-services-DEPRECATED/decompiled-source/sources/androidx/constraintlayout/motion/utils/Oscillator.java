package androidx.constraintlayout.motion.utils;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/Oscillator.class */
public class Oscillator {

    /* renamed from: c */
    double[] f1643c;

    /* renamed from: d */
    int f1644d;

    /* renamed from: a */
    float[] f1641a = new float[0];

    /* renamed from: b */
    double[] f1642b = new double[0];

    /* renamed from: e */
    double f1645e = 6.283185307179586d;

    /* renamed from: a */
    public void m20962a(double d, float f) {
        int length = this.f1641a.length + 1;
        int binarySearch = Arrays.binarySearch(this.f1642b, d);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = (-binarySearch) - 1;
        }
        this.f1642b = Arrays.copyOf(this.f1642b, length);
        this.f1641a = Arrays.copyOf(this.f1641a, length);
        this.f1643c = new double[length];
        double[] dArr = this.f1642b;
        System.arraycopy(dArr, i, dArr, i + 1, (length - i) - 1);
        this.f1642b[i] = d;
        this.f1641a[i] = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* renamed from: b */
    double m20961b(double d) {
        double d2;
        double d3 = 0.0d;
        if (d <= 0.0d) {
            d2 = 4532020583610935537;
        } else {
            d2 = d;
            if (d >= 1.0d) {
                d2 = 4607182409792818153;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f1642b, d2);
        if (binarySearch > 0) {
            return 0.0d;
        }
        if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.f1641a;
            float f = fArr[i];
            int i2 = i - 1;
            double d4 = f - fArr[i2];
            double[] dArr = this.f1642b;
            double d5 = d4 / (dArr[i] - dArr[i2]);
            d3 = (fArr[i2] - (d5 * dArr[i2])) + (d2 * d5);
        }
        return d3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* renamed from: c */
    double m20960c(double d) {
        double d2;
        double d3 = 1.0d;
        if (d < 0.0d) {
            d2 = 0;
        } else {
            d2 = d;
            if (d > 1.0d) {
                d2 = 4607182418800017408;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f1642b, d2);
        if (binarySearch <= 0) {
            if (binarySearch != 0) {
                int i = (-binarySearch) - 1;
                float[] fArr = this.f1641a;
                float f = fArr[i];
                int i2 = i - 1;
                double d4 = f - fArr[i2];
                double[] dArr = this.f1642b;
                double d5 = d4 / (dArr[i] - dArr[i2]);
                d3 = this.f1643c[i2] + ((fArr[i2] - (dArr[i2] * d5)) * (d2 - dArr[i2])) + ((d5 * ((d2 * d2) - (dArr[i2] * dArr[i2]))) / 2.0d);
            } else {
                d3 = 0.0d;
            }
        }
        return d3;
    }

    /* renamed from: d */
    public double m20959d(double d) {
        double b;
        double signum;
        double b2;
        double sin;
        double b3;
        switch (this.f1644d) {
            case 1:
                return 0.0d;
            case 2:
                b = m20961b(d) * 4.0d;
                signum = Math.signum((((m20960c(d) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                return b * signum;
            case 3:
                b2 = m20961b(d);
                return b2 * 2.0d;
            case 4:
                b2 = -m20961b(d);
                return b2 * 2.0d;
            case 5:
                b3 = (-this.f1645e) * m20961b(d);
                sin = Math.sin(this.f1645e * m20960c(d));
                return b3 * sin;
            case 6:
                b = m20961b(d) * 4.0d;
                signum = (((m20960c(d) * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                return b * signum;
            default:
                b3 = this.f1645e * m20961b(d);
                sin = Math.cos(this.f1645e * m20960c(d));
                return b3 * sin;
        }
    }

    /* renamed from: e */
    public double m20958e(double d) {
        double abs;
        switch (this.f1644d) {
            case 1:
                return Math.signum(0.5d - (m20960c(d) % 1.0d));
            case 2:
                abs = Math.abs((((m20960c(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((m20960c(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((m20960c(d) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f1645e * m20960c(d));
            case 6:
                double abs2 = 1.0d - Math.abs(((m20960c(d) * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            default:
                return Math.sin(this.f1645e * m20960c(d));
        }
        return 1.0d - abs;
    }

    /* renamed from: f */
    public void m20957f() {
        double d = 0.0d;
        int i = 0;
        while (true) {
            float[] fArr = this.f1641a;
            if (i >= fArr.length) {
                break;
            }
            d += fArr[i];
            i++;
        }
        int i2 = 1;
        double d2 = 0.0d;
        int i3 = 1;
        while (true) {
            float[] fArr2 = this.f1641a;
            if (i3 >= fArr2.length) {
                break;
            }
            int i4 = i3 - 1;
            float f = (fArr2[i4] + fArr2[i3]) / 2.0f;
            double[] dArr = this.f1642b;
            d2 += (dArr[i3] - dArr[i4]) * f;
            i3++;
        }
        int i5 = 0;
        while (true) {
            float[] fArr3 = this.f1641a;
            if (i5 >= fArr3.length) {
                break;
            }
            fArr3[i5] = (float) (fArr3[i5] * (d / d2));
            i5++;
        }
        this.f1643c[0] = 0.0d;
        while (true) {
            float[] fArr4 = this.f1641a;
            if (i2 < fArr4.length) {
                int i6 = i2 - 1;
                float f2 = (fArr4[i6] + fArr4[i2]) / 2.0f;
                double[] dArr2 = this.f1642b;
                double d3 = dArr2[i2];
                double d4 = dArr2[i6];
                double[] dArr3 = this.f1643c;
                dArr3[i2] = dArr3[i6] + ((d3 - d4) * f2);
                i2++;
            } else {
                return;
            }
        }
    }

    /* renamed from: g */
    public void m20956g(int i) {
        this.f1644d = i;
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.f1642b) + " period=" + Arrays.toString(this.f1641a);
    }
}
