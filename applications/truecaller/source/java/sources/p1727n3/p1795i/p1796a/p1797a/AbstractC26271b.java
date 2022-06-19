package p1727n3.p1795i.p1796a.p1797a;
/* renamed from: n3.i.a.a.b */
/* loaded from: classes-dex2jar.jar:n3/i/a/a/b.class */
public abstract class AbstractC26271b {

    /* renamed from: n3.i.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/a/b$a.class */
    public static class C26272a extends AbstractC26271b {

        /* renamed from: a */
        public double f73278a;

        /* renamed from: b */
        public double[] f73279b;

        public C26272a(double d, double[] dArr) {
            this.f73278a = d;
            this.f73279b = dArr;
        }

        @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
        /* renamed from: b */
        public double mo2228b(double d, int i) {
            return this.f73279b[i];
        }

        @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
        /* renamed from: c */
        public void mo2227c(double d, double[] dArr) {
            double[] dArr2 = this.f73279b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
        /* renamed from: d */
        public void mo2226d(double d, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.f73279b;
                if (i < dArr.length) {
                    fArr[i] = (float) dArr[i];
                    i++;
                } else {
                    return;
                }
            }
        }

        @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
        /* renamed from: e */
        public void mo2225e(double d, double[] dArr) {
            for (int i = 0; i < this.f73279b.length; i++) {
                dArr[i] = 0.0d;
            }
        }

        @Override // p1727n3.p1795i.p1796a.p1797a.AbstractC26271b
        /* renamed from: f */
        public double[] mo2224f() {
            return new double[]{this.f73278a};
        }
    }

    /* renamed from: a */
    public static AbstractC26271b m2234a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        return i != 0 ? i != 2 ? new C26275d(dArr, dArr2) : new C26272a(dArr[0], dArr2[0]) : new C26276e(dArr, dArr2);
    }

    /* renamed from: b */
    public abstract double mo2228b(double d, int i);

    /* renamed from: c */
    public abstract void mo2227c(double d, double[] dArr);

    /* renamed from: d */
    public abstract void mo2226d(double d, float[] fArr);

    /* renamed from: e */
    public abstract void mo2225e(double d, double[] dArr);

    /* renamed from: f */
    public abstract double[] mo2224f();
}
