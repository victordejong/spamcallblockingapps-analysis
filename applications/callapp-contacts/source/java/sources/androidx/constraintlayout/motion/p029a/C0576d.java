package androidx.constraintlayout.motion.p029a;
/* renamed from: androidx.constraintlayout.motion.a.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/d.class */
public final class C0576d extends AbstractC0572b {

    /* renamed from: a */
    private double[] f2401a;

    /* renamed from: b */
    private double[][] f2402b;

    /* renamed from: c */
    private double f2403c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r2v0 */
    public C0576d(double[] dArr, double[][] dArr2) {
        this.f2403c = Double.NaN;
        int length = dArr2[0].length;
        this.f2401a = dArr;
        this.f2402b = dArr2;
        if (length > 2) {
            ?? r11 = false;
            ?? r13 = false;
            int i = 0;
            while (i < dArr.length) {
                ?? r0 = dArr2[i][0];
                ?? r02 = dArr2[i][0];
                if (i > 0) {
                    Math.hypot(r0 - (r11 == true ? 1.0d : 0.0d), r02 - (r13 == true ? 1.0d : 0.0d));
                }
                i++;
                r11 = r0;
                r13 = r02;
            }
            this.f2403c = 0.0d;
        }
    }

    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: a */
    public final double mo45072a(double d) {
        double[] dArr = this.f2401a;
        int length = dArr.length;
        if (d <= dArr[0]) {
            return this.f2402b[0][0];
        }
        int i = length - 1;
        if (d >= dArr[i]) {
            return this.f2402b[i][0];
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= i) {
                return 0.0d;
            }
            double[] dArr2 = this.f2401a;
            if (d == dArr2[i3]) {
                return this.f2402b[i3][0];
            }
            int i4 = i3 + 1;
            if (d < dArr2[i4]) {
                double d2 = (d - dArr2[i3]) / (dArr2[i4] - dArr2[i3]);
                double[][] dArr3 = this.f2402b;
                return (dArr3[i3][0] * (1.0d - d2)) + (dArr3[i4][0] * d2);
            }
            i2 = i4;
        }
    }

    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: a */
    public final void mo45070a(double d, double[] dArr) {
        double[] dArr2 = this.f2401a;
        int length = dArr2.length;
        int length2 = this.f2402b[0].length;
        if (d <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f2402b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f2402b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f2401a[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    dArr[i6] = this.f2402b[i5][i6];
                }
            }
            double[] dArr3 = this.f2401a;
            int i7 = i5 + 1;
            if (d < dArr3[i7]) {
                double d2 = (d - dArr3[i5]) / (dArr3[i7] - dArr3[i5]);
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr4 = this.f2402b;
                    dArr[i8] = (dArr4[i5][i8] * (1.0d - d2)) + (dArr4[i7][i8] * d2);
                }
                return;
            }
            i4 = i7;
        }
    }

    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: a */
    public final void mo45069a(double d, float[] fArr) {
        double[] dArr = this.f2401a;
        int length = dArr.length;
        int length2 = this.f2402b[0].length;
        if (d <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f2402b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f2402b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f2401a[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    fArr[i6] = (float) this.f2402b[i5][i6];
                }
            }
            double[] dArr2 = this.f2401a;
            int i7 = i5 + 1;
            if (d < dArr2[i7]) {
                double d2 = (d - dArr2[i5]) / (dArr2[i7] - dArr2[i5]);
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr3 = this.f2402b;
                    fArr[i8] = (float) ((dArr3[i5][i8] * (1.0d - d2)) + (dArr3[i7][i8] * d2));
                }
                return;
            }
            i4 = i7;
        }
    }

    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: a */
    public final double[] mo45073a() {
        return this.f2401a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v39 */
    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: b */
    public final double mo45068b(double d) {
        char c;
        double[] dArr = this.f2401a;
        int length = dArr.length;
        if (d < dArr[0]) {
            c = dArr[0];
        } else {
            int i = length - 1;
            c = d;
            if (d >= dArr[i]) {
                c = dArr[i];
            }
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < length - 1) {
                double[] dArr2 = this.f2401a;
                int i4 = i3 + 1;
                if (c <= dArr2[i4]) {
                    double d2 = dArr2[i4];
                    double d3 = dArr2[i3];
                    double[][] dArr3 = this.f2402b;
                    return (dArr3[i4][0] - dArr3[i3][0]) / (d2 - d3);
                }
                i2 = i4;
            } else {
                return 0.0d;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v41 */
    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: b */
    public final void mo45066b(double d, double[] dArr) {
        char c;
        double[] dArr2 = this.f2401a;
        int length = dArr2.length;
        int length2 = this.f2402b[0].length;
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
                double[] dArr3 = this.f2401a;
                int i4 = i3 + 1;
                if (c <= dArr3[i4]) {
                    double d2 = dArr3[i4];
                    double d3 = dArr3[i3];
                    for (int i5 = 0; i5 < length2; i5++) {
                        double[][] dArr4 = this.f2402b;
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
}
