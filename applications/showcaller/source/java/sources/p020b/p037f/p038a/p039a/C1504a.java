package p020b.p037f.p038a.p039a;

import java.util.Arrays;
/* renamed from: b.f.a.a.a */
/* loaded from: classes-dex2jar.jar:b/f/a/a/a.class */
public class C1504a extends AbstractC1506b {

    /* renamed from: a */
    private final double[] f5985a;

    /* renamed from: b */
    C1505a[] f5986b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.f.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/f/a/a/a$a.class */
    public static class C1505a {

        /* renamed from: a */
        private static double[] f5987a = new double[91];

        /* renamed from: b */
        double[] f5988b;

        /* renamed from: c */
        double f5989c;

        /* renamed from: d */
        double f5990d;

        /* renamed from: e */
        double f5991e;

        /* renamed from: f */
        double f5992f;

        /* renamed from: g */
        double f5993g;

        /* renamed from: h */
        double f5994h;

        /* renamed from: i */
        double f5995i;

        /* renamed from: j */
        double f5996j;

        /* renamed from: k */
        double f5997k;

        /* renamed from: l */
        double f5998l;

        /* renamed from: m */
        double f5999m;

        /* renamed from: n */
        double f6000n;

        /* renamed from: o */
        double f6001o;

        /* renamed from: p */
        double f6002p;

        /* renamed from: q */
        double f6003q;

        /* renamed from: r */
        boolean f6004r;

        /* renamed from: s */
        boolean f6005s;

        /* JADX WARN: Multi-variable type inference failed */
        C1505a(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            boolean z = false;
            this.f6005s = false;
            this.f6004r = i == 1 ? true : z;
            this.f5990d = d;
            this.f5991e = d2;
            this.f5996j = 1.0d / (d2 - d);
            if (3 == i) {
                this.f6005s = true;
            }
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            if (!this.f6005s && Math.abs(d7) >= 0.001d && Math.abs(d8) >= 0.001d) {
                this.f5988b = new double[101];
                boolean z2 = this.f6004r;
                this.f5997k = d7 * (z2 ? -1 : 1);
                this.f5998l = d8 * (z2 ? 1 : -1);
                this.f5999m = z2 ? d5 : d3;
                this.f6000n = z2 ? d4 : d6;
                m29897a(d3, d4, d5, d6);
                this.f6001o = this.f5989c * this.f5996j;
                return;
            }
            this.f6005s = true;
            this.f5992f = d3;
            this.f5993g = d5;
            this.f5994h = d4;
            this.f5995i = d6;
            double hypot = Math.hypot(d8, d7);
            this.f5989c = hypot;
            this.f6001o = hypot * this.f5996j;
            double d9 = this.f5991e;
            double d10 = this.f5990d;
            this.f5999m = d7 / (d9 - d10);
            this.f6000n = d8 / (d9 - d10);
        }

        /* JADX WARN: Type inference failed for: r0v48, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        /* JADX WARN: Type inference failed for: r0v57, types: [double] */
        /* renamed from: a */
        private void m29897a(double d, double d2, double d3, double d4) {
            double[] dArr;
            double[] dArr2;
            int i = 0;
            char c = 0;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                if (i >= f5987a.length) {
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
                    f5987a[i] = d5;
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
            this.f5989c = c2;
            int i2 = 0;
            while (true) {
                double[] dArr3 = f5987a;
                if (i2 >= dArr3.length) {
                    break;
                }
                dArr3[i2] = dArr3[i2] / c;
                i2++;
            }
            int i3 = 0;
            while (true) {
                if (i3 < this.f5988b.length) {
                    double length = i3 / (dArr2.length - 1);
                    int binarySearch = Arrays.binarySearch(f5987a, length);
                    if (binarySearch >= 0) {
                        this.f5988b[i3] = binarySearch / (f5987a.length - 1);
                    } else if (binarySearch == -1) {
                        this.f5988b[i3] = 0.0d;
                    } else {
                        int i4 = -binarySearch;
                        int i5 = i4 - 2;
                        double d6 = i5;
                        double[] dArr4 = f5987a;
                        this.f5988b[i3] = (d6 + ((length - dArr4[i5]) / (dArr4[i4 - 1] - dArr4[i5]))) / (dArr4.length - 1);
                    }
                    i3++;
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [double] */
        /* JADX WARN: Type inference failed for: r0v2, types: [double] */
        /* renamed from: b */
        double m29896b() {
            ?? r0 = this.f5997k * this.f6003q;
            double hypot = this.f6001o / Math.hypot(r0, (-this.f5998l) * this.f6002p);
            char c = r0;
            if (this.f6004r) {
                c = -r0;
            }
            return c * hypot;
        }

        /* JADX WARN: Type inference failed for: r0v15, types: [double] */
        /* JADX WARN: Type inference failed for: r0v18, types: [double] */
        /* renamed from: c */
        double m29895c() {
            double d = this.f5997k;
            double d2 = this.f6003q;
            double d3 = (-this.f5998l) * this.f6002p;
            double hypot = this.f6001o / Math.hypot(d * d2, d3);
            return this.f6004r ? (-d3) * hypot : d3 * hypot;
        }

        /* renamed from: d */
        public double m29894d(double d) {
            return this.f5999m;
        }

        /* renamed from: e */
        public double m29893e(double d) {
            return this.f6000n;
        }

        /* renamed from: f */
        public double m29892f(double d) {
            double d2 = this.f5990d;
            double d3 = this.f5996j;
            double d4 = this.f5992f;
            return d4 + ((d - d2) * d3 * (this.f5993g - d4));
        }

        /* renamed from: g */
        public double m29891g(double d) {
            double d2 = this.f5990d;
            double d3 = this.f5996j;
            double d4 = this.f5994h;
            return d4 + ((d - d2) * d3 * (this.f5995i - d4));
        }

        /* renamed from: h */
        double m29890h() {
            return this.f5999m + (this.f5997k * this.f6002p);
        }

        /* renamed from: i */
        double m29889i() {
            return this.f6000n + (this.f5998l * this.f6003q);
        }

        /* renamed from: j */
        double m29888j(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f5988b;
            double length = d * (dArr.length - 1);
            int i = (int) length;
            return dArr[i] + ((length - i) * (dArr[i + 1] - dArr[i]));
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [double] */
        /* JADX WARN: Type inference failed for: r0v8, types: [double] */
        /* renamed from: k */
        void m29887k(double d) {
            double m29888j = m29888j((this.f6004r ? this.f5991e - d : d - this.f5990d) * this.f5996j) * 1.5707963267948966d;
            this.f6002p = Math.sin(m29888j);
            this.f6003q = Math.cos(m29888j);
        }
    }

    public C1504a(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f5985a = dArr;
        this.f5986b = new C1505a[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (true) {
            C1505a[] c1505aArr = this.f5986b;
            if (i < c1505aArr.length) {
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
                c1505aArr[i] = new C1505a(i3, dArr[i], dArr[i5], dArr2[i][0], dArr2[i][1], dArr2[i5][0], dArr2[i5][1]);
                i = i5;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v42, types: [double] */
    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: c */
    public double mo29879c(double d, int i) {
        int i2;
        char c;
        C1505a[] c1505aArr = this.f5986b;
        if (d < c1505aArr[0].f5990d) {
            c = c1505aArr[0].f5990d;
            i2 = 0;
        } else {
            i2 = 0;
            c = d;
            if (d > c1505aArr[c1505aArr.length - 1].f5991e) {
                c = c1505aArr[c1505aArr.length - 1].f5991e;
                i2 = 0;
            }
        }
        while (true) {
            C1505a[] c1505aArr2 = this.f5986b;
            if (i2 < c1505aArr2.length) {
                if (c <= c1505aArr2[i2].f5991e) {
                    if (c1505aArr2[i2].f6005s) {
                        return i == 0 ? c1505aArr2[i2].m29892f(c) : c1505aArr2[i2].m29891g(c);
                    }
                    c1505aArr2[i2].m29887k(c);
                    return i == 0 ? this.f5986b[i2].m29890h() : this.f5986b[i2].m29889i();
                }
                i2++;
            } else {
                return Double.NaN;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: d */
    public void mo29878d(double d, double[] dArr) {
        C1505a[] c1505aArr = this.f5986b;
        char c = d;
        if (d < c1505aArr[0].f5990d) {
            c = c1505aArr[0].f5990d;
        }
        char c2 = c;
        if (c > c1505aArr[c1505aArr.length - 1].f5991e) {
            c2 = c1505aArr[c1505aArr.length - 1].f5991e;
        }
        int i = 0;
        while (true) {
            C1505a[] c1505aArr2 = this.f5986b;
            if (i < c1505aArr2.length) {
                if (c2 <= c1505aArr2[i].f5991e) {
                    if (c1505aArr2[i].f6005s) {
                        dArr[0] = c1505aArr2[i].m29892f(c2);
                        dArr[1] = this.f5986b[i].m29891g(c2);
                        return;
                    }
                    c1505aArr2[i].m29887k(c2);
                    dArr[0] = this.f5986b[i].m29890h();
                    dArr[1] = this.f5986b[i].m29889i();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /* JADX WARN: Type inference failed for: r0v27, types: [double] */
    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: e */
    public void mo29877e(double d, float[] fArr) {
        char c;
        C1505a[] c1505aArr = this.f5986b;
        if (d < c1505aArr[0].f5990d) {
            c = c1505aArr[0].f5990d;
        } else {
            c = d;
            if (d > c1505aArr[c1505aArr.length - 1].f5991e) {
                c = c1505aArr[c1505aArr.length - 1].f5991e;
            }
        }
        int i = 0;
        while (true) {
            C1505a[] c1505aArr2 = this.f5986b;
            if (i < c1505aArr2.length) {
                if (c <= c1505aArr2[i].f5991e) {
                    if (c1505aArr2[i].f6005s) {
                        fArr[0] = (float) c1505aArr2[i].m29892f(c);
                        fArr[1] = (float) this.f5986b[i].m29891g(c);
                        return;
                    }
                    c1505aArr2[i].m29887k(c);
                    fArr[0] = (float) this.f5986b[i].m29890h();
                    fArr[1] = (float) this.f5986b[i].m29889i();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: f */
    public double mo29876f(double d, int i) {
        C1505a[] c1505aArr = this.f5986b;
        char c = d;
        if (d < c1505aArr[0].f5990d) {
            c = c1505aArr[0].f5990d;
        }
        int i2 = 0;
        char c2 = c;
        if (c > c1505aArr[c1505aArr.length - 1].f5991e) {
            c2 = c1505aArr[c1505aArr.length - 1].f5991e;
            i2 = 0;
        }
        while (true) {
            C1505a[] c1505aArr2 = this.f5986b;
            if (i2 < c1505aArr2.length) {
                if (c2 <= c1505aArr2[i2].f5991e) {
                    if (c1505aArr2[i2].f6005s) {
                        return i == 0 ? c1505aArr2[i2].m29894d(c2) : c1505aArr2[i2].m29893e(c2);
                    }
                    c1505aArr2[i2].m29887k(c2);
                    return i == 0 ? this.f5986b[i2].m29896b() : this.f5986b[i2].m29895c();
                }
                i2++;
            } else {
                return Double.NaN;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /* JADX WARN: Type inference failed for: r0v27, types: [double] */
    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: g */
    public void mo29875g(double d, double[] dArr) {
        char c;
        C1505a[] c1505aArr = this.f5986b;
        if (d < c1505aArr[0].f5990d) {
            c = c1505aArr[0].f5990d;
        } else {
            c = d;
            if (d > c1505aArr[c1505aArr.length - 1].f5991e) {
                c = c1505aArr[c1505aArr.length - 1].f5991e;
            }
        }
        int i = 0;
        while (true) {
            C1505a[] c1505aArr2 = this.f5986b;
            if (i < c1505aArr2.length) {
                if (c <= c1505aArr2[i].f5991e) {
                    if (c1505aArr2[i].f6005s) {
                        dArr[0] = c1505aArr2[i].m29894d(c);
                        dArr[1] = this.f5986b[i].m29893e(c);
                        return;
                    }
                    c1505aArr2[i].m29887k(c);
                    dArr[0] = this.f5986b[i].m29896b();
                    dArr[1] = this.f5986b[i].m29895c();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // p020b.p037f.p038a.p039a.AbstractC1506b
    /* renamed from: h */
    public double[] mo29874h() {
        return this.f5985a;
    }
}
