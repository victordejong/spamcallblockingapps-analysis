package p1727n3.p1795i.p1796a.p1797a;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.Arrays;
/* renamed from: n3.i.a.a.a */
/* loaded from: classes-dex2jar.jar:n3/i/a/a/a.class */
public class C26269a extends AbstractC26271b {

    /* renamed from: a */
    public final double[] f73257a;

    /* renamed from: b */
    public C26270a[] f73258b;

    /* renamed from: n3.i.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/a/a$a.class */
    public static class C26270a {

        /* renamed from: s */
        public static double[] f73259s = new double[91];

        /* renamed from: a */
        public double[] f73260a;

        /* renamed from: b */
        public double f73261b;

        /* renamed from: c */
        public double f73262c;

        /* renamed from: d */
        public double f73263d;

        /* renamed from: e */
        public double f73264e;

        /* renamed from: f */
        public double f73265f;

        /* renamed from: g */
        public double f73266g;

        /* renamed from: h */
        public double f73267h;

        /* renamed from: i */
        public double f73268i;

        /* renamed from: j */
        public double f73269j;

        /* renamed from: k */
        public double f73270k;

        /* renamed from: l */
        public double f73271l;

        /* renamed from: m */
        public double f73272m;

        /* renamed from: n */
        public double f73273n;

        /* renamed from: o */
        public double f73274o;

        /* renamed from: p */
        public double f73275p;

        /* renamed from: q */
        public boolean f73276q;

        /* renamed from: r */
        public boolean f73277r;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v100, types: [double] */
        /* JADX WARN: Type inference failed for: r0v107, types: [double] */
        /* JADX WARN: Type inference failed for: r0v98, types: [double] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v6 */
        /* JADX WARN: Type inference failed for: r14v7 */
        /* JADX WARN: Type inference failed for: r16v0, types: [double] */
        /* JADX WARN: Type inference failed for: r18v0, types: [double] */
        /* JADX WARN: Type inference failed for: r20v0, types: [double] */
        public C26270a(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            double[] dArr;
            boolean z = false;
            this.f73277r = false;
            this.f73276q = i == 1 ? true : z;
            this.f73262c = d;
            this.f73263d = d2;
            this.f73268i = 1.0d / (d2 - d);
            if (3 == i) {
                this.f73277r = true;
            }
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            if (this.f73277r || Math.abs(d7) < 0.001d || Math.abs(d8) < 0.001d) {
                this.f73277r = true;
                this.f73264e = d3;
                this.f73265f = d5;
                this.f73266g = d4;
                this.f73267h = d6;
                double hypot = Math.hypot(d8, d7);
                this.f73261b = hypot;
                this.f73273n = hypot * this.f73268i;
                double d9 = this.f73263d;
                double d10 = this.f73262c;
                this.f73271l = d7 / (d9 - d10);
                this.f73272m = d8 / (d9 - d10);
                return;
            }
            this.f73260a = new double[101];
            boolean z2 = this.f73276q;
            this.f73269j = (z2 ? -1 : 1) * d7;
            this.f73270k = d8 * (z2 ? 1 : -1);
            this.f73271l = z2 ? d5 : d3;
            this.f73272m = z2 ? d4 : d6;
            double[] dArr2 = f73259s;
            int i2 = 0;
            char c = 0;
            boolean z3 = false;
            boolean z4 = false;
            while (i2 < dArr2.length) {
                double radians = Math.toRadians((i2 * 90.0d) / (dArr2.length - 1));
                double sin = Math.sin(radians);
                double cos = Math.cos(radians);
                ?? r0 = sin * d7;
                ?? r02 = cos * (d4 - d6);
                if (i2 > 0) {
                    c = Math.hypot(r0 - (z3 ? 1.0d : 0.0d), r02 - (z4 ? 1.0d : 0.0d)) + c;
                    double d11 = c == 1 ? 1 : 0;
                    long j = c == 1 ? 1 : 0;
                    long j2 = c == 1 ? 1 : 0;
                    dArr2[i2] = d11;
                }
                i2++;
                z4 = r02;
                z3 = r0;
                c = c;
            }
            char c2 = c == 1 ? 1 : 0;
            boolean z5 = c == 1 ? 1 : 0;
            boolean z6 = c == 1 ? 1 : 0;
            boolean z7 = c == 1 ? 1 : 0;
            this.f73261b = c2;
            for (int i3 = 0; i3 < dArr2.length; i3++) {
                dArr2[i3] = dArr2[i3] / c;
            }
            int i4 = 0;
            while (true) {
                if (i4 >= this.f73260a.length) {
                    this.f73273n = this.f73261b * this.f73268i;
                    return;
                }
                double length = i4 / (dArr.length - 1);
                int binarySearch = Arrays.binarySearch(dArr2, length);
                if (binarySearch >= 0) {
                    this.f73260a[i4] = binarySearch / (dArr2.length - 1);
                } else if (binarySearch == -1) {
                    this.f73260a[i4] = 0.0d;
                } else {
                    int i5 = -binarySearch;
                    int i6 = i5 - 2;
                    this.f73260a[i4] = (((length - dArr2[i6]) / (dArr2[i5 - 1] - dArr2[i6])) + i6) / (dArr2.length - 1);
                }
                i4++;
            }
        }

        /* renamed from: a */
        public double m2239a(double d) {
            double d2 = this.f73262c;
            double d3 = this.f73268i;
            double d4 = this.f73264e;
            return ((this.f73265f - d4) * (d - d2) * d3) + d4;
        }

        /* renamed from: b */
        public double m2238b(double d) {
            double d2 = this.f73262c;
            double d3 = this.f73268i;
            double d4 = this.f73266g;
            return ((this.f73267h - d4) * (d - d2) * d3) + d4;
        }

        /* renamed from: c */
        public double m2237c() {
            return (this.f73269j * this.f73274o) + this.f73271l;
        }

        /* renamed from: d */
        public double m2236d() {
            return (this.f73270k * this.f73275p) + this.f73272m;
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [double] */
        /* JADX WARN: Type inference failed for: r0v30, types: [double] */
        /* JADX WARN: Type inference failed for: r0v33, types: [double] */
        /* renamed from: e */
        public void m2235e(double d) {
            double d2 = (this.f73276q ? this.f73263d - d : d - this.f73262c) * this.f73268i;
            char c = 0;
            if (d2 > PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                c = 0;
                if (d2 < 1.0d) {
                    double[] dArr = this.f73260a;
                    double length = d2 * (dArr.length - 1);
                    int i = (int) length;
                    c = ((dArr[i + 1] - dArr[i]) * (length - i)) + dArr[i];
                }
            }
            double d3 = c * 11544;
            this.f73274o = Math.sin(d3);
            this.f73275p = Math.cos(d3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
        if (r23 == 1) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C26269a(int[] r19, double[] r20, double[][] r21) {
        /*
            Method dump skipped, instructions count: 173
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1796a.p1797a.C26269a.<init>(int[], double[], double[][]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v42, types: [double] */
    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: b */
    public double mo2228b(double d, int i) {
        int i2;
        char c;
        C26270a[] c26270aArr = this.f73258b;
        if (d < c26270aArr[0].f73262c) {
            c = c26270aArr[0].f73262c;
            i2 = 0;
        } else {
            i2 = 0;
            c = d;
            if (d > c26270aArr[c26270aArr.length - 1].f73263d) {
                c = c26270aArr[c26270aArr.length - 1].f73263d;
                i2 = 0;
            }
        }
        while (true) {
            C26270a[] c26270aArr2 = this.f73258b;
            if (i2 < c26270aArr2.length) {
                if (c <= c26270aArr2[i2].f73263d) {
                    if (c26270aArr2[i2].f73277r) {
                        return i == 0 ? c26270aArr2[i2].m2239a(c) : c26270aArr2[i2].m2238b(c);
                    }
                    c26270aArr2[i2].m2235e(c);
                    return i == 0 ? this.f73258b[i2].m2237c() : this.f73258b[i2].m2236d();
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
    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: c */
    public void mo2227c(double d, double[] dArr) {
        C26270a[] c26270aArr = this.f73258b;
        char c = d;
        if (d < c26270aArr[0].f73262c) {
            c = c26270aArr[0].f73262c;
        }
        char c2 = c;
        if (c > c26270aArr[c26270aArr.length - 1].f73263d) {
            c2 = c26270aArr[c26270aArr.length - 1].f73263d;
        }
        int i = 0;
        while (true) {
            C26270a[] c26270aArr2 = this.f73258b;
            if (i < c26270aArr2.length) {
                if (c2 <= c26270aArr2[i].f73263d) {
                    if (c26270aArr2[i].f73277r) {
                        dArr[0] = c26270aArr2[i].m2239a(c2);
                        dArr[1] = this.f73258b[i].m2238b(c2);
                        return;
                    }
                    c26270aArr2[i].m2235e(c2);
                    dArr[0] = this.f73258b[i].m2237c();
                    dArr[1] = this.f73258b[i].m2236d();
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
    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: d */
    public void mo2226d(double d, float[] fArr) {
        char c;
        C26270a[] c26270aArr = this.f73258b;
        if (d < c26270aArr[0].f73262c) {
            c = c26270aArr[0].f73262c;
        } else {
            c = d;
            if (d > c26270aArr[c26270aArr.length - 1].f73263d) {
                c = c26270aArr[c26270aArr.length - 1].f73263d;
            }
        }
        int i = 0;
        while (true) {
            C26270a[] c26270aArr2 = this.f73258b;
            if (i < c26270aArr2.length) {
                if (c <= c26270aArr2[i].f73263d) {
                    if (c26270aArr2[i].f73277r) {
                        fArr[0] = (float) c26270aArr2[i].m2239a(c);
                        fArr[1] = (float) this.f73258b[i].m2238b(c);
                        return;
                    }
                    c26270aArr2[i].m2235e(c);
                    fArr[0] = (float) this.f73258b[i].m2237c();
                    fArr[1] = (float) this.f73258b[i].m2236d();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [n3.i.a.a.a$a] */
    /* JADX WARN: Type inference failed for: r0v14, types: [n3.i.a.a.a$a] */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v51, types: [double] */
    /* JADX WARN: Type inference failed for: r0v54, types: [double] */
    /* JADX WARN: Type inference failed for: r0v56, types: [double] */
    /* JADX WARN: Type inference failed for: r0v6, types: [n3.i.a.a.a$a[]] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v67, types: [double] */
    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0, types: [double] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r1v10, types: [double] */
    /* JADX WARN: Type inference failed for: r1v6, types: [n3.i.a.a.a$a] */
    /* JADX WARN: Type inference failed for: r2v10, types: [n3.i.a.a.a$a] */
    /* JADX WARN: Type inference failed for: r2v13, types: [n3.i.a.a.a$a] */
    /* JADX WARN: Type inference failed for: r2v4, types: [double] */
    /* JADX WARN: Type inference failed for: r2v8 */
    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: e */
    public void mo2225e(double d, double[] dArr) {
        ?? r14;
        C26270a[] c26270aArr = this.f73258b;
        if (d < c26270aArr[0].f73262c) {
            r14 = c26270aArr[0].f73262c;
        } else {
            r14 = d;
            if (d > c26270aArr[c26270aArr.length - 1].f73263d) {
                r14 = c26270aArr[c26270aArr.length - 1].f73263d;
            }
        }
        int i = 0;
        while (true) {
            ?? r0 = this.f73258b;
            if (i < r0.length) {
                if (r14 <= r0[i].f73263d) {
                    if (r0[i].f73277r) {
                        dArr[0] = r0[i].f73271l;
                        dArr[1] = r0[i].f73272m;
                        return;
                    }
                    r0[i].m2235e(r14);
                    C26270a c26270a = this.f73258b[i];
                    ?? r02 = c26270a.f73269j * c26270a.f73275p;
                    double hypot = c26270a.f73273n / Math.hypot(r02, (-c26270a.f73270k) * c26270a.f73274o);
                    ?? r10 = r02;
                    if (c26270a.f73276q) {
                        r10 = -r02;
                    }
                    dArr[0] = r10 * hypot;
                    C26270a c26270a2 = this.f73258b[i];
                    double d2 = c26270a2.f73269j;
                    double d3 = c26270a2.f73275p;
                    double d4 = (-c26270a2.f73270k) * c26270a2.f73274o;
                    double hypot2 = c26270a2.f73273n / Math.hypot(d2 * d3, d4);
                    dArr[1] = (c26270a2.f73276q ? (-d4) * hypot2 : d4 * hypot2) == true ? 1 : 0;
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
    /* renamed from: f */
    public double[] mo2224f() {
        return this.f73257a;
    }
}
