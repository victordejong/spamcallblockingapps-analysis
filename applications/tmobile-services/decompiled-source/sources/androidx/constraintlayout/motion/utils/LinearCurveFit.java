package androidx.constraintlayout.motion.utils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/LinearCurveFit.class */
public class LinearCurveFit extends CurveFit {

    /* renamed from: a */
    private double[] f1636a;

    /* renamed from: b */
    private double[][] f1637b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LinearCurveFit(double[] r8, double[][] r9) {
        /*
            r7 = this;
            r0 = r7
            r0.<init>()
            r0 = r8
            int r0 = r0.length
            r10 = r0
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            int r0 = r0.length
            r10 = r0
            r0 = r7
            r1 = r8
            r0.f1636a = r1
            r0 = r7
            r1 = r9
            r0.f1637b = r1
            r0 = r10
            r1 = 2
            if (r0 <= r1) goto L_0x0057
            r0 = 0
            r11 = r0
            r0 = 0
            r13 = r0
            r0 = 0
            r10 = r0
        L_0x0023:
            r0 = r10
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0057
            r0 = r9
            r1 = r10
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r15 = r0
            r0 = r9
            r1 = r10
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r17 = r0
            r0 = r10
            if (r0 <= 0) goto L_0x0049
            r0 = r15
            r1 = r11
            double r0 = r0 - r1
            r1 = r17
            r2 = r13
            double r1 = r1 - r2
            double r0 = java.lang.Math.hypot(r0, r1)
        L_0x0049:
            int r10 = r10 + 1
            r0 = r15
            r11 = r0
            r0 = r17
            r13 = r0
            goto L_0x0023
        L_0x0057:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.LinearCurveFit.<init>(double[], double[][]):void");
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: c */
    public double mo20970c(double d, int i) {
        double[] dArr = this.f1636a;
        int length = dArr.length;
        int i2 = 0;
        if (d <= dArr[0]) {
            return this.f1637b[0][i];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return this.f1637b[i3][i];
        }
        while (i2 < i3) {
            double[] dArr2 = this.f1636a;
            if (d == dArr2[i2]) {
                return this.f1637b[i2][i];
            }
            int i4 = i2 + 1;
            if (d < dArr2[i4]) {
                double d2 = (d - dArr2[i2]) / (dArr2[i4] - dArr2[i2]);
                double[][] dArr3 = this.f1637b;
                return (dArr3[i2][i] * (1.0d - d2)) + (dArr3[i4][i] * d2);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: d */
    public void mo20969d(double d, double[] dArr) {
        double[] dArr2 = this.f1636a;
        int length = dArr2.length;
        int length2 = this.f1637b[0].length;
        if (d <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f1637b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f1637b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (i4 < i2) {
            if (d == this.f1636a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.f1637b[i4][i5];
                }
            }
            double[] dArr3 = this.f1636a;
            int i6 = i4 + 1;
            if (d < dArr3[i6]) {
                double d2 = (d - dArr3[i4]) / (dArr3[i6] - dArr3[i4]);
                for (int i7 = 0; i7 < length2; i7++) {
                    double[][] dArr4 = this.f1637b;
                    dArr[i7] = (dArr4[i4][i7] * (1.0d - d2)) + (dArr4[i6][i7] * d2);
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: e */
    public void mo20968e(double d, float[] fArr) {
        double[] dArr = this.f1636a;
        int length = dArr.length;
        int length2 = this.f1637b[0].length;
        if (d <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f1637b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f1637b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (i4 < i2) {
            if (d == this.f1636a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.f1637b[i4][i5];
                }
            }
            double[] dArr2 = this.f1636a;
            int i6 = i4 + 1;
            if (d < dArr2[i6]) {
                double d2 = (d - dArr2[i4]) / (dArr2[i6] - dArr2[i4]);
                for (int i7 = 0; i7 < length2; i7++) {
                    double[][] dArr3 = this.f1637b;
                    fArr[i7] = (float) ((dArr3[i4][i7] * (1.0d - d2)) + (dArr3[i6][i7] * d2));
                }
                return;
            }
            i4 = i6;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [double] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double mo20967f(double r8, int r10) {
        /*
            r7 = this;
            r0 = r7
            double[] r0 = r0.f1636a
            r11 = r0
            r0 = r11
            int r0 = r0.length
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r8
            r1 = r11
            r2 = 0
            r1 = r1[r2]
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0024
            r0 = r11
            r1 = 0
            r0 = r0[r1]
            r14 = r0
            r0 = r13
            r16 = r0
            goto L_0x0046
        L_0x0024:
            r0 = r12
            r1 = 1
            int r0 = r0 - r1
            r17 = r0
            r0 = r13
            r16 = r0
            r0 = r8
            r14 = r0
            r0 = r8
            r1 = r11
            r2 = r17
            r1 = r1[r2]
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0046
            r0 = r11
            r1 = r17
            r0 = r0[r1]
            r14 = r0
            r0 = r13
            r16 = r0
        L_0x0046:
            r0 = r16
            r1 = r12
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x00a0
            r0 = r7
            double[] r0 = r0.f1636a
            r11 = r0
            r0 = r16
            r1 = 1
            int r0 = r0 + r1
            r13 = r0
            r0 = r14
            r1 = r11
            r2 = r13
            r1 = r1[r2]
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0099
            r0 = r11
            r1 = r13
            r0 = r0[r1]
            r8 = r0
            r0 = r11
            r1 = r16
            r0 = r0[r1]
            r14 = r0
            r0 = r11
            r1 = r16
            r0 = r0[r1]
            r18 = r0
            r0 = r7
            double[][] r0 = r0.f1637b
            r11 = r0
            r0 = r11
            r1 = r16
            r0 = r0[r1]
            r1 = r10
            r0 = r0[r1]
            r18 = r0
            r0 = r11
            r1 = r13
            r0 = r0[r1]
            r1 = r10
            r0 = r0[r1]
            r1 = r18
            double r0 = r0 - r1
            r1 = r8
            r2 = r14
            double r1 = r1 - r2
            double r0 = r0 / r1
            return r0
        L_0x0099:
            r0 = r13
            r16 = r0
            goto L_0x0046
        L_0x00a0:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.LinearCurveFit.mo20967f(double, int):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [double] */
    /* JADX WARN: Type inference failed for: r18v0, types: [double] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20966g(double r10, double[] r12) {
        /*
            Method dump skipped, instructions count: 183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.LinearCurveFit.mo20966g(double, double[]):void");
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: h */
    public double[] mo20965h() {
        return this.f1636a;
    }
}
