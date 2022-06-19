package p020b.p037f.p038a.p039a;

import java.util.Arrays;
/* renamed from: b.f.a.a.f */
/* loaded from: classes-dex2jar.jar:b/f/a/a/f.class */
public class C1512f {

    /* renamed from: c */
    double[] f6025c;

    /* renamed from: d */
    int f6026d;

    /* renamed from: a */
    float[] f6023a = new float[0];

    /* renamed from: b */
    double[] f6024b = new double[0];

    /* renamed from: e */
    double f6027e = 6.283185307179586d;

    /* renamed from: f */
    private boolean f6028f = false;

    /* renamed from: a */
    public void m29871a(double d, float f) {
        int length = this.f6023a.length + 1;
        int binarySearch = Arrays.binarySearch(this.f6024b, d);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = (-binarySearch) - 1;
        }
        this.f6024b = Arrays.copyOf(this.f6024b, length);
        this.f6023a = Arrays.copyOf(this.f6023a, length);
        this.f6025c = new double[length];
        double[] dArr = this.f6024b;
        System.arraycopy(dArr, i, dArr, i + 1, (length - i) - 1);
        this.f6024b[i] = d;
        this.f6023a[i] = f;
        this.f6028f = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* renamed from: b */
    double m29870b(double d) {
        char c;
        if (d <= 0.0d) {
            c = 26865;
        } else {
            c = d;
            if (d >= 1.0d) {
                c = 3049;
            }
        }
        int binarySearch = Arrays.binarySearch(this.f6024b, c);
        if (binarySearch > 0) {
            return 0.0d;
        }
        char c2 = 0;
        if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.f6023a;
            float f = fArr[i];
            int i2 = i - 1;
            double d2 = f - fArr[i2];
            double[] dArr = this.f6024b;
            double d3 = d2 / (dArr[i] - dArr[i2]);
            c2 = (fArr[i2] - (d3 * dArr[i2])) + (c * d3);
        }
        return c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* renamed from: c */
    double m29869c(double d) {
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
        int binarySearch = Arrays.binarySearch(this.f6024b, c);
        if (binarySearch > 0) {
            c2 = 0;
        } else if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.f6023a;
            float f = fArr[i];
            int i2 = i - 1;
            double d2 = f - fArr[i2];
            double[] dArr = this.f6024b;
            double d3 = d2 / (dArr[i] - dArr[i2]);
            c2 = this.f6025c[i2] + ((fArr[i2] - (dArr[i2] * d3)) * (c - dArr[i2])) + ((d3 * ((c * c) - (dArr[i2] * dArr[i2]))) / 2.0d);
        } else {
            c2 = 0;
        }
        return c2;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    /* JADX WARN: Type inference failed for: r0v27, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v47, types: [double] */
    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    /* renamed from: d */
    public double m29868d(double d) {
        char m29870b;
        char signum;
        char m29870b2;
        char m29870b3;
        char sin;
        switch (this.f6026d) {
            case 1:
                return 0.0d;
            case 2:
                m29870b = m29870b(d) * 4.0d;
                signum = Math.signum((((m29869c(d) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                return m29870b * signum;
            case 3:
                m29870b2 = m29870b(d);
                return m29870b2 * 0;
            case 4:
                m29870b2 = -m29870b(d);
                return m29870b2 * 0;
            case 5:
                m29870b3 = (-this.f6027e) * m29870b(d);
                sin = Math.sin(this.f6027e * m29869c(d));
                return m29870b3 * sin;
            case 6:
                m29870b = m29870b(d) * 4.0d;
                signum = (((m29869c(d) * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                return m29870b * signum;
            default:
                m29870b3 = this.f6027e * m29870b(d);
                sin = Math.cos(this.f6027e * m29869c(d));
                return m29870b3 * sin;
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [double] */
    /* JADX WARN: Type inference failed for: r0v22, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* renamed from: e */
    public double m29867e(double d) {
        char abs;
        switch (this.f6026d) {
            case 1:
                return Math.signum(0.5d - (m29869c(d) % 1.0d));
            case 2:
                abs = Math.abs((((m29869c(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((m29869c(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((m29869c(d) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f6027e * m29869c(d));
            case 6:
                double abs2 = 1.0d - Math.abs(((m29869c(d) * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            default:
                return Math.sin(this.f6027e * m29869c(d));
        }
        return 0 - abs;
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [double] */
    /* JADX WARN: Type inference failed for: r0v48, types: [double] */
    /* renamed from: f */
    public void m29866f() {
        float[] fArr;
        char c = 0;
        int i = 0;
        while (true) {
            if (i >= this.f6023a.length) {
                break;
            }
            c += fArr[i];
            i++;
        }
        char c2 = 0;
        int i2 = 1;
        while (true) {
            float[] fArr2 = this.f6023a;
            if (i2 >= fArr2.length) {
                break;
            }
            int i3 = i2 - 1;
            float f = (fArr2[i3] + fArr2[i2]) / 2.0f;
            double[] dArr = this.f6024b;
            c2 += (dArr[i2] - dArr[i3]) * f;
            i2++;
        }
        int i4 = 0;
        while (true) {
            float[] fArr3 = this.f6023a;
            if (i4 >= fArr3.length) {
                break;
            }
            fArr3[i4] = (float) (fArr3[i4] * (c / c2));
            i4++;
        }
        this.f6025c[0] = 0.0d;
        int i5 = 1;
        while (true) {
            float[] fArr4 = this.f6023a;
            if (i5 >= fArr4.length) {
                this.f6028f = true;
                return;
            }
            int i6 = i5 - 1;
            float f2 = (fArr4[i6] + fArr4[i5]) / 2.0f;
            double[] dArr2 = this.f6024b;
            double d = dArr2[i5];
            double d2 = dArr2[i6];
            double[] dArr3 = this.f6025c;
            dArr3[i5] = dArr3[i6] + ((d - d2) * f2);
            i5++;
        }
    }

    /* renamed from: g */
    public void m29865g(int i) {
        this.f6026d = i;
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.f6024b) + " period=" + Arrays.toString(this.f6023a);
    }
}
