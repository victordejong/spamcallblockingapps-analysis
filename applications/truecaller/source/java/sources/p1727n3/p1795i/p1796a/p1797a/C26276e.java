package p1727n3.p1795i.p1796a.p1797a;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* renamed from: n3.i.a.a.e */
/* loaded from: classes-dex2jar.jar:n3/i/a/a/e.class */
public class C26276e extends AbstractC26271b {

    /* renamed from: a */
    public double[] f73289a;

    /* renamed from: b */
    public double[][] f73290b;

    /* renamed from: c */
    public double[][] f73291c;

    public C26276e(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        int i = length - 1;
        double[][] dArr3 = new double[i][length2];
        double[][] dArr4 = new double[length][length2];
        for (int i2 = 0; i2 < length2; i2++) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < i) {
                    int i5 = i4 + 1;
                    dArr3[i4][i2] = (dArr2[i5][i2] - dArr2[i4][i2]) / (dArr[i5] - dArr[i4]);
                    if (i4 == 0) {
                        dArr4[i4][i2] = dArr3[i4][i2];
                    } else {
                        dArr4[i4][i2] = (dArr3[i4 - 1][i2] + dArr3[i4][i2]) * 0.5d;
                    }
                    i3 = i5;
                }
            }
            dArr4[i][i2] = dArr3[length - 2][i2];
        }
        for (int i6 = 0; i6 < i; i6++) {
            for (int i7 = 0; i7 < length2; i7++) {
                if (dArr3[i6][i7] == PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                    dArr4[i6][i7] = 0.0d;
                    dArr4[i6 + 1][i7] = 0.0d;
                } else {
                    double d = dArr4[i6][i7] / dArr3[i6][i7];
                    int i8 = i6 + 1;
                    double d2 = dArr4[i8][i7] / dArr3[i6][i7];
                    double hypot = Math.hypot(d, d2);
                    if (hypot > 9.0d) {
                        double d3 = 3.0d / hypot;
                        dArr4[i6][i7] = d * d3 * dArr3[i6][i7];
                        dArr4[i8][i7] = d3 * d2 * dArr3[i6][i7];
                    }
                }
            }
        }
        this.f73289a = dArr;
        this.f73290b = dArr2;
        this.f73291c = dArr4;
    }

    /* renamed from: g */
    public static double m2223g(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d7 * d2;
        double d9 = 3.0d * d7;
        double d10 = d * d6;
        double d11 = d * d5;
        return (d11 * d2) + ((((d8 * d11) + ((d10 * d8) + (((((d8 * 2.0d) * d3) + ((d9 * d4) + (((-2.0d) * d8) * d4))) - (d9 * d3)) + d3))) - (d10 * d7)) - (((2.0d * d) * d5) * d7));
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: b */
    public double mo2228b(double d, int i) {
        double[] dArr = this.f73289a;
        int length = dArr.length;
        int i2 = 0;
        if (d <= dArr[0]) {
            return this.f73290b[0][i];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return this.f73290b[i3][i];
        }
        while (i2 < i3) {
            double[] dArr2 = this.f73289a;
            if (d == dArr2[i2]) {
                return this.f73290b[i2][i];
            }
            int i4 = i2 + 1;
            if (d < dArr2[i4]) {
                double d2 = dArr2[i4] - dArr2[i2];
                double d3 = (d - dArr2[i2]) / d2;
                double[][] dArr3 = this.f73290b;
                double d4 = dArr3[i2][i];
                double d5 = dArr3[i4][i];
                double[][] dArr4 = this.f73291c;
                return m2223g(d2, d3, d4, d5, dArr4[i2][i], dArr4[i4][i]);
            }
            i2 = i4;
        }
        return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: c */
    public void mo2227c(double d, double[] dArr) {
        double[] dArr2 = this.f73289a;
        int length = dArr2.length;
        int length2 = this.f73290b[0].length;
        if (d <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f73290b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f73290b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f73289a[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    dArr[i6] = this.f73290b[i5][i6];
                }
            }
            double[] dArr3 = this.f73289a;
            int i7 = i5 + 1;
            if (d < dArr3[i7]) {
                double d2 = dArr3[i7] - dArr3[i5];
                double d3 = (d - dArr3[i5]) / d2;
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr4 = this.f73290b;
                    double d4 = dArr4[i5][i8];
                    double d5 = dArr4[i7][i8];
                    double[][] dArr5 = this.f73291c;
                    dArr[i8] = m2223g(d2, d3, d4, d5, dArr5[i5][i8], dArr5[i7][i8]);
                }
                return;
            }
            i4 = i7;
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: d */
    public void mo2226d(double d, float[] fArr) {
        double[] dArr = this.f73289a;
        int length = dArr.length;
        int length2 = this.f73290b[0].length;
        if (d <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f73290b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f73290b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f73289a[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    fArr[i6] = (float) this.f73290b[i5][i6];
                }
            }
            double[] dArr2 = this.f73289a;
            int i7 = i5 + 1;
            if (d < dArr2[i7]) {
                double d2 = dArr2[i7] - dArr2[i5];
                double d3 = (d - dArr2[i5]) / d2;
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr3 = this.f73290b;
                    double d4 = dArr3[i5][i8];
                    double d5 = dArr3[i7][i8];
                    double[][] dArr4 = this.f73291c;
                    fArr[i8] = (float) m2223g(d2, d3, d4, d5, dArr4[i5][i8], dArr4[i7][i8]);
                }
                return;
            }
            i4 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r1v2, types: [double] */
    /* JADX WARN: Type inference failed for: r1v29, types: [double] */
    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: e */
    public void mo2225e(double d, double[] dArr) {
        ?? r18;
        ?? r0 = this.f73289a;
        int length = r0.length;
        int length2 = this.f73290b[0].length;
        if (d <= r0[0]) {
            r18 = r0[0];
        } else {
            int i = length - 1;
            int i2 = (d > r0[i] ? 1 : (d == r0[i] ? 0 : -1));
            r18 = d;
            if (i2 >= 0) {
                r18 = r0[i];
            }
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < length - 1) {
                double[] dArr2 = this.f73289a;
                int i5 = i4 + 1;
                if (r18 <= dArr2[i5]) {
                    double d2 = dArr2[i5] - dArr2[i4];
                    double d3 = (r18 - dArr2[i4]) / d2;
                    for (int i6 = 0; i6 < length2; i6++) {
                        double[][] dArr3 = this.f73290b;
                        double d4 = dArr3[i4][i6];
                        double d5 = dArr3[i5][i6];
                        double[][] dArr4 = this.f73291c;
                        double d6 = dArr4[i4][i6];
                        double d7 = dArr4[i5][i6];
                        double d8 = d3 * d3;
                        double d9 = d3 * 6.0d;
                        double d10 = 3.0d * d2;
                        dArr[i6] = ((d6 * d2) + (((((d10 * d6) * d8) + (((d10 * d7) * d8) + ((((6.0d * d8) * d4) + ((d5 * d9) + (((-6.0d) * d8) * d5))) - (d9 * d4)))) - (((2.0d * d2) * d7) * d3)) - (((4.0d * d2) * d6) * d3))) / d2;
                    }
                    return;
                }
                i3 = i5;
            } else {
                return;
            }
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: f */
    public double[] mo2224f() {
        return this.f73289a;
    }
}
