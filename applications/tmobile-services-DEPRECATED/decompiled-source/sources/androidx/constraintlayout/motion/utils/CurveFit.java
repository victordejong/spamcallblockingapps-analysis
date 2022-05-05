package androidx.constraintlayout.motion.utils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/CurveFit.class */
public abstract class CurveFit {

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/CurveFit$Constant.class */
    static class Constant extends CurveFit {

        /* renamed from: a */
        double f1625a;

        /* renamed from: b */
        double[] f1626b;

        Constant(double d, double[] dArr) {
            this.f1625a = d;
            this.f1626b = dArr;
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        /* renamed from: c */
        public double mo20970c(double d, int i) {
            return this.f1626b[i];
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        /* renamed from: d */
        public void mo20969d(double d, double[] dArr) {
            double[] dArr2 = this.f1626b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        /* renamed from: e */
        public void mo20968e(double d, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.f1626b;
                if (i < dArr.length) {
                    fArr[i] = (float) dArr[i];
                    i++;
                } else {
                    return;
                }
            }
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        /* renamed from: f */
        public double mo20967f(double d, int i) {
            return 0.0d;
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        /* renamed from: g */
        public void mo20966g(double d, double[] dArr) {
            for (int i = 0; i < this.f1626b.length; i++) {
                dArr[i] = 0.0d;
            }
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        /* renamed from: h */
        public double[] mo20965h() {
            return new double[]{this.f1625a};
        }
    }

    /* renamed from: a */
    public static CurveFit m20977a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        return i != 0 ? i != 2 ? new LinearCurveFit(dArr, dArr2) : new Constant(dArr[0], dArr2[0]) : new MonotonicCurveFit(dArr, dArr2);
    }

    /* renamed from: b */
    public static CurveFit m20976b(int[] iArr, double[] dArr, double[][] dArr2) {
        return new ArcCurveFit(iArr, dArr, dArr2);
    }

    /* renamed from: c */
    public abstract double mo20970c(double d, int i);

    /* renamed from: d */
    public abstract void mo20969d(double d, double[] dArr);

    /* renamed from: e */
    public abstract void mo20968e(double d, float[] fArr);

    /* renamed from: f */
    public abstract double mo20967f(double d, int i);

    /* renamed from: g */
    public abstract void mo20966g(double d, double[] dArr);

    /* renamed from: h */
    public abstract double[] mo20965h();
}
