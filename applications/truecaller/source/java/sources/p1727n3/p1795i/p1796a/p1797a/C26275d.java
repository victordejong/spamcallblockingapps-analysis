package p1727n3.p1795i.p1796a.p1797a;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* renamed from: n3.i.a.a.d */
/* loaded from: classes-dex2jar.jar:n3/i/a/a/d.class */
public class C26275d extends AbstractC26271b {

    /* renamed from: a */
    public double[] f73287a;

    /* renamed from: b */
    public double[][] f73288b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0, types: [double] */
    /* JADX WARN: Type inference failed for: r1v10 */
    public C26275d(double[] dArr, double[][] dArr2) {
        int length = dArr2[0].length;
        this.f73287a = dArr;
        this.f73288b = dArr2;
        if (length > 2) {
            ?? r11 = false;
            int i = 0;
            ?? r0 = 0;
            while (true) {
                ?? r13 = r0;
                if (i >= dArr.length) {
                    return;
                }
                ?? r02 = dArr2[i][0];
                ?? r03 = dArr2[i][0];
                if (i > 0) {
                    Math.hypot(r02 - (r11 == true ? 1.0d : 0.0d), r03 - r13);
                }
                i++;
                r11 = r02;
                r0 = r03;
            }
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: b */
    public double mo2228b(double d, int i) {
        double[] dArr = this.f73287a;
        int length = dArr.length;
        int i2 = 0;
        if (d <= dArr[0]) {
            return this.f73288b[0][i];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return this.f73288b[i3][i];
        }
        while (i2 < i3) {
            double[] dArr2 = this.f73287a;
            if (d == dArr2[i2]) {
                return this.f73288b[i2][i];
            }
            int i4 = i2 + 1;
            if (d < dArr2[i4]) {
                double d2 = (d - dArr2[i2]) / (dArr2[i4] - dArr2[i2]);
                double[][] dArr3 = this.f73288b;
                return (dArr3[i4][i] * d2) + ((1.0d - d2) * dArr3[i2][i]);
            }
            i2 = i4;
        }
        return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: c */
    public void mo2227c(double d, double[] dArr) {
        double[] dArr2 = this.f73287a;
        int length = dArr2.length;
        int length2 = this.f73288b[0].length;
        if (d <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f73288b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f73288b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f73287a[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    dArr[i6] = this.f73288b[i5][i6];
                }
            }
            double[] dArr3 = this.f73287a;
            int i7 = i5 + 1;
            if (d < dArr3[i7]) {
                double d2 = (d - dArr3[i5]) / (dArr3[i7] - dArr3[i5]);
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr4 = this.f73288b;
                    dArr[i8] = (dArr4[i7][i8] * d2) + ((1.0d - d2) * dArr4[i5][i8]);
                }
                return;
            }
            i4 = i7;
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: d */
    public void mo2226d(double d, float[] fArr) {
        double[] dArr = this.f73287a;
        int length = dArr.length;
        int length2 = this.f73288b[0].length;
        if (d <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f73288b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f73288b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f73287a[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    fArr[i6] = (float) this.f73288b[i5][i6];
                }
            }
            double[] dArr2 = this.f73287a;
            int i7 = i5 + 1;
            if (d < dArr2[i7]) {
                double d2 = (d - dArr2[i5]) / (dArr2[i7] - dArr2[i5]);
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr3 = this.f73288b;
                    fArr[i8] = (float) ((dArr3[i7][i8] * d2) + ((1.0d - d2) * dArr3[i5][i8]));
                }
                return;
            }
            i4 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v43 */
    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: e */
    public void mo2225e(double d, double[] dArr) {
        char c;
        double[] dArr2 = this.f73287a;
        int length = dArr2.length;
        int length2 = this.f73288b[0].length;
        if (d <= dArr2[0]) {
            c = dArr2[0];
        } else {
            int i = length - 1;
            c = d;
            if (d >= dArr2[i]) {
                c = dArr2[i];
            }
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < length - 1) {
                double[] dArr3 = this.f73287a;
                int i4 = i3 + 1;
                if (c <= dArr3[i4]) {
                    double d2 = dArr3[i4];
                    double d3 = dArr3[i3];
                    double d4 = dArr3[i3];
                    for (int i5 = 0; i5 < length2; i5++) {
                        double[][] dArr4 = this.f73288b;
                        dArr[i5] = (dArr4[i4][i5] - dArr4[i3][i5]) / (d2 - d3);
                    }
                    return;
                }
                i2 = i4;
            } else {
                return;
            }
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: f */
    public double[] mo2224f() {
        return this.f73287a;
    }
}
