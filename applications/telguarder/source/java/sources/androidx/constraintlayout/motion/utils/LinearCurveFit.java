package androidx.constraintlayout.motion.utils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/LinearCurveFit.class */
public class LinearCurveFit extends CurveFit {
    private static final String TAG = "LinearCurveFit";

    /* renamed from: mT */
    private double[] f24mT;
    private double mTotalLength;

    /* renamed from: mY */
    private double[][] f25mY;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r2v0 */
    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.mTotalLength = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f24mT = dArr;
        this.f25mY = dArr2;
        if (length2 > 2) {
            ?? r11 = false;
            ?? r13 = false;
            int i = 0;
            while (i < dArr.length) {
                ?? r0 = dArr2[i][0];
                ?? r02 = dArr2[i][0];
                if (i > 0) {
                    Math.hypot(r0 - (r11 == true ? 1.0d : 0.0d), r02 - (r13 == true ? 1.0d : 0.0d));
                }
                i++;
                r11 = r0;
                r13 = r02;
            }
            this.mTotalLength = 0.0d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [double[][]] */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27, types: [double] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* JADX WARN: Type inference failed for: r0v62, types: [double] */
    /* JADX WARN: Type inference failed for: r0v67 */
    /* JADX WARN: Type inference failed for: r0v68, types: [double] */
    /* JADX WARN: Type inference failed for: r0v69, types: [double] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r3v6 */
    private double getLength2D(double d) {
        if (Double.isNaN(this.mTotalLength)) {
            return 0.0d;
        }
        double[] dArr = this.f24mT;
        int length = dArr.length;
        if (d <= dArr[0]) {
            return 0.0d;
        }
        int i = length - 1;
        if (d >= dArr[i]) {
            return this.mTotalLength;
        }
        ?? r19 = 0;
        ?? r23 = false;
        int i2 = 0;
        ?? r25 = false;
        while (i2 < i) {
            ?? r0 = this.f25mY;
            ?? r02 = r0[i2][0];
            ?? r03 = r0[i2][1];
            ?? r21 = r19;
            if (i2 > 0) {
                r21 = r19 + Math.hypot(r02 - (r25 == true ? 1.0d : 0.0d), r03 - (r23 == true ? 1.0d : 0.0d));
            }
            double[] dArr2 = this.f24mT;
            if (d == dArr2[i2]) {
                return r21;
            }
            int i3 = i2 + 1;
            if (d < dArr2[i3]) {
                double d2 = (d - dArr2[i2]) / (dArr2[i3] - dArr2[i2]);
                double[][] dArr3 = this.f25mY;
                double d3 = dArr3[i2][0];
                double d4 = dArr3[i3][0];
                double d5 = dArr3[i2][1];
                double d6 = dArr3[i3][1];
                double d7 = 1.0d - d2;
                return r21 + Math.hypot(r03 - ((d5 * d7) + (d6 * d2)), r02 - ((d3 * d7) + (d4 * d2)));
            }
            i2 = i3;
            r25 = r02;
            r23 = r03;
            r19 = r21;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double getPos(double d, int i) {
        double[] dArr = this.f24mT;
        int length = dArr.length;
        int i2 = 0;
        if (d <= dArr[0]) {
            return this.f25mY[0][i];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return this.f25mY[i3][i];
        }
        while (i2 < i3) {
            double[] dArr2 = this.f24mT;
            if (d == dArr2[i2]) {
                return this.f25mY[i2][i];
            }
            int i4 = i2 + 1;
            if (d < dArr2[i4]) {
                double d2 = (d - dArr2[i2]) / (dArr2[i4] - dArr2[i2]);
                double[][] dArr3 = this.f25mY;
                return (dArr3[i2][i] * (1.0d - d2)) + (dArr3[i4][i] * d2);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        double[] dArr2 = this.f24mT;
        int length = dArr2.length;
        int length2 = this.f25mY[0].length;
        if (d <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f25mY[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f25mY[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f24mT[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    dArr[i6] = this.f25mY[i5][i6];
                }
            }
            double[] dArr3 = this.f24mT;
            int i7 = i5 + 1;
            if (d < dArr3[i7]) {
                double d2 = (d - dArr3[i5]) / (dArr3[i7] - dArr3[i5]);
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr4 = this.f25mY;
                    dArr[i8] = (dArr4[i5][i8] * (1.0d - d2)) + (dArr4[i7][i8] * d2);
                }
                return;
            }
            i4 = i7;
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        double[] dArr = this.f24mT;
        int length = dArr.length;
        int length2 = this.f25mY[0].length;
        if (d <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f25mY[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f25mY[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                return;
            }
            if (d == this.f24mT[i5]) {
                for (int i6 = 0; i6 < length2; i6++) {
                    fArr[i6] = (float) this.f25mY[i5][i6];
                }
            }
            double[] dArr2 = this.f24mT;
            int i7 = i5 + 1;
            if (d < dArr2[i7]) {
                double d2 = (d - dArr2[i5]) / (dArr2[i7] - dArr2[i5]);
                for (int i8 = 0; i8 < length2; i8++) {
                    double[][] dArr3 = this.f25mY;
                    fArr[i8] = (float) ((dArr3[i5][i8] * (1.0d - d2)) + (dArr3[i7][i8] * d2));
                }
                return;
            }
            i4 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v42 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double getSlope(double d, int i) {
        int i2;
        char c;
        double[] dArr = this.f24mT;
        int length = dArr.length;
        if (d < dArr[0]) {
            c = dArr[0];
            i2 = 0;
        } else {
            int i3 = length - 1;
            i2 = 0;
            c = d;
            if (d >= dArr[i3]) {
                c = dArr[i3];
                i2 = 0;
            }
        }
        while (i2 < length - 1) {
            double[] dArr2 = this.f24mT;
            int i4 = i2 + 1;
            if (c <= dArr2[i4]) {
                double d2 = dArr2[i4];
                double d3 = dArr2[i2];
                double d4 = dArr2[i2];
                double[][] dArr3 = this.f25mY;
                return (dArr3[i4][i] - dArr3[i2][i]) / (d2 - d3);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v43 */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        char c;
        double[] dArr2 = this.f24mT;
        int length = dArr2.length;
        int length2 = this.f25mY[0].length;
        if (d <= dArr2[0]) {
            c = dArr2[0];
        } else {
            int i = length - 1;
            c = d;
            if (d >= dArr2[i]) {
                c = dArr2[i];
            }
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < length - 1) {
                double[] dArr3 = this.f24mT;
                int i4 = i3 + 1;
                if (c <= dArr3[i4]) {
                    double d2 = dArr3[i4];
                    double d3 = dArr3[i3];
                    double d4 = dArr3[i3];
                    for (int i5 = 0; i5 < length2; i5++) {
                        double[][] dArr4 = this.f25mY;
                        dArr[i5] = (dArr4[i4][i5] - dArr4[i3][i5]) / (d2 - d3);
                    }
                    return;
                }
                i2 = i4;
            } else {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f24mT;
    }
}
