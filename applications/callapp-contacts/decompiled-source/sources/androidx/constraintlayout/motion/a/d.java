package androidx.constraintlayout.motion.a;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/d.class */
public final class d extends b {

    /* renamed from: a  reason: collision with root package name */
    private double[] f1441a;

    /* renamed from: b  reason: collision with root package name */
    private double[][] f1442b;

    /* renamed from: c  reason: collision with root package name */
    private double f1443c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(double[] r8, double[][] r9) {
        /*
            r7 = this;
            r0 = r7
            r0.<init>()
            r0 = r7
            r1 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            r0.f1443c = r1
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            int r0 = r0.length
            r10 = r0
            r0 = r7
            r1 = r8
            r0.f1441a = r1
            r0 = r7
            r1 = r9
            r0.f1442b = r1
            r0 = r10
            r1 = 2
            if (r0 <= r1) goto L_0x0061
            r0 = 0
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = 0
            r10 = r0
        L_0x0028:
            r0 = r10
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x005c
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
            if (r0 <= 0) goto L_0x004e
            r0 = r15
            r1 = r11
            double r0 = r0 - r1
            r1 = r17
            r2 = r13
            double r1 = r1 - r2
            double r0 = java.lang.Math.hypot(r0, r1)
        L_0x004e:
            int r10 = r10 + 1
            r0 = r15
            r11 = r0
            r0 = r17
            r13 = r0
            goto L_0x0028
        L_0x005c:
            r0 = r7
            r1 = 0
            r0.f1443c = r1
        L_0x0061:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.d.<init>(double[], double[][]):void");
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final double a(double d2) {
        double[] dArr = this.f1441a;
        int length = dArr.length;
        if (d2 <= dArr[0]) {
            return this.f1442b[0][0];
        }
        int i = length - 1;
        if (d2 >= dArr[i]) {
            return this.f1442b[i][0];
        }
        int i2 = 0;
        while (i2 < i) {
            double[] dArr2 = this.f1441a;
            if (d2 == dArr2[i2]) {
                return this.f1442b[i2][0];
            }
            int i3 = i2 + 1;
            if (d2 < dArr2[i3]) {
                double d3 = (d2 - dArr2[i2]) / (dArr2[i3] - dArr2[i2]);
                double[][] dArr3 = this.f1442b;
                return (dArr3[i2][0] * (1.0d - d3)) + (dArr3[i3][0] * d3);
            }
            i2 = i3;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final void a(double d2, double[] dArr) {
        double[] dArr2 = this.f1441a;
        int length = dArr2.length;
        int length2 = this.f1442b[0].length;
        if (d2 <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f1442b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d2 >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f1442b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (i4 < i2) {
            if (d2 == this.f1441a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.f1442b[i4][i5];
                }
            }
            double[] dArr3 = this.f1441a;
            int i6 = i4 + 1;
            if (d2 < dArr3[i6]) {
                double d3 = (d2 - dArr3[i4]) / (dArr3[i6] - dArr3[i4]);
                for (int i7 = 0; i7 < length2; i7++) {
                    double[][] dArr4 = this.f1442b;
                    dArr[i7] = (dArr4[i4][i7] * (1.0d - d3)) + (dArr4[i6][i7] * d3);
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final void a(double d2, float[] fArr) {
        double[] dArr = this.f1441a;
        int length = dArr.length;
        int length2 = this.f1442b[0].length;
        if (d2 <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f1442b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d2 >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f1442b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (i4 < i2) {
            if (d2 == this.f1441a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.f1442b[i4][i5];
                }
            }
            double[] dArr2 = this.f1441a;
            int i6 = i4 + 1;
            if (d2 < dArr2[i6]) {
                double d3 = (d2 - dArr2[i4]) / (dArr2[i6] - dArr2[i4]);
                for (int i7 = 0; i7 < length2; i7++) {
                    double[][] dArr3 = this.f1442b;
                    fArr[i7] = (float) ((dArr3[i4][i7] * (1.0d - d3)) + (dArr3[i6][i7] * d3));
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final double[] a() {
        return this.f1441a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [double] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.constraintlayout.motion.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double b(double r8) {
        /*
            r7 = this;
            r0 = r7
            double[] r0 = r0.f1441a
            r10 = r0
            r0 = r10
            int r0 = r0.length
            r11 = r0
            r0 = r8
            r1 = r10
            r2 = 0
            r1 = r1[r2]
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0019
            r0 = r10
            r1 = 0
            r0 = r0[r1]
            r12 = r0
            goto L_0x0031
        L_0x0019:
            r0 = r11
            r1 = 1
            int r0 = r0 - r1
            r14 = r0
            r0 = r8
            r12 = r0
            r0 = r8
            r1 = r10
            r2 = r14
            r1 = r1[r2]
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0031
            r0 = r10
            r1 = r14
            r0 = r0[r1]
            r12 = r0
        L_0x0031:
            r0 = 0
            r14 = r0
        L_0x0034:
            r0 = r14
            r1 = r11
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x0080
            r0 = r7
            double[] r0 = r0.f1441a
            r10 = r0
            r0 = r14
            r1 = 1
            int r0 = r0 + r1
            r15 = r0
            r0 = r12
            r1 = r10
            r2 = r15
            r1 = r1[r2]
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0079
            r0 = r10
            r1 = r15
            r0 = r0[r1]
            r8 = r0
            r0 = r10
            r1 = r14
            r0 = r0[r1]
            r12 = r0
            r0 = r7
            double[][] r0 = r0.f1442b
            r10 = r0
            r0 = r10
            r1 = r14
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r16 = r0
            r0 = r10
            r1 = r15
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r1 = r16
            double r0 = r0 - r1
            r1 = r8
            r2 = r12
            double r1 = r1 - r2
            double r0 = r0 / r1
            return r0
        L_0x0079:
            r0 = r15
            r14 = r0
            goto L_0x0034
        L_0x0080:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.d.b(double):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [double] */
    /* JADX WARN: Type inference failed for: r18v0, types: [double] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.constraintlayout.motion.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(double r10, double[] r12) {
        /*
            Method dump skipped, instructions count: 177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.d.b(double, double[]):void");
    }
}
