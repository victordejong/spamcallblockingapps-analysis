package androidx.constraintlayout.motion.a;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/a.class */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    C0033a[] f1429a;

    /* renamed from: b  reason: collision with root package name */
    private final double[] f1430b;

    /* renamed from: androidx.constraintlayout.motion.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/a$a.class */
    static final class C0033a {
        private static double[] s = new double[91];

        /* renamed from: a  reason: collision with root package name */
        double[] f1431a;

        /* renamed from: b  reason: collision with root package name */
        double f1432b;

        /* renamed from: c  reason: collision with root package name */
        double f1433c;

        /* renamed from: d  reason: collision with root package name */
        double f1434d;
        double e;
        double f;
        double g;
        double h;
        double i;
        double j;
        double k;
        double l;
        double m;
        double n;
        double o;
        double p;
        boolean q;
        boolean r;

        /* JADX WARN: Multi-variable type inference failed */
        C0033a(int i, double d2, double d3, double d4, double d5, double d6, double d7) {
            boolean z = false;
            this.r = false;
            int i2 = 1;
            this.q = i == 1 ? true : z;
            this.f1433c = d2;
            this.f1434d = d3;
            this.i = 1.0d / (d3 - d2);
            if (3 == i) {
                this.r = true;
            }
            double d8 = d6 - d4;
            double d9 = d7 - d5;
            if (this.r || Math.abs(d8) < 0.001d || Math.abs(d9) < 0.001d) {
                this.r = true;
                this.e = d4;
                this.f = d6;
                this.g = d5;
                this.h = d7;
                double hypot = Math.hypot(d9, d8);
                this.f1432b = hypot;
                this.n = hypot * this.i;
                double d10 = this.f1434d;
                double d11 = this.f1433c;
                this.l = d8 / (d10 - d11);
                this.m = d9 / (d10 - d11);
                return;
            }
            this.f1431a = new double[101];
            boolean z2 = this.q;
            this.j = d8 * (z2 ? -1 : 1);
            if (!z2) {
                i2 = -1;
            }
            this.k = d9 * i2;
            this.l = z2 ? d6 : d4;
            this.m = z2 ? d5 : d7;
            a(d4, d5, d6, d7);
            this.n = this.f1432b * this.i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v48, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        /* JADX WARN: Type inference failed for: r21v0 */
        /* JADX WARN: Type inference failed for: r21v2 */
        /* JADX WARN: Type inference failed for: r23v0 */
        /* JADX WARN: Type inference failed for: r23v2 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(double r10, double r12, double r14, double r16) {
            /*
                Method dump skipped, instructions count: 310
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.a.C0033a.a(double, double, double, double):void");
        }

        private double d(double d2) {
            if (d2 <= 0.0d) {
                return 0.0d;
            }
            if (d2 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f1431a;
            double length = d2 * (dArr.length - 1);
            int i = (int) length;
            return dArr[i] + ((length - i) * (dArr[i + 1] - dArr[i]));
        }

        final double a() {
            return this.l + (this.j * this.o);
        }

        final void a(double d2) {
            double d3 = d((this.q ? this.f1434d - d2 : d2 - this.f1433c) * this.i) * 1.5707963267948966d;
            this.o = Math.sin(d3);
            this.p = Math.cos(d3);
        }

        final double b() {
            return this.m + (this.k * this.p);
        }

        public final double b(double d2) {
            double d3 = this.f1433c;
            double d4 = this.i;
            double d5 = this.e;
            return d5 + ((d2 - d3) * d4 * (this.f - d5));
        }

        final double c() {
            double d2 = this.j * this.p;
            double hypot = this.n / Math.hypot(d2, (-this.k) * this.o);
            return this.q ? (-d2) * hypot : d2 * hypot;
        }

        public final double c(double d2) {
            double d3 = this.f1433c;
            double d4 = this.i;
            double d5 = this.g;
            return d5 + ((d2 - d3) * d4 * (this.h - d5));
        }
    }

    public a(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f1430b = dArr;
        this.f1429a = new C0033a[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (true) {
            C0033a[] aVarArr = this.f1429a;
            if (i < aVarArr.length) {
                int i4 = iArr[i];
                if (i4 == 0) {
                    i3 = 3;
                } else if (i4 == 1) {
                    i2 = 1;
                    i3 = 1;
                } else if (i4 == 2) {
                    i2 = 2;
                    i3 = 2;
                } else if (i4 == 3) {
                    i2 = i2 == 1 ? 2 : 1;
                    i3 = i2;
                }
                int i5 = i + 1;
                aVarArr[i] = new C0033a(i3, dArr[i], dArr[i5], dArr2[i][0], dArr2[i][1], dArr2[i5][0], dArr2[i5][1]);
                i = i5;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r0v23, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r11v0, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.constraintlayout.motion.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double a(double r7) {
        /*
            r6 = this;
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            r1 = r9
            r2 = 0
            r1 = r1[r2]
            double r1 = r1.f1433c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0025
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = 0
            r0 = r0[r1]
            double r0 = r0.f1433c
            r11 = r0
            r0 = r10
            r13 = r0
            goto L_0x0053
        L_0x0025:
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r9 = r0
            r0 = r10
            r13 = r0
            r0 = r7
            r11 = r0
            r0 = r7
            r1 = r9
            r2 = r9
            int r2 = r2.length
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            double r1 = r1.f1434d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0053
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r9 = r0
            r0 = r9
            r1 = r9
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            double r0 = r0.f1434d
            r11 = r0
            r0 = r10
            r13 = r0
        L_0x0053:
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r9 = r0
            r0 = r13
            r1 = r9
            int r1 = r1.length
            if (r0 >= r1) goto L_0x00a3
            r0 = r11
            r1 = r9
            r2 = r13
            r1 = r1[r2]
            double r1 = r1.f1434d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x009d
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = r13
            r0 = r0[r1]
            boolean r0 = r0.r
            if (r0 == 0) goto L_0x0086
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = r13
            r0 = r0[r1]
            r1 = r11
            double r0 = r0.b(r1)
            return r0
        L_0x0086:
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = r13
            r0 = r0[r1]
            r1 = r11
            r0.a(r1)
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = r13
            r0 = r0[r1]
            double r0 = r0.a()
            return r0
        L_0x009d:
            int r13 = r13 + 1
            goto L_0x0053
        L_0x00a3:
            r0 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.a.a(double):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [double] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r2v14, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r2v15, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r2v18, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r2v19, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [double] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.constraintlayout.motion.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(double r7, double[] r9) {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.a.a(double, double[]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r10v0, types: [double] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r2v13, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r2v14, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r2v18, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r2v19, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.constraintlayout.motion.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(double r7, float[] r9) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.a.a(double, float[]):void");
    }

    @Override // androidx.constraintlayout.motion.a.b
    public final double[] a() {
        return this.f1430b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [double] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [double] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.constraintlayout.motion.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double b(double r7) {
        /*
            r6 = this;
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            r11 = r0
            r0 = r7
            r1 = r9
            r2 = 0
            r1 = r1[r2]
            double r1 = r1.f1433c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0021
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = 0
            r0 = r0[r1]
            double r0 = r0.f1433c
            r11 = r0
        L_0x0021:
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r9 = r0
            r0 = r10
            r13 = r0
            r0 = r11
            r7 = r0
            r0 = r11
            r1 = r9
            r2 = r9
            int r2 = r2.length
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            double r1 = r1.f1434d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004f
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r9 = r0
            r0 = r9
            r1 = r9
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            double r0 = r0.f1434d
            r7 = r0
            r0 = r10
            r13 = r0
        L_0x004f:
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r9 = r0
            r0 = r13
            r1 = r9
            int r1 = r1.length
            if (r0 >= r1) goto L_0x009b
            r0 = r7
            r1 = r9
            r2 = r13
            r1 = r1[r2]
            double r1 = r1.f1434d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0095
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = r13
            r0 = r0[r1]
            boolean r0 = r0.r
            if (r0 == 0) goto L_0x007f
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = r13
            r0 = r0[r1]
            double r0 = r0.l
            return r0
        L_0x007f:
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = r13
            r0 = r0[r1]
            r1 = r7
            r0.a(r1)
            r0 = r6
            androidx.constraintlayout.motion.a.a$a[] r0 = r0.f1429a
            r1 = r13
            r0 = r0[r1]
            double r0 = r0.c()
            return r0
        L_0x0095:
            int r13 = r13 + 1
            goto L_0x004f
        L_0x009b:
            r0 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.a.b(double):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r11v0, types: [double] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.constraintlayout.motion.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(double r8, double[] r10) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.a.b(double, double[]):void");
    }
}
