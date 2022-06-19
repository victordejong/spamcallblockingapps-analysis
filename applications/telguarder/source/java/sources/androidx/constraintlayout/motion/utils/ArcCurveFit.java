package androidx.constraintlayout.motion.utils;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/ArcCurveFit.class */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;
    private static final int START_HORIZONTAL = 2;
    private static final int START_LINEAR = 3;
    private static final int START_VERTICAL = 1;
    Arc[] mArcs;
    private final double[] mTime;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/ArcCurveFit$Arc.class */
    public static class Arc {
        private static final double EPSILON = 0.001d;
        private static final String TAG = "Arc";
        private static double[] ourPercent = new double[91];
        boolean linear;
        double mArcDistance;
        double mArcVelocity;
        double mEllipseA;
        double mEllipseB;
        double mEllipseCenterX;
        double mEllipseCenterY;
        double[] mLut;
        double mOneOverDeltaTime;
        double mTime1;
        double mTime2;
        double mTmpCosAngle;
        double mTmpSinAngle;
        boolean mVertical;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        /* JADX WARN: Multi-variable type inference failed */
        Arc(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            boolean z = false;
            this.linear = false;
            this.mVertical = i == 1 ? true : z;
            this.mTime1 = d;
            this.mTime2 = d2;
            this.mOneOverDeltaTime = 1.0d / (d2 - d);
            if (3 == i) {
                this.linear = true;
            }
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            if (!this.linear && Math.abs(d7) >= EPSILON && Math.abs(d8) >= EPSILON) {
                this.mLut = new double[101];
                boolean z2 = this.mVertical;
                this.mEllipseA = d7 * (z2 ? -1 : 1);
                this.mEllipseB = d8 * (z2 ? 1 : -1);
                this.mEllipseCenterX = z2 ? d5 : d3;
                this.mEllipseCenterY = z2 ? d4 : d6;
                buildTable(d3, d4, d5, d6);
                this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
                return;
            }
            this.linear = true;
            this.mX1 = d3;
            this.mX2 = d5;
            this.mY1 = d4;
            this.mY2 = d6;
            double hypot = Math.hypot(d8, d7);
            this.mArcDistance = hypot;
            this.mArcVelocity = hypot * this.mOneOverDeltaTime;
            double d9 = this.mTime2;
            double d10 = this.mTime1;
            this.mEllipseCenterX = d7 / (d9 - d10);
            this.mEllipseCenterY = d8 / (d9 - d10);
        }

        /* JADX WARN: Type inference failed for: r0v48, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        /* JADX WARN: Type inference failed for: r0v57, types: [double] */
        private void buildTable(double d, double d2, double d3, double d4) {
            double[] dArr;
            double[] dArr2;
            int i = 0;
            char c = 0;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                if (i >= ourPercent.length) {
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
                    ourPercent[i] = d5;
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
            this.mArcDistance = c2;
            int i2 = 0;
            while (true) {
                double[] dArr3 = ourPercent;
                if (i2 >= dArr3.length) {
                    break;
                }
                dArr3[i2] = dArr3[i2] / c;
                i2++;
            }
            int i3 = 0;
            while (true) {
                if (i3 < this.mLut.length) {
                    double length = i3 / (dArr2.length - 1);
                    int binarySearch = Arrays.binarySearch(ourPercent, length);
                    if (binarySearch >= 0) {
                        this.mLut[i3] = binarySearch / (ourPercent.length - 1);
                    } else if (binarySearch == -1) {
                        this.mLut[i3] = 0.0d;
                    } else {
                        int i4 = -binarySearch;
                        int i5 = i4 - 2;
                        double d6 = i5;
                        double[] dArr4 = ourPercent;
                        this.mLut[i3] = (d6 + ((length - dArr4[i5]) / (dArr4[i4 - 1] - dArr4[i5]))) / (dArr4.length - 1);
                    }
                    i3++;
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [double] */
        /* JADX WARN: Type inference failed for: r0v2, types: [double] */
        double getDX() {
            ?? r0 = this.mEllipseA * this.mTmpCosAngle;
            double hypot = this.mArcVelocity / Math.hypot(r0, (-this.mEllipseB) * this.mTmpSinAngle);
            char c = r0;
            if (this.mVertical) {
                c = -r0;
            }
            return c * hypot;
        }

        /* JADX WARN: Type inference failed for: r0v15, types: [double] */
        /* JADX WARN: Type inference failed for: r0v18, types: [double] */
        double getDY() {
            double d = this.mEllipseA;
            double d2 = this.mTmpCosAngle;
            double d3 = (-this.mEllipseB) * this.mTmpSinAngle;
            double hypot = this.mArcVelocity / Math.hypot(d * d2, d3);
            return this.mVertical ? (-d3) * hypot : d3 * hypot;
        }

        public double getLinearDX(double d) {
            return this.mEllipseCenterX;
        }

        public double getLinearDY(double d) {
            return this.mEllipseCenterY;
        }

        public double getLinearX(double d) {
            double d2 = this.mTime1;
            double d3 = this.mOneOverDeltaTime;
            double d4 = this.mX1;
            return d4 + ((d - d2) * d3 * (this.mX2 - d4));
        }

        public double getLinearY(double d) {
            double d2 = this.mTime1;
            double d3 = this.mOneOverDeltaTime;
            double d4 = this.mY1;
            return d4 + ((d - d2) * d3 * (this.mY2 - d4));
        }

        double getX() {
            return this.mEllipseCenterX + (this.mEllipseA * this.mTmpSinAngle);
        }

        double getY() {
            return this.mEllipseCenterY + (this.mEllipseB * this.mTmpCosAngle);
        }

        double lookup(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.mLut;
            double length = d * (dArr.length - 1);
            int i = (int) length;
            return dArr[i] + ((length - i) * (dArr[i + 1] - dArr[i]));
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [double] */
        /* JADX WARN: Type inference failed for: r0v8, types: [double] */
        void setPoint(double d) {
            double lookup = lookup((this.mVertical ? this.mTime2 - d : d - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(lookup);
            this.mTmpCosAngle = Math.cos(lookup);
        }
    }

    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.mTime = dArr;
        this.mArcs = new Arc[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i < arcArr.length) {
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
                arcArr[i] = new Arc(i3, dArr[i], dArr[i5], dArr2[i][0], dArr2[i][1], dArr2[i5][0], dArr2[i5][1]);
                i = i5;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [double] */
    /* JADX WARN: Type inference failed for: r0v51, types: [double] */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double getPos(double d, int i) {
        int i2;
        char c;
        if (d < this.mArcs[0].mTime1) {
            c = this.mArcs[0].mTime1;
            i2 = 0;
        } else {
            Arc[] arcArr = this.mArcs;
            i2 = 0;
            c = d;
            if (d > arcArr[arcArr.length - 1].mTime2) {
                Arc[] arcArr2 = this.mArcs;
                c = arcArr2[arcArr2.length - 1].mTime2;
                i2 = 0;
            }
        }
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i2 < arcArr3.length) {
                if (c <= arcArr3[i2].mTime2) {
                    if (this.mArcs[i2].linear) {
                        return i == 0 ? this.mArcs[i2].getLinearX(c) : this.mArcs[i2].getLinearY(c);
                    }
                    this.mArcs[i2].setPoint(c);
                    return i == 0 ? this.mArcs[i2].getX() : this.mArcs[i2].getY();
                }
                i2++;
            } else {
                return Double.NaN;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        char c = d;
        if (d < this.mArcs[0].mTime1) {
            c = this.mArcs[0].mTime1;
        }
        Arc[] arcArr = this.mArcs;
        char c2 = c;
        if (c > arcArr[arcArr.length - 1].mTime2) {
            Arc[] arcArr2 = this.mArcs;
            c2 = arcArr2[arcArr2.length - 1].mTime2;
        }
        int i = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i < arcArr3.length) {
                if (c2 <= arcArr3[i].mTime2) {
                    if (this.mArcs[i].linear) {
                        dArr[0] = this.mArcs[i].getLinearX(c2);
                        dArr[1] = this.mArcs[i].getLinearY(c2);
                        return;
                    }
                    this.mArcs[i].setPoint(c2);
                    dArr[0] = this.mArcs[i].getX();
                    dArr[1] = this.mArcs[i].getY();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        char c;
        if (d < this.mArcs[0].mTime1) {
            c = this.mArcs[0].mTime1;
        } else {
            Arc[] arcArr = this.mArcs;
            c = d;
            if (d > arcArr[arcArr.length - 1].mTime2) {
                Arc[] arcArr2 = this.mArcs;
                c = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i < arcArr3.length) {
                if (c <= arcArr3[i].mTime2) {
                    if (this.mArcs[i].linear) {
                        fArr[0] = (float) this.mArcs[i].getLinearX(c);
                        fArr[1] = (float) this.mArcs[i].getLinearY(c);
                        return;
                    }
                    this.mArcs[i].setPoint(c);
                    fArr[0] = (float) this.mArcs[i].getX();
                    fArr[1] = (float) this.mArcs[i].getY();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v47, types: [double] */
    /* JADX WARN: Type inference failed for: r0v52, types: [double] */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double getSlope(double d, int i) {
        char c = d;
        if (d < this.mArcs[0].mTime1) {
            c = this.mArcs[0].mTime1;
        }
        Arc[] arcArr = this.mArcs;
        int i2 = 0;
        char c2 = c;
        if (c > arcArr[arcArr.length - 1].mTime2) {
            Arc[] arcArr2 = this.mArcs;
            c2 = arcArr2[arcArr2.length - 1].mTime2;
            i2 = 0;
        }
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i2 < arcArr3.length) {
                if (c2 <= arcArr3[i2].mTime2) {
                    if (this.mArcs[i2].linear) {
                        return i == 0 ? this.mArcs[i2].getLinearDX(c2) : this.mArcs[i2].getLinearDY(c2);
                    }
                    this.mArcs[i2].setPoint(c2);
                    return i == 0 ? this.mArcs[i2].getDX() : this.mArcs[i2].getDY();
                }
                i2++;
            } else {
                return Double.NaN;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        char c;
        if (d < this.mArcs[0].mTime1) {
            c = this.mArcs[0].mTime1;
        } else {
            Arc[] arcArr = this.mArcs;
            c = d;
            if (d > arcArr[arcArr.length - 1].mTime2) {
                Arc[] arcArr2 = this.mArcs;
                c = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i < arcArr3.length) {
                if (c <= arcArr3[i].mTime2) {
                    if (this.mArcs[i].linear) {
                        dArr[0] = this.mArcs[i].getLinearDX(c);
                        dArr[1] = this.mArcs[i].getLinearDY(c);
                        return;
                    }
                    this.mArcs[i].setPoint(c);
                    dArr[0] = this.mArcs[i].getDX();
                    dArr[1] = this.mArcs[i].getDY();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mTime;
    }
}
