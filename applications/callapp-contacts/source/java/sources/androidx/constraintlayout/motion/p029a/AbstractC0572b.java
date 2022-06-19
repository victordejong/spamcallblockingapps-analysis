package androidx.constraintlayout.motion.p029a;
/* renamed from: androidx.constraintlayout.motion.a.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/b.class */
public abstract class AbstractC0572b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/b$a.class */
    public static final class C0573a extends AbstractC0572b {

        /* renamed from: a */
        double f2390a;

        /* renamed from: b */
        double[] f2391b;

        C0573a(double d, double[] dArr) {
            this.f2390a = d;
            this.f2391b = dArr;
        }

        @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
        /* renamed from: a */
        public final double mo45072a(double d) {
            return this.f2391b[0];
        }

        @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
        /* renamed from: a */
        public final void mo45070a(double d, double[] dArr) {
            double[] dArr2 = this.f2391b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
        /* renamed from: a */
        public final void mo45069a(double d, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.f2391b;
                if (i < dArr.length) {
                    fArr[i] = (float) dArr[i];
                    i++;
                } else {
                    return;
                }
            }
        }

        @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
        /* renamed from: a */
        public final double[] mo45073a() {
            return new double[]{this.f2390a};
        }

        @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
        /* renamed from: b */
        public final double mo45068b(double d) {
            return 0.0d;
        }

        @Override // androidx.constraintlayout.motion.p029a.AbstractC0572b
        /* renamed from: b */
        public final void mo45066b(double d, double[] dArr) {
            for (int i = 0; i < this.f2391b.length; i++) {
                dArr[i] = 0.0d;
            }
        }
    }

    /* renamed from: a */
    public static AbstractC0572b m45079a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        return i != 0 ? i != 2 ? new C0576d(dArr, dArr2) : new C0573a(dArr[0], dArr2[0]) : new C0577e(dArr, dArr2);
    }

    /* renamed from: a */
    public abstract double mo45072a(double d);

    /* renamed from: a */
    public abstract void mo45070a(double d, double[] dArr);

    /* renamed from: a */
    public abstract void mo45069a(double d, float[] fArr);

    /* renamed from: a */
    public abstract double[] mo45073a();

    /* renamed from: b */
    public abstract double mo45068b(double d);

    /* renamed from: b */
    public abstract void mo45066b(double d, double[] dArr);
}
