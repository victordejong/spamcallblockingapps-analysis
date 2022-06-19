package androidx.constraintlayout.motion.p029a;

import java.util.Arrays;
/* renamed from: androidx.constraintlayout.motion.a.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/a.class */
public final class C0570a extends AbstractC0572b {

    /* renamed from: a */
    C0571a[] f2369a;

    /* renamed from: b */
    private final double[] f2370b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/a$a.class */
    public static final class C0571a {

        /* renamed from: s */
        private static double[] f2371s = new double[91];

        /* renamed from: a */
        double[] f2372a;

        /* renamed from: b */
        double f2373b;

        /* renamed from: c */
        double f2374c;

        /* renamed from: d */
        double f2375d;

        /* renamed from: e */
        double f2376e;

        /* renamed from: f */
        double f2377f;

        /* renamed from: g */
        double f2378g;

        /* renamed from: h */
        double f2379h;

        /* renamed from: i */
        double f2380i;

        /* renamed from: j */
        double f2381j;

        /* renamed from: k */
        double f2382k;

        /* renamed from: l */
        double f2383l;

        /* renamed from: m */
        double f2384m;

        /* renamed from: n */
        double f2385n;

        /* renamed from: o */
        double f2386o;

        /* renamed from: p */
        double f2387p;

        /* renamed from: q */
        boolean f2388q;

        /* renamed from: r */
        boolean f2389r;

        /* JADX WARN: Multi-variable type inference failed */
        C0571a(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            boolean z = false;
            this.f2389r = false;
            this.f2388q = i == 1 ? true : z;
            this.f2374c = d;
            this.f2375d = d2;
            this.f2380i = 1.0d / (d2 - d);
            if (3 == i) {
                this.f2389r = true;
            }
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            if (!this.f2389r && Math.abs(d7) >= 0.001d && Math.abs(d8) >= 0.001d) {
                this.f2372a = new double[101];
                boolean z2 = this.f2388q;
                this.f2381j = d7 * (z2 ? -1 : 1);
                this.f2382k = d8 * (z2 ? 1 : -1);
                this.f2383l = z2 ? d5 : d3;
                this.f2384m = z2 ? d4 : d6;
                m45085a(d3, d4, d5, d6);
                this.f2385n = this.f2373b * this.f2380i;
                return;
            }
            this.f2389r = true;
            this.f2376e = d3;
            this.f2377f = d5;
            this.f2378g = d4;
            this.f2379h = d6;
            double hypot = Math.hypot(d8, d7);
            this.f2373b = hypot;
            this.f2385n = hypot * this.f2380i;
            double d9 = this.f2375d;
            double d10 = this.f2374c;
            this.f2383l = d7 / (d9 - d10);
            this.f2384m = d8 / (d9 - d10);
        }

        /* JADX WARN: Type inference failed for: r0v48, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        /* JADX WARN: Type inference failed for: r0v57, types: [double] */
        /* renamed from: a */
        private void m45085a(double d, double d2, double d3, double d4) {
            double[] dArr;
            double[] dArr2;
            int i = 0;
            char c = 0;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                if (i >= f2371s.length) {
                    break;
                }
                double radians = Math.toRadians((i * 90.0d) / (dArr.length - 1));
                double sin = Math.sin(radians);
                double cos = Math.cos(radians);
                ?? r0 = sin * (d3 - d);
                ?? r02 = cos * (d2 - d4);
                if (i > 0) {
                    c = Math.hypot(r0 - (z ? 1.0d : 0.0d), r02 - (z2 ? 1.0d : 0.0d)) + c;
                    double d5 = c == 1 ? 1 : 0;
                    long j = c == 1 ? 1 : 0;
                    long j2 = c == 1 ? 1 : 0;
                    f2371s[i] = d5;
                }
                i++;
                z2 = r02;
                z = r0;
                c = c;
            }
            char c2 = c == 1 ? 1 : 0;
            boolean z3 = c == 1 ? 1 : 0;
            boolean z4 = c == 1 ? 1 : 0;
            boolean z5 = c == 1 ? 1 : 0;
            this.f2373b = c2;
            int i2 = 0;
            while (true) {
                double[] dArr3 = f2371s;
                if (i2 >= dArr3.length) {
                    break;
                }
                dArr3[i2] = dArr3[i2] / c;
                i2++;
            }
            int i3 = 0;
            while (true) {
                if (i3 < this.f2372a.length) {
                    double length = i3 / (dArr2.length - 1);
                    int binarySearch = Arrays.binarySearch(f2371s, length);
                    if (binarySearch >= 0) {
                        this.f2372a[i3] = binarySearch / (f2371s.length - 1);
                    } else if (binarySearch == -1) {
                        this.f2372a[i3] = 0.0d;
                    } else {
                        int i4 = -binarySearch;
                        int i5 = i4 - 2;
                        double d6 = i5;
                        double[] dArr4 = f2371s;
                        this.f2372a[i3] = (d6 + ((length - dArr4[i5]) / (dArr4[i4 - 1] - dArr4[i5]))) / (dArr4.length - 1);
                    }
                    i3++;
                } else {
                    return;
                }
            }
        }

        /* renamed from: d */
        private double m45080d(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f2372a;
            double length = d * (dArr.length - 1);
            int i = (int) length;
            return dArr[i] + ((length - i) * (dArr[i + 1] - dArr[i]));
        }

        /* renamed from: a */
        final double m45087a() {
            return this.f2383l + (this.f2381j * this.f2386o);
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [double] */
        /* JADX WARN: Type inference failed for: r0v8, types: [double] */
        /* renamed from: a */
        final void m45086a(double d) {
            double m45080d = m45080d((this.f2388q ? this.f2375d - d : d - this.f2374c) * this.f2380i) * 1.5707963267948966d;
            this.f2386o = Math.sin(m45080d);
            this.f2387p = Math.cos(m45080d);
        }

        /* renamed from: b */
        final double m45084b() {
            return this.f2384m + (this.f2382k * this.f2387p);
        }

        /* renamed from: b */
        public final double m45083b(double d) {
            double d2 = this.f2374c;
            double d3 = this.f2380i;
            double d4 = this.f2376e;
            return d4 + ((d - d2) * d3 * (this.f2377f - d4));
        }

        /* renamed from: c */
        final double m45082c() {
            double d = this.f2381j * this.f2387p;
            double hypot = this.f2385n / Math.hypot(d, (-this.f2382k) * this.f2386o);
            return this.f2388q ? (-d) * hypot : d * hypot;
        }

        /* renamed from: c */
        public final double m45081c(double d) {
            double d2 = this.f2374c;
            double d3 = this.f2380i;
            double d4 = this.f2378g;
            return d4 + ((d - d2) * d3 * (this.f2379h - d4));
        }
    }

    public C0570a(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f2370b = dArr;
        this.f2369a = new C0571a[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (true) {
            C0571a[] c0571aArr = this.f2369a;
            if (i < c0571aArr.length) {
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
                c0571aArr[i] = new C0571a(i3, dArr[i], dArr[i5], dArr2[i][0], dArr2[i][1], dArr2[i5][0], dArr2[i5][1]);
                i = i5;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: a */
    public final double mo45072a(double d) {
        int i;
        char c;
        if (d < this.f2369a[0].f2374c) {
            c = this.f2369a[0].f2374c;
            i = 0;
        } else {
            C0571a[] c0571aArr = this.f2369a;
            i = 0;
            c = d;
            if (d > c0571aArr[c0571aArr.length - 1].f2375d) {
                C0571a[] c0571aArr2 = this.f2369a;
                c = c0571aArr2[c0571aArr2.length - 1].f2375d;
                i = 0;
            }
        }
        while (true) {
            C0571a[] c0571aArr3 = this.f2369a;
            if (i < c0571aArr3.length) {
                if (c <= c0571aArr3[i].f2375d) {
                    if (this.f2369a[i].f2389r) {
                        return this.f2369a[i].m45083b(c);
                    }
                    this.f2369a[i].m45086a(c);
                    return this.f2369a[i].m45087a();
                }
                i++;
            } else {
                return Double.NaN;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: a */
    public final void mo45070a(double d, double[] dArr) {
        char c = d;
        if (d < this.f2369a[0].f2374c) {
            c = this.f2369a[0].f2374c;
        }
        C0571a[] c0571aArr = this.f2369a;
        char c2 = c;
        if (c > c0571aArr[c0571aArr.length - 1].f2375d) {
            C0571a[] c0571aArr2 = this.f2369a;
            c2 = c0571aArr2[c0571aArr2.length - 1].f2375d;
        }
        int i = 0;
        while (true) {
            C0571a[] c0571aArr3 = this.f2369a;
            if (i < c0571aArr3.length) {
                if (c2 <= c0571aArr3[i].f2375d) {
                    if (this.f2369a[i].f2389r) {
                        dArr[0] = this.f2369a[i].m45083b(c2);
                        dArr[1] = this.f2369a[i].m45081c(c2);
                        return;
                    }
                    this.f2369a[i].m45086a(c2);
                    dArr[0] = this.f2369a[i].m45087a();
                    dArr[1] = this.f2369a[i].m45084b();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: a */
    public final void mo45069a(double d, float[] fArr) {
        char c;
        if (d < this.f2369a[0].f2374c) {
            c = this.f2369a[0].f2374c;
        } else {
            C0571a[] c0571aArr = this.f2369a;
            c = d;
            if (d > c0571aArr[c0571aArr.length - 1].f2375d) {
                C0571a[] c0571aArr2 = this.f2369a;
                c = c0571aArr2[c0571aArr2.length - 1].f2375d;
            }
        }
        int i = 0;
        while (true) {
            C0571a[] c0571aArr3 = this.f2369a;
            if (i < c0571aArr3.length) {
                if (c <= c0571aArr3[i].f2375d) {
                    if (this.f2369a[i].f2389r) {
                        fArr[0] = (float) this.f2369a[i].m45083b(c);
                        fArr[1] = (float) this.f2369a[i].m45081c(c);
                        return;
                    }
                    this.f2369a[i].m45086a(c);
                    fArr[0] = (float) this.f2369a[i].m45087a();
                    fArr[1] = (float) this.f2369a[i].m45084b();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: a */
    public final double[] mo45073a() {
        return this.f2370b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v42, types: [double] */
    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: b */
    public final double mo45068b(double d) {
        char c = d;
        if (d < this.f2369a[0].f2374c) {
            c = this.f2369a[0].f2374c;
        }
        C0571a[] c0571aArr = this.f2369a;
        int i = 0;
        char c2 = c;
        if (c > c0571aArr[c0571aArr.length - 1].f2375d) {
            C0571a[] c0571aArr2 = this.f2369a;
            c2 = c0571aArr2[c0571aArr2.length - 1].f2375d;
            i = 0;
        }
        while (true) {
            C0571a[] c0571aArr3 = this.f2369a;
            if (i < c0571aArr3.length) {
                if (c2 <= c0571aArr3[i].f2375d) {
                    if (this.f2369a[i].f2389r) {
                        return this.f2369a[i].f2383l;
                    }
                    this.f2369a[i].m45086a(c2);
                    return this.f2369a[i].m45082c();
                }
                i++;
            } else {
                return Double.NaN;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.constraintlayout.motion.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.constraintlayout.motion.a.a$a] */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v49, types: [double] */
    /* JADX WARN: Type inference failed for: r0v53, types: [double] */
    /* JADX WARN: Type inference failed for: r0v6, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r1v11, types: [double] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v0, types: [double] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
    /* renamed from: b */
    public final void mo45066b(double d, double[] dArr) {
        ?? r11;
        if (d < this.f2369a[0].f2374c) {
            r11 = this.f2369a[0].f2374c;
        } else {
            C0571a[] c0571aArr = this.f2369a;
            r11 = d;
            if (d > c0571aArr[c0571aArr.length - 1].f2375d) {
                C0571a[] c0571aArr2 = this.f2369a;
                r11 = c0571aArr2[c0571aArr2.length - 1].f2375d;
            }
        }
        int i = 0;
        while (true) {
            C0571a[] c0571aArr3 = this.f2369a;
            if (i < c0571aArr3.length) {
                if (r11 <= c0571aArr3[i].f2375d) {
                    if (this.f2369a[i].f2389r) {
                        dArr[0] = this.f2369a[i].f2383l;
                        dArr[1] = this.f2369a[i].f2384m;
                        return;
                    }
                    this.f2369a[i].m45086a(r11);
                    dArr[0] = this.f2369a[i].m45082c();
                    C0571a c0571a = this.f2369a[i];
                    double d2 = c0571a.f2381j;
                    double d3 = c0571a.f2387p;
                    double d4 = (-c0571a.f2382k) * c0571a.f2386o;
                    double hypot = c0571a.f2385n / Math.hypot(d2 * d3, d4);
                    dArr[1] = (c0571a.f2388q ? (-d4) * hypot : d4 * hypot) == true ? 1 : 0;
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }
}
