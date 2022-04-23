package androidx.constraintlayout.motion.utils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/ArcCurveFit.class */
public class ArcCurveFit extends CurveFit {

    /* renamed from: a */
    private final double[] f1604a;

    /* renamed from: b */
    Arc[] f1605b;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/ArcCurveFit$Arc.class */
    private static class Arc {

        /* renamed from: s */
        private static double[] f1606s = new double[91];

        /* renamed from: a */
        double[] f1607a;

        /* renamed from: b */
        double f1608b;

        /* renamed from: c */
        double f1609c;

        /* renamed from: d */
        double f1610d;

        /* renamed from: e */
        double f1611e;

        /* renamed from: f */
        double f1612f;

        /* renamed from: g */
        double f1613g;

        /* renamed from: h */
        double f1614h;

        /* renamed from: i */
        double f1615i;

        /* renamed from: j */
        double f1616j;

        /* renamed from: k */
        double f1617k;

        /* renamed from: l */
        double f1618l;

        /* renamed from: m */
        double f1619m;

        /* renamed from: n */
        double f1620n;

        /* renamed from: o */
        double f1621o;

        /* renamed from: p */
        double f1622p;

        /* renamed from: q */
        boolean f1623q;

        /* renamed from: r */
        boolean f1624r;

        /* JADX WARN: Multi-variable type inference failed */
        Arc(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            boolean z = false;
            this.f1624r = false;
            this.f1623q = i == 1 ? true : z;
            this.f1609c = d;
            this.f1610d = d2;
            this.f1615i = 1.0d / (d2 - d);
            if (3 == i) {
                this.f1624r = true;
            }
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            if (this.f1624r || Math.abs(d7) < 0.001d || Math.abs(d8) < 0.001d) {
                this.f1624r = true;
                this.f1611e = d3;
                this.f1612f = d5;
                this.f1613g = d4;
                this.f1614h = d6;
                double hypot = Math.hypot(d8, d7);
                this.f1608b = hypot;
                this.f1620n = hypot * this.f1615i;
                double d9 = this.f1610d;
                double d10 = this.f1609c;
                this.f1618l = d7 / (d9 - d10);
                this.f1619m = d8 / (d9 - d10);
                return;
            }
            this.f1607a = new double[101];
            this.f1616j = d7 * (this.f1623q ? -1 : 1);
            this.f1617k = d8 * (this.f1623q ? 1 : -1);
            this.f1618l = this.f1623q ? d5 : d3;
            this.f1619m = this.f1623q ? d4 : d6;
            m20988a(d3, d4, d5, d6);
            this.f1620n = this.f1608b * this.f1615i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v48, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        /* JADX WARN: Type inference failed for: r21v0 */
        /* JADX WARN: Type inference failed for: r21v2 */
        /* JADX WARN: Type inference failed for: r23v0 */
        /* JADX WARN: Type inference failed for: r23v2 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m20988a(double r10, double r12, double r14, double r16) {
            /*
                Method dump skipped, instructions count: 310
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.ArcCurveFit.Arc.m20988a(double, double, double, double):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [double] */
        /* JADX WARN: Type inference failed for: r14v1 */
        /* JADX WARN: Type inference failed for: r14v2, types: [double] */
        /* JADX WARN: Type inference failed for: r14v4 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        double m20987b() {
            /*
                r9 = this;
                r0 = r9
                double r0 = r0.f1616j
                r1 = r9
                double r1 = r1.f1622p
                double r0 = r0 * r1
                r10 = r0
                r0 = r9
                double r0 = r0.f1617k
                double r0 = -r0
                r12 = r0
                r0 = r9
                double r0 = r0.f1621o
                r14 = r0
                r0 = r9
                double r0 = r0.f1620n
                r1 = r10
                r2 = r12
                r3 = r14
                double r2 = r2 * r3
                double r1 = java.lang.Math.hypot(r1, r2)
                double r0 = r0 / r1
                r12 = r0
                r0 = r10
                r14 = r0
                r0 = r9
                boolean r0 = r0.f1623q
                if (r0 == 0) goto L_0x0032
                r0 = r10
                double r0 = -r0
                r14 = r0
            L_0x0032:
                r0 = r14
                r1 = r12
                double r0 = r0 * r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.ArcCurveFit.Arc.m20987b():double");
        }

        /* renamed from: c */
        double m20986c() {
            double d = this.f1616j;
            double d2 = this.f1622p;
            double d3 = (-this.f1617k) * this.f1621o;
            double hypot = this.f1620n / Math.hypot(d * d2, d3);
            return this.f1623q ? (-d3) * hypot : d3 * hypot;
        }

        /* renamed from: d */
        public double m20985d(double d) {
            return this.f1618l;
        }

        /* renamed from: e */
        public double m20984e(double d) {
            return this.f1619m;
        }

        /* renamed from: f */
        public double m20983f(double d) {
            double d2 = this.f1609c;
            double d3 = this.f1615i;
            double d4 = this.f1611e;
            return d4 + ((d - d2) * d3 * (this.f1612f - d4));
        }

        /* renamed from: g */
        public double m20982g(double d) {
            double d2 = this.f1609c;
            double d3 = this.f1615i;
            double d4 = this.f1613g;
            return d4 + ((d - d2) * d3 * (this.f1614h - d4));
        }

        /* renamed from: h */
        double m20981h() {
            return this.f1618l + (this.f1616j * this.f1621o);
        }

        /* renamed from: i */
        double m20980i() {
            return this.f1619m + (this.f1617k * this.f1622p);
        }

        /* renamed from: j */
        double m20979j(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f1607a;
            double length = d * (dArr.length - 1);
            int i = (int) length;
            return dArr[i] + ((length - i) * (dArr[i + 1] - dArr[i]));
        }

        /* renamed from: k */
        void m20978k(double d) {
            double j = m20979j((this.f1623q ? this.f1610d - d : d - this.f1609c) * this.f1615i) * 1.5707963267948966d;
            this.f1621o = Math.sin(j);
            this.f1622p = Math.cos(j);
        }
    }

    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f1604a = dArr;
        this.f1605b = new Arc[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (i < this.f1605b.length) {
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
            this.f1605b[i] = new Arc(i3, dArr[i], dArr[i5], dArr2[i][0], dArr2[i][1], dArr2[i5][0], dArr2[i5][1]);
            i = i5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v27, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v30, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[]] */
    /* JADX WARN: Type inference failed for: r12v0, types: [double] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double mo20970c(double r7, int r9) {
        /*
            r6 = this;
            r0 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r0 = r0.f1605b
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r7
            r1 = r10
            r2 = 0
            r1 = r1[r2]
            double r1 = r1.f1609c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0025
            r0 = r10
            r1 = 0
            r0 = r0[r1]
            double r0 = r0.f1609c
            r12 = r0
            r0 = r11
            r14 = r0
            goto L_0x004d
        L_0x0025:
            r0 = r11
            r14 = r0
            r0 = r7
            r12 = r0
            r0 = r7
            r1 = r10
            r2 = r10
            int r2 = r2.length
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            double r1 = r1.f1610d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004d
            r0 = r10
            r1 = r10
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            double r0 = r0.f1610d
            r12 = r0
            r0 = r11
            r14 = r0
        L_0x004d:
            r0 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r0 = r0.f1605b
            r10 = r0
            r0 = r14
            r1 = r10
            int r1 = r1.length
            if (r0 >= r1) goto L_0x00b8
            r0 = r12
            r1 = r10
            r2 = r14
            r1 = r1[r2]
            double r1 = r1.f1610d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x00b2
            r0 = r10
            r1 = r14
            r0 = r0[r1]
            boolean r0 = r0.f1624r
            if (r0 == 0) goto L_0x008e
            r0 = r9
            if (r0 != 0) goto L_0x0083
            r0 = r10
            r1 = r14
            r0 = r0[r1]
            r1 = r12
            double r0 = r0.m20983f(r1)
            return r0
        L_0x0083:
            r0 = r10
            r1 = r14
            r0 = r0[r1]
            r1 = r12
            double r0 = r0.m20982g(r1)
            return r0
        L_0x008e:
            r0 = r10
            r1 = r14
            r0 = r0[r1]
            r1 = r12
            r0.m20978k(r1)
            r0 = r9
            if (r0 != 0) goto L_0x00a7
            r0 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r0 = r0.f1605b
            r1 = r14
            r0 = r0[r1]
            double r0 = r0.m20981h()
            return r0
        L_0x00a7:
            r0 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r0 = r0.f1605b
            r1 = r14
            r0 = r0[r1]
            double r0 = r0.m20980i()
            return r0
        L_0x00b2:
            int r14 = r14 + 1
            goto L_0x004d
        L_0x00b8:
            r0 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.ArcCurveFit.mo20970c(double, int):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[]] */
    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [double] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r1v9, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r2v14, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r2v17, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[]] */
    /* JADX WARN: Type inference failed for: r2v18, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [double] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20969d(double r7, double[] r9) {
        /*
            Method dump skipped, instructions count: 179
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.ArcCurveFit.mo20969d(double, double[]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[]] */
    /* JADX WARN: Type inference failed for: r11v0, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r2v13, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r2v17, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[]] */
    /* JADX WARN: Type inference failed for: r2v18, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20968e(double r7, float[] r9) {
        /*
            Method dump skipped, instructions count: 181
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.ArcCurveFit.mo20968e(double, float[]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[]] */
    /* JADX WARN: Type inference failed for: r0v19, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v22, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v34, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v37, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [double] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r1v9, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [double] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double mo20967f(double r7, int r9) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.ArcCurveFit.mo20967f(double, int):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[]] */
    /* JADX WARN: Type inference failed for: r11v0, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r2v11, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r2v14, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[]] */
    /* JADX WARN: Type inference failed for: r2v15, types: [androidx.constraintlayout.motion.utils.ArcCurveFit$Arc] */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20966g(double r7, double[] r9) {
        /*
            r6 = this;
            r0 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r0 = r0.f1605b
            r10 = r0
            r0 = r7
            r1 = r10
            r2 = 0
            r1 = r1[r2]
            double r1 = r1.f1609c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001e
            r0 = r10
            r1 = 0
            r0 = r0[r1]
            double r0 = r0.f1609c
            r11 = r0
            goto L_0x003e
        L_0x001e:
            r0 = r7
            r11 = r0
            r0 = r7
            r1 = r10
            r2 = r10
            int r2 = r2.length
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            double r1 = r1.f1610d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003e
            r0 = r10
            r1 = r10
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            double r0 = r0.f1610d
            r11 = r0
        L_0x003e:
            r0 = 0
            r13 = r0
        L_0x0041:
            r0 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r0 = r0.f1605b
            r10 = r0
            r0 = r13
            r1 = r10
            int r1 = r1.length
            if (r0 >= r1) goto L_0x00b0
            r0 = r11
            r1 = r10
            r2 = r13
            r1 = r1[r2]
            double r1 = r1.f1610d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x00aa
            r0 = r10
            r1 = r13
            r0 = r0[r1]
            boolean r0 = r0.f1624r
            if (r0 == 0) goto L_0x0085
            r0 = r9
            r1 = 0
            r2 = r10
            r3 = r13
            r2 = r2[r3]
            r3 = r11
            double r2 = r2.m20985d(r3)
            r0[r1] = r2
            r0 = r9
            r1 = 1
            r2 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r2 = r2.f1605b
            r3 = r13
            r2 = r2[r3]
            r3 = r11
            double r2 = r2.m20984e(r3)
            r0[r1] = r2
            return
        L_0x0085:
            r0 = r10
            r1 = r13
            r0 = r0[r1]
            r1 = r11
            r0.m20978k(r1)
            r0 = r9
            r1 = 0
            r2 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r2 = r2.f1605b
            r3 = r13
            r2 = r2[r3]
            double r2 = r2.m20987b()
            r0[r1] = r2
            r0 = r9
            r1 = 1
            r2 = r6
            androidx.constraintlayout.motion.utils.ArcCurveFit$Arc[] r2 = r2.f1605b
            r3 = r13
            r2 = r2[r3]
            double r2 = r2.m20986c()
            r0[r1] = r2
            return
        L_0x00aa:
            int r13 = r13 + 1
            goto L_0x0041
        L_0x00b0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.ArcCurveFit.mo20966g(double, double[]):void");
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: h */
    public double[] mo20965h() {
        return this.f1604a;
    }
}
