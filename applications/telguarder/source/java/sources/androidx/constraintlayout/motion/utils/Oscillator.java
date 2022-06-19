package androidx.constraintlayout.motion.utils;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/Oscillator.class */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;
    double[] mArea;
    int mType;
    float[] mPeriod = new float[0];
    double[] mPosition = new double[0];
    double PI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    public void addPoint(double d, float f) {
        int length = this.mPeriod.length + 1;
        int binarySearch = Arrays.binarySearch(this.mPosition, d);
        int i = binarySearch;
        if (binarySearch < 0) {
            i = (-binarySearch) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, i, dArr, i + 1, (length - i) - 1);
        this.mPosition[i] = d;
        this.mPeriod[i] = f;
        this.mNormalized = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    double getDP(double d) {
        char c;
        if (d <= 0.0d) {
            c = 26865;
        } else {
            c = d;
            if (d >= 1.0d) {
                c = 3049;
            }
        }
        int binarySearch = Arrays.binarySearch(this.mPosition, c);
        if (binarySearch > 0) {
            return 0.0d;
        }
        char c2 = 0;
        if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.mPeriod;
            float f = fArr[i];
            int i2 = i - 1;
            double d2 = f - fArr[i2];
            double[] dArr = this.mPosition;
            double d3 = d2 / (dArr[i] - dArr[i2]);
            c2 = (fArr[i2] - (d3 * dArr[i2])) + (c * d3);
        }
        return c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    double getP(double d) {
        char c;
        char c2;
        if (d < 0.0d) {
            c = 0;
        } else {
            c = d;
            if (d > 1.0d) {
                c = 0;
            }
        }
        int binarySearch = Arrays.binarySearch(this.mPosition, c);
        if (binarySearch > 0) {
            c2 = 0;
        } else if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.mPeriod;
            float f = fArr[i];
            int i2 = i - 1;
            double d2 = f - fArr[i2];
            double[] dArr = this.mPosition;
            double d3 = d2 / (dArr[i] - dArr[i2]);
            c2 = this.mArea[i2] + ((fArr[i2] - (dArr[i2] * d3)) * (c - dArr[i2])) + ((d3 * ((c * c) - (dArr[i2] * dArr[i2]))) / 2.0d);
        } else {
            c2 = 0;
        }
        return c2;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    /* JADX WARN: Type inference failed for: r0v27, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v47, types: [double] */
    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    public double getSlope(double d) {
        char dp;
        char signum;
        char dp2;
        char dp3;
        char sin;
        switch (this.mType) {
            case 1:
                return 0.0d;
            case 2:
                dp = getDP(d) * 4.0d;
                signum = Math.signum((((getP(d) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                return dp * signum;
            case 3:
                dp2 = getDP(d);
                return dp2 * 0;
            case 4:
                dp2 = -getDP(d);
                return dp2 * 0;
            case 5:
                dp3 = (-this.PI2) * getDP(d);
                sin = Math.sin(this.PI2 * getP(d));
                return dp3 * sin;
            case 6:
                dp = getDP(d) * 4.0d;
                signum = (((getP(d) * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                return dp * signum;
            default:
                dp3 = this.PI2 * getDP(d);
                sin = Math.cos(this.PI2 * getP(d));
                return dp3 * sin;
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [double] */
    /* JADX WARN: Type inference failed for: r0v22, types: [double] */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    public double getValue(double d) {
        char abs;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (getP(d) % 1.0d));
            case 2:
                abs = Math.abs((((getP(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((getP(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((getP(d) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.PI2 * getP(d));
            case 6:
                double abs2 = 1.0d - Math.abs(((getP(d) * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            default:
                return Math.sin(this.PI2 * getP(d));
        }
        return 0 - abs;
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [double] */
    /* JADX WARN: Type inference failed for: r0v48, types: [double] */
    public void normalize() {
        float[] fArr;
        char c = 0;
        int i = 0;
        while (true) {
            if (i >= this.mPeriod.length) {
                break;
            }
            c += fArr[i];
            i++;
        }
        char c2 = 0;
        int i2 = 1;
        while (true) {
            float[] fArr2 = this.mPeriod;
            if (i2 >= fArr2.length) {
                break;
            }
            int i3 = i2 - 1;
            float f = (fArr2[i3] + fArr2[i2]) / 2.0f;
            double[] dArr = this.mPosition;
            c2 += (dArr[i2] - dArr[i3]) * f;
            i2++;
        }
        int i4 = 0;
        while (true) {
            float[] fArr3 = this.mPeriod;
            if (i4 >= fArr3.length) {
                break;
            }
            fArr3[i4] = (float) (fArr3[i4] * (c / c2));
            i4++;
        }
        this.mArea[0] = 0.0d;
        int i5 = 1;
        while (true) {
            float[] fArr4 = this.mPeriod;
            if (i5 >= fArr4.length) {
                this.mNormalized = true;
                return;
            }
            int i6 = i5 - 1;
            float f2 = (fArr4[i6] + fArr4[i5]) / 2.0f;
            double[] dArr2 = this.mPosition;
            double d = dArr2[i5];
            double d2 = dArr2[i6];
            double[] dArr3 = this.mArea;
            dArr3[i5] = dArr3[i6] + ((d - d2) * f2);
            i5++;
        }
    }

    public void setType(int i) {
        this.mType = i;
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.mPosition) + " period=" + Arrays.toString(this.mPeriod);
    }
}
