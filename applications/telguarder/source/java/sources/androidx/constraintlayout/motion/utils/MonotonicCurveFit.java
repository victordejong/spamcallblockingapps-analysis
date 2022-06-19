package androidx.constraintlayout.motion.utils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/MonotonicCurveFit.class */
public class MonotonicCurveFit extends CurveFit {
    private static final String TAG = "MonotonicCurveFit";

    /* renamed from: mT */
    private double[] f26mT;
    private double[][] mTangent;

    /* renamed from: mY */
    private double[][] f27mY;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        int i = length - 1;
        double[][] dArr3 = new double[i][length2];
        double[][] dArr4 = new double[length][length2];
        for (int i2 = 0; i2 < length2; i2++) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < i) {
                    int i5 = i4 + 1;
                    dArr3[i4][i2] = (dArr2[i5][i2] - dArr2[i4][i2]) / (dArr[i5] - dArr[i4]);
                    if (i4 == 0) {
                        dArr4[i4][i2] = dArr3[i4][i2];
                    } else {
                        dArr4[i4][i2] = (dArr3[i4 - 1][i2] + dArr3[i4][i2]) * 0.5d;
                    }
                    i3 = i5;
                }
            }
            dArr4[i][i2] = dArr3[length - 2][i2];
        }
        for (int i6 = 0; i6 < i; i6++) {
            for (int i7 = 0; i7 < length2; i7++) {
                if (dArr3[i6][i7] == 0.0d) {
                    dArr4[i6][i7] = 0.0d;
                    dArr4[i6 + 1][i7] = 0.0d;
                } else {
                    double d = dArr4[i6][i7] / dArr3[i6][i7];
                    int i8 = i6 + 1;
                    double d2 = dArr4[i8][i7] / dArr3[i6][i7];
                    double hypot = Math.hypot(d, d2);
                    if (hypot > 9.0d) {
                        double d3 = 3.0d / hypot;
                        dArr4[i6][i7] = d * d3 * dArr3[i6][i7];
                        dArr4[i8][i7] = d3 * d2 * dArr3[i6][i7];
                    }
                }
            }
        }
        this.f26mT = dArr;
        this.f27mY = dArr2;
        this.mTangent = dArr4;
    }

    private static double diff(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d2 * 6.0d;
        double d9 = 3.0d * d;
        return ((((((((((-6.0d) * d7) * d4) + (d8 * d4)) + ((6.0d * d7) * d3)) - (d8 * d3)) + ((d9 * d6) * d7)) + ((d9 * d5) * d7)) - (((2.0d * d) * d6) * d2)) - (((4.0d * d) * d5) * d2)) + (d * d5);
    }

    private static double interpolate(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d7 * d2;
        double d9 = 3.0d * d7;
        double d10 = d * d6;
        double d11 = d * d5;
        return (((((((((((-2.0d) * d8) * d4) + (d9 * d4)) + ((d8 * 2.0d) * d3)) - (d9 * d3)) + d3) + (d10 * d8)) + (d8 * d11)) - (d10 * d7)) - (((d * 2.0d) * d5) * d7)) + (d11 * d2);
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double getPos(double d, int i) {
        double[] dArr = this.f26mT;
        int length = dArr.length;
        int i2 = 0;
        if (d <= dArr[0]) {
            return this.f27mY[0][i];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return this.f27mY[i3][i];
        }
        while (i2 < i3) {
            double[] dArr2 = this.f26mT;
            if (d == dArr2[i2]) {
                return this.f27mY[i2][i];
            }
            int i4 = i2 + 1;
            if (d < dArr2[i4]) {
                double d2 = dArr2[i4] - dArr2[i2];
                double d3 = (d - dArr2[i2]) / d2;
                double[][] dArr3 = this.f27mY;
                double d4 = dArr3[i2][i];
                double d5 = dArr3[i4][i];
                double[][] dArr4 = this.mTangent;
                return interpolate(d2, d3, d4, d5, dArr4[i2][i], dArr4[i4][i]);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        double[] dArr2 = this.f26mT;
        int length = dArr2.length;
        int length2 = this.f27mY[0].length;
        if (d <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f27mY[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f27mY[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f26mT[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    dArr[i6] = this.f27mY[i5][i6];
                }
            }
            double[] dArr3 = this.f26mT;
            int i7 = i5 + 1;
            if (d < dArr3[i7]) {
                double d2 = dArr3[i7] - dArr3[i5];
                double d3 = (d - dArr3[i5]) / d2;
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr4 = this.f27mY;
                    double d4 = dArr4[i5][i8];
                    double d5 = dArr4[i7][i8];
                    double[][] dArr5 = this.mTangent;
                    dArr[i8] = interpolate(d2, d3, d4, d5, dArr5[i5][i8], dArr5[i7][i8]);
                }
                return;
            }
            i4 = i7;
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        double[] dArr = this.f26mT;
        int length = dArr.length;
        int length2 = this.f27mY[0].length;
        if (d <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f27mY[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f27mY[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f26mT[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    fArr[i6] = (float) this.f27mY[i5][i6];
                }
            }
            double[] dArr2 = this.f26mT;
            int i7 = i5 + 1;
            if (d < dArr2[i7]) {
                double d2 = dArr2[i7] - dArr2[i5];
                double d3 = (d - dArr2[i5]) / d2;
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr3 = this.f27mY;
                    double d4 = dArr3[i5][i8];
                    double d5 = dArr3[i7][i8];
                    double[][] dArr4 = this.mTangent;
                    fArr[i8] = (float) interpolate(d2, d3, d4, d5, dArr4[i5][i8], dArr4[i7][i8]);
                }
                return;
            }
            i4 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r1v1, types: [double] */
    /* JADX WARN: Type inference failed for: r1v21, types: [double] */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double getSlope(double d, int i) {
        ?? r14;
        ?? r0 = this.f26mT;
        int length = r0.length;
        int i2 = 0;
        if (d < r0[0]) {
            r14 = r0[0];
        } else {
            int i3 = length - 1;
            int i4 = (d > r0[i3] ? 1 : (d == r0[i3] ? 0 : -1));
            r14 = d;
            if (i4 >= 0) {
                r14 = r0[i3];
            }
        }
        while (i2 < length - 1) {
            double[] dArr = this.f26mT;
            int i5 = i2 + 1;
            if (r14 <= dArr[i5]) {
                double d2 = dArr[i5] - dArr[i2];
                double d3 = (r14 - dArr[i2]) / d2;
                double[][] dArr2 = this.f27mY;
                double d4 = dArr2[i2][i];
                double d5 = dArr2[i5][i];
                double[][] dArr3 = this.mTangent;
                return diff(d2, d3, d4, d5, dArr3[i2][i], dArr3[i5][i]) / d2;
            }
            i2 = i5;
        }
        return 0.0d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r1v2, types: [double] */
    /* JADX WARN: Type inference failed for: r1v22, types: [double] */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        ?? r16;
        ?? r0 = this.f26mT;
        int length = r0.length;
        int length2 = this.f27mY[0].length;
        if (d <= r0[0]) {
            r16 = r0[0];
        } else {
            int i = length - 1;
            int i2 = (d > r0[i] ? 1 : (d == r0[i] ? 0 : -1));
            r16 = d;
            if (i2 >= 0) {
                r16 = r0[i];
            }
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < length - 1) {
                double[] dArr2 = this.f26mT;
                int i5 = i4 + 1;
                if (r16 <= dArr2[i5]) {
                    double d2 = dArr2[i5] - dArr2[i4];
                    double d3 = (r16 - dArr2[i4]) / d2;
                    for (int i6 = 0; i6 < length2; i6++) {
                        double[][] dArr3 = this.f27mY;
                        double d4 = dArr3[i4][i6];
                        double d5 = dArr3[i5][i6];
                        double[][] dArr4 = this.mTangent;
                        dArr[i6] = diff(d2, d3, d4, d5, dArr4[i4][i6], dArr4[i5][i6]) / d2;
                    }
                    return;
                }
                i3 = i5;
            } else {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f26mT;
    }
}
