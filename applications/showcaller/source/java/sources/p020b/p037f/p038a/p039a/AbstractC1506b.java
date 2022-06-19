package p020b.p037f.p038a.p039a;
/* renamed from: b.f.a.a.b */
/* loaded from: classes-dex2jar.jar:b/f/a/a/b.class */
public abstract class AbstractC1506b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.f.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/f/a/a/b$a.class */
    public static class C1507a extends AbstractC1506b {

        /* renamed from: a */
        double f6006a;

        /* renamed from: b */
        double[] f6007b;

        C1507a(double d, double[] dArr) {
            this.f6006a = d;
            this.f6007b = dArr;
        }

        @Override // p020b.p037f.p038a.p039a.AbstractC1506b
        /* renamed from: c */
        public double mo29879c(double d, int i) {
            return this.f6007b[i];
        }

        @Override // p020b.p037f.p038a.p039a.AbstractC1506b
        /* renamed from: d */
        public void mo29878d(double d, double[] dArr) {
            double[] dArr2 = this.f6007b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // p020b.p037f.p038a.p039a.AbstractC1506b
        /* renamed from: e */
        public void mo29877e(double d, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.f6007b;
                if (i < dArr.length) {
                    fArr[i] = (float) dArr[i];
                    i++;
                } else {
                    return;
                }
            }
        }

        @Override // p020b.p037f.p038a.p039a.AbstractC1506b
        /* renamed from: f */
        public double mo29876f(double d, int i) {
            return 0.0d;
        }

        @Override // p020b.p037f.p038a.p039a.AbstractC1506b
        /* renamed from: g */
        public void mo29875g(double d, double[] dArr) {
            for (int i = 0; i < this.f6007b.length; i++) {
                dArr[i] = 0.0d;
            }
        }

        @Override // p020b.p037f.p038a.p039a.AbstractC1506b
        /* renamed from: h */
        public double[] mo29874h() {
            return new double[]{this.f6006a};
        }
    }

    /* renamed from: a */
    public static AbstractC1506b m29886a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        return i != 0 ? i != 2 ? new C1510d(dArr, dArr2) : new C1507a(dArr[0], dArr2[0]) : new C1511e(dArr, dArr2);
    }

    /* renamed from: b */
    public static AbstractC1506b m29885b(int[] iArr, double[] dArr, double[][] dArr2) {
        return new C1504a(iArr, dArr, dArr2);
    }

    /* renamed from: c */
    public abstract double mo29879c(double d, int i);

    /* renamed from: d */
    public abstract void mo29878d(double d, double[] dArr);

    /* renamed from: e */
    public abstract void mo29877e(double d, float[] fArr);

    /* renamed from: f */
    public abstract double mo29876f(double d, int i);

    /* renamed from: g */
    public abstract void mo29875g(double d, double[] dArr);

    /* renamed from: h */
    public abstract double[] mo29874h();
}
