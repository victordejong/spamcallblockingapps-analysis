package androidx.constraintlayout.motion.utils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/HyperSpline.class */
public class HyperSpline {
    double[][] mCtl;
    Cubic[][] mCurve;
    double[] mCurveLength;
    int mDimensionality;
    int mPoints;
    double mTotalLength;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/HyperSpline$Cubic.class */
    public static class Cubic {
        public static final double HALF = 0.5d;
        public static final double THIRD = 0.3333333333333333d;

        /* renamed from: mA */
        double f20mA;

        /* renamed from: mB */
        double f21mB;

        /* renamed from: mC */
        double f22mC;

        /* renamed from: mD */
        double f23mD;

        public Cubic(double d, double d2, double d3, double d4) {
            this.f20mA = d;
            this.f21mB = d2;
            this.f22mC = d3;
            this.f23mD = d4;
        }

        public double eval(double d) {
            return (((((this.f23mD * d) + this.f22mC) * d) + this.f21mB) * d) + this.f20mA;
        }

        public double vel(double d) {
            return (((this.f23mD * 0.3333333333333333d * d) + (this.f22mC * 0.5d)) * d) + this.f21mB;
        }
    }

    public HyperSpline() {
    }

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    static Cubic[] calcNaturalCubic(int i, double[] dArr) {
        double[] dArr2 = new double[i];
        double[] dArr3 = new double[i];
        double[] dArr4 = new double[i];
        int i2 = i - 1;
        int i3 = 0;
        dArr2[0] = 0.5d;
        int i4 = 1;
        for (int i5 = 1; i5 < i2; i5++) {
            dArr2[i5] = 1.0d / (4.0d - dArr2[i5 - 1]);
        }
        int i6 = i2 - 1;
        dArr2[i2] = 1.0d / (2.0d - dArr2[i6]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (true) {
            int i7 = i4;
            if (i7 >= i2) {
                break;
            }
            i4 = i7 + 1;
            int i8 = i7 - 1;
            dArr3[i7] = (((dArr[i4] - dArr[i8]) * 3.0d) - dArr3[i8]) * dArr2[i7];
        }
        dArr3[i2] = (((dArr[i2] - dArr[i6]) * 3.0d) - dArr3[i6]) * dArr2[i2];
        dArr4[i2] = dArr3[i2];
        for (int i9 = i6; i9 >= 0; i9--) {
            dArr4[i9] = dArr3[i9] - (dArr2[i9] * dArr4[i9 + 1]);
        }
        Cubic[] cubicArr = new Cubic[i2];
        while (true) {
            int i10 = i3;
            if (i10 < i2) {
                i3 = i10 + 1;
                cubicArr[i10] = new Cubic((float) dArr[i10], dArr4[i10], (((dArr[i3] - dArr[i10]) * 3.0d) - (dArr4[i10] * 2.0d)) - dArr4[i3], ((dArr[i10] - dArr[i3]) * 2.0d) + dArr4[i10] + dArr4[i3]);
            } else {
                return cubicArr;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v47, types: [double] */
    public double approxLength(Cubic[] cubicArr) {
        char c;
        int i;
        char c2;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        char c3 = 0;
        char c4 = 0;
        while (true) {
            c = c4;
            c2 = 0;
            if (c3 < 1.0d) {
                char c5 = 0;
                for (int i2 = 0; i2 < cubicArr.length; i2++) {
                    double d = dArr[i2];
                    double eval = cubicArr[i2].eval(c3);
                    dArr[i2] = eval;
                    double d2 = d - eval;
                    c5 += d2 * d2;
                }
                char c6 = c;
                if (c3 > 0.0d) {
                    c6 = c + Math.sqrt(c5);
                }
                c3 += 39322;
                c4 = c6;
            }
        }
        for (i = 0; i < cubicArr.length; i++) {
            double d3 = dArr[i];
            double eval2 = cubicArr[i].eval(1.0d);
            dArr[i] = eval2;
            double d4 = d3 - eval2;
            c2 += d4 * d4;
        }
        return c + Math.sqrt(c2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    public double getPos(double d, int i) {
        double[] dArr;
        char c = d * this.mTotalLength;
        int i2 = 0;
        while (true) {
            dArr = this.mCurveLength;
            if (i2 >= dArr.length - 1 || dArr[i2] >= c) {
                break;
            }
            c -= dArr[i2];
            i2++;
        }
        return this.mCurve[i][i2].eval(c / dArr[i2]);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    public void getPos(double d, double[] dArr) {
        int i;
        char c = d * this.mTotalLength;
        int i2 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            i = 0;
            if (i2 >= dArr2.length - 1) {
                break;
            }
            i = 0;
            if (dArr2[i2] >= c) {
                break;
            }
            c -= dArr2[i2];
            i2++;
        }
        while (i < dArr.length) {
            dArr[i] = this.mCurve[i][i2].eval(c / this.mCurveLength[i2]);
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    public void getPos(double d, float[] fArr) {
        int i;
        char c = d * this.mTotalLength;
        int i2 = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            i = 0;
            if (i2 >= dArr.length - 1) {
                break;
            }
            i = 0;
            if (dArr[i2] >= c) {
                break;
            }
            c -= dArr[i2];
            i2++;
        }
        while (i < fArr.length) {
            fArr[i] = (float) this.mCurve[i][i2].eval(c / this.mCurveLength[i2]);
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    public void getVelocity(double d, double[] dArr) {
        int i;
        char c = d * this.mTotalLength;
        int i2 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            i = 0;
            if (i2 >= dArr2.length - 1) {
                break;
            }
            i = 0;
            if (dArr2[i2] >= c) {
                break;
            }
            c -= dArr2[i2];
            i2++;
        }
        while (i < dArr.length) {
            dArr[i] = this.mCurve[i][i2].vel(c / this.mCurveLength[i2]);
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.constraintlayout.motion.utils.HyperSpline$Cubic[], androidx.constraintlayout.motion.utils.HyperSpline$Cubic[][]] */
    public void setup(double[][] dArr) {
        int i;
        int length = dArr[0].length;
        this.mDimensionality = length;
        int length2 = dArr.length;
        this.mPoints = length2;
        this.mCtl = new double[length][length2];
        this.mCurve = new Cubic[this.mDimensionality];
        for (int i2 = 0; i2 < this.mDimensionality; i2++) {
            for (int i3 = 0; i3 < this.mPoints; i3++) {
                this.mCtl[i2][i3] = dArr[i3][i2];
            }
        }
        int i4 = 0;
        while (true) {
            i = this.mDimensionality;
            if (i4 >= i) {
                break;
            }
            Cubic[][] cubicArr = this.mCurve;
            double[][] dArr2 = this.mCtl;
            cubicArr[i4] = calcNaturalCubic(dArr2[i4].length, dArr2[i4]);
            i4++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = 0.0d;
        Cubic[] cubicArr2 = new Cubic[i];
        for (int i5 = 0; i5 < this.mCurveLength.length; i5++) {
            for (int i6 = 0; i6 < this.mDimensionality; i6++) {
                cubicArr2[i6] = this.mCurve[i6][i5];
            }
            double d = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double approxLength = approxLength(cubicArr2);
            dArr3[i5] = approxLength;
            this.mTotalLength = d + approxLength;
        }
    }
}
