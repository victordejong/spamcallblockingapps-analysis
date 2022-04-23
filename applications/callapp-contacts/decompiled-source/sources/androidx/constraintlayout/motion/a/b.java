package androidx.constraintlayout.motion.a;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/b.class */
public abstract class b {

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/b$a.class */
    static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        double f1435a;

        /* renamed from: b  reason: collision with root package name */
        double[] f1436b;

        a(double d2, double[] dArr) {
            this.f1435a = d2;
            this.f1436b = dArr;
        }

        @Override // androidx.constraintlayout.motion.a.b
        public final double a(double d2) {
            return this.f1436b[0];
        }

        @Override // androidx.constraintlayout.motion.a.b
        public final void a(double d2, double[] dArr) {
            double[] dArr2 = this.f1436b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.motion.a.b
        public final void a(double d2, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.f1436b;
                if (i < dArr.length) {
                    fArr[i] = (float) dArr[i];
                    i++;
                } else {
                    return;
                }
            }
        }

        @Override // androidx.constraintlayout.motion.a.b
        public final double[] a() {
            return new double[]{this.f1435a};
        }

        @Override // androidx.constraintlayout.motion.a.b
        public final double b(double d2) {
            return 0.0d;
        }

        @Override // androidx.constraintlayout.motion.a.b
        public final void b(double d2, double[] dArr) {
            for (int i = 0; i < this.f1436b.length; i++) {
                dArr[i] = 0.0d;
            }
        }
    }

    public static b a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        return i != 0 ? i != 2 ? new d(dArr, dArr2) : new a(dArr[0], dArr2[0]) : new e(dArr, dArr2);
    }

    public abstract double a(double d2);

    public abstract void a(double d2, double[] dArr);

    public abstract void a(double d2, float[] fArr);

    public abstract double[] a();

    public abstract double b(double d2);

    public abstract void b(double d2, double[] dArr);
}
