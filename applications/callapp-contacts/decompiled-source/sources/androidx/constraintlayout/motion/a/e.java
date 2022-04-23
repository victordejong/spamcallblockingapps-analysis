package androidx.constraintlayout.motion.a;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/e.class */
public final class e extends b {

    /* renamed from: a  reason: collision with root package name */
    private double[] f1444a;

    /* renamed from: b  reason: collision with root package name */
    private double[][] f1445b;

    /* renamed from: c  reason: collision with root package name */
    private double[][] f1446c;

    public e(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        int i = length - 1;
        double[][] dArr3 = new double[i][length2];
        double[][] dArr4 = new double[length][length2];
        for (int i2 = 0; i2 < length2; i2++) {
            int i3 = 0;
            while (i3 < i) {
                int i4 = i3 + 1;
                dArr3[i3][i2] = (dArr2[i4][i2] - dArr2[i3][i2]) / (dArr[i4] - dArr[i3]);
                if (i3 == 0) {
                    dArr4[i3][i2] = dArr3[i3][i2];
                } else {
                    dArr4[i3][i2] = (dArr3[i3 - 1][i2] + dArr3[i3][i2]) * 0.5d;
                }
                i3 = i4;
            }
            dArr4[i][i2] = dArr3[length - 2][i2];
        }
        for (int i5 = 0; i5 < i; i5++) {
            for (int i6 = 0; i6 < length2; i6++) {
                if (dArr3[i5][i6] == 0.0d) {
                    dArr4[i5][i6] = 0.0d;
                    dArr4[i5 + 1][i6] = 0.0d;
                } else {
                    double d2 = dArr4[i5][i6] / dArr3[i5][i6];
                    int i7 = i5 + 1;
                    double d3 = dArr4[i7][i6] / dArr3[i5][i6];
                    double hypot = Math.hypot(d2, d3);
                    if (hypot > 9.0d) {
                        double d4 = 3.0d / hypot;
                        dArr4[i5][i6] = d2 * d4 * dArr3[i5][i6];
                        dArr4[i7][i6] = d4 * d3 * dArr3[i5][i6];
                    }
                }
            }
        }
        this.f1444a = dArr;
        this.f1445b = dArr2;
        this.f1446c = dArr4;
    }

    private static double a(double d2, double d3, double d4, double d5, double d6, double d7) {
        double d8 = d3 * d3;
        double d9 = d8 * d3;
        double d10 = 3.0d * d8;
        double d11 = d2 * d7;
        double d12 = d2 * d6;
        return (((((((((((-2.0d) * d9) * d5) + (d10 * d5)) + ((d9 * 2.0d) * d4)) - (d10 * d4)) + d4) + (d11 * d9)) + (d9 * d12)) - (d11 * d8)) - (((d2 * 2.0d) * d6) * d8)) + (d12 * d3);
    }

    private static double b(double d2, double d3, double d4, double d5, double d6, double d7) {
        double d8 = d3 * d3;
        double d9 = d3 * 6.0d;
        double d10 = 3.0d * d2;
        return ((((((((((-6.0d) * d8) * d5) + (d9 * d5)) + ((6.0d * d8) * d4)) - (d9 * d4)) + ((d10 * d7) * d8)) + ((d10 * d6) * d8)) - (((2.0d * d2) * d7) * d3)) - (((4.0d * d2) * d6) * d3)) + (d2 * d6);
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final double a(double d2) {
        double[] dArr = this.f1444a;
        int length = dArr.length;
        if (d2 <= dArr[0]) {
            return this.f1445b[0][0];
        }
        int i = length - 1;
        if (d2 >= dArr[i]) {
            return this.f1445b[i][0];
        }
        int i2 = 0;
        while (i2 < i) {
            double[] dArr2 = this.f1444a;
            if (d2 == dArr2[i2]) {
                return this.f1445b[i2][0];
            }
            int i3 = i2 + 1;
            if (d2 < dArr2[i3]) {
                double d3 = dArr2[i3] - dArr2[i2];
                double d4 = (d2 - dArr2[i2]) / d3;
                double[][] dArr3 = this.f1445b;
                double d5 = dArr3[i2][0];
                double d6 = dArr3[i3][0];
                double[][] dArr4 = this.f1446c;
                return a(d3, d4, d5, d6, dArr4[i2][0], dArr4[i3][0]);
            }
            i2 = i3;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final void a(double d2, double[] dArr) {
        double[] dArr2 = this.f1444a;
        int length = dArr2.length;
        int length2 = this.f1445b[0].length;
        if (d2 <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f1445b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d2 >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f1445b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (i4 < i2) {
            if (d2 == this.f1444a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.f1445b[i4][i5];
                }
            }
            double[] dArr3 = this.f1444a;
            int i6 = i4 + 1;
            if (d2 < dArr3[i6]) {
                double d3 = dArr3[i6] - dArr3[i4];
                double d4 = (d2 - dArr3[i4]) / d3;
                for (int i7 = 0; i7 < length2; i7++) {
                    double[][] dArr4 = this.f1445b;
                    double d5 = dArr4[i4][i7];
                    double d6 = dArr4[i6][i7];
                    double[][] dArr5 = this.f1446c;
                    dArr[i7] = a(d3, d4, d5, d6, dArr5[i4][i7], dArr5[i6][i7]);
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final void a(double d2, float[] fArr) {
        double[] dArr = this.f1444a;
        int length = dArr.length;
        int length2 = this.f1445b[0].length;
        if (d2 <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f1445b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d2 >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f1445b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (i4 < i2) {
            if (d2 == this.f1444a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.f1445b[i4][i5];
                }
            }
            double[] dArr2 = this.f1444a;
            int i6 = i4 + 1;
            if (d2 < dArr2[i6]) {
                double d3 = dArr2[i6] - dArr2[i4];
                double d4 = (d2 - dArr2[i4]) / d3;
                for (int i7 = 0; i7 < length2; i7++) {
                    double[][] dArr3 = this.f1445b;
                    double d5 = dArr3[i4][i7];
                    double d6 = dArr3[i6][i7];
                    double[][] dArr4 = this.f1446c;
                    fArr[i7] = (float) a(d3, d4, d5, d6, dArr4[i4][i7], dArr4[i6][i7]);
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final double[] a() {
        return this.f1444a;
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final double b(double d2) {
        double[] dArr = this.f1444a;
        int length = dArr.length;
        if (d2 < dArr[0]) {
            d2 = dArr[0];
        } else {
            int i = length - 1;
            if (d2 >= dArr[i]) {
                d2 = dArr[i];
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            double[] dArr2 = this.f1444a;
            int i3 = i2 + 1;
            if (d2 <= dArr2[i3]) {
                double d3 = dArr2[i3] - dArr2[i2];
                double d4 = (d2 - dArr2[i2]) / d3;
                double[][] dArr3 = this.f1445b;
                double d5 = dArr3[i2][0];
                double d6 = dArr3[i3][0];
                double[][] dArr4 = this.f1446c;
                return b(d3, d4, d5, d6, dArr4[i2][0], dArr4[i3][0]) / d3;
            }
            i2 = i3;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final void b(double d2, double[] dArr) {
        double[] dArr2 = this.f1444a;
        int length = dArr2.length;
        int length2 = this.f1445b[0].length;
        if (d2 <= dArr2[0]) {
            d2 = dArr2[0];
        } else {
            int i = length - 1;
            if (d2 >= dArr2[i]) {
                d2 = dArr2[i];
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            double[] dArr3 = this.f1444a;
            int i3 = i2 + 1;
            if (d2 <= dArr3[i3]) {
                double d3 = dArr3[i3] - dArr3[i2];
                double d4 = (d2 - dArr3[i2]) / d3;
                for (int i4 = 0; i4 < length2; i4++) {
                    double[][] dArr4 = this.f1445b;
                    double d5 = dArr4[i2][i4];
                    double d6 = dArr4[i3][i4];
                    double[][] dArr5 = this.f1446c;
                    dArr[i4] = b(d3, d4, d5, d6, dArr5[i2][i4], dArr5[i3][i4]) / d3;
                }
                return;
            }
            i2 = i3;
        }
    }
}
