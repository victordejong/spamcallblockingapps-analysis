package androidx.constraintlayout.motion.utils;

import android.util.Log;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/Easing.class */
public class Easing {
    private static final String ACCELERATE = "cubic(0.4, 0.05, 0.8, 0.7)";
    private static final String DECELERATE = "cubic(0.0, 0.0, 0.2, 0.95)";
    private static final String LINEAR = "cubic(1, 1, 0, 0)";
    private static final String STANDARD = "cubic(0.4, 0.0, 0.2, 1)";
    String str = "identity";
    static Easing sDefault = new Easing();
    private static final String STANDARD_NAME = "standard";
    private static final String ACCELERATE_NAME = "accelerate";
    private static final String DECELERATE_NAME = "decelerate";
    private static final String LINEAR_NAME = "linear";
    public static String[] NAMED_EASING = {STANDARD_NAME, ACCELERATE_NAME, DECELERATE_NAME, LINEAR_NAME};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/Easing$CubicEasing.class */
    public static class CubicEasing extends Easing {
        private static double d_error = 1.0E-4d;
        private static double error = 0.01d;

        /* renamed from: x1 */
        double f16x1;

        /* renamed from: x2 */
        double f17x2;

        /* renamed from: y1 */
        double f18y1;

        /* renamed from: y2 */
        double f19y2;

        public CubicEasing(double d, double d2, double d3, double d4) {
            setup(d, d2, d3, d4);
        }

        CubicEasing(String str) {
            this.str = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f16x1 = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i);
            this.f18y1 = Double.parseDouble(str.substring(i, indexOf3).trim());
            int i2 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i2);
            this.f17x2 = Double.parseDouble(str.substring(i2, indexOf4).trim());
            int i3 = indexOf4 + 1;
            this.f19y2 = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        private double getDiffX(double d) {
            double d2 = 1.0d - d;
            double d3 = this.f16x1;
            double d4 = this.f17x2;
            return (d2 * 3.0d * d2 * d3) + (d2 * 6.0d * d * (d4 - d3)) + (3.0d * d * d * (1.0d - d4));
        }

        private double getDiffY(double d) {
            double d2 = 1.0d - d;
            double d3 = this.f18y1;
            double d4 = this.f19y2;
            return (d2 * 3.0d * d2 * d3) + (d2 * 6.0d * d * (d4 - d3)) + (3.0d * d * d * (1.0d - d4));
        }

        private double getX(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f16x1 * d2 * d3 * d) + (this.f17x2 * d3 * d * d) + (d * d * d);
        }

        private double getY(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f18y1 * d2 * d3 * d) + (this.f19y2 * d3 * d * d) + (d * d * d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v27, types: [double] */
        /* JADX WARN: Type inference failed for: r0v28, types: [double] */
        /* JADX WARN: Type inference failed for: r0v31 */
        /* JADX WARN: Type inference failed for: r0v33, types: [double] */
        /* JADX WARN: Type inference failed for: r0v35, types: [double] */
        /* JADX WARN: Type inference failed for: r0v36 */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7, types: [double] */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v3, types: [double] */
        /* JADX WARN: Type inference failed for: r12v0, types: [double] */
        /* JADX WARN: Type inference failed for: r1v3, types: [double] */
        /* JADX WARN: Type inference failed for: r1v5, types: [double] */
        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.constraintlayout.motion.utils.Easing$CubicEasing] */
        @Override // androidx.constraintlayout.motion.utils.Easing
        public double get(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            ?? r10 = 0;
            ?? r0 = 0;
            while (true) {
                ?? r12 = r0 == true ? 1 : 0;
                if (r10 <= error) {
                    double d2 = r12 - r10;
                    double x = getX(d2);
                    double d3 = r12 + r10;
                    double x2 = getX(d3);
                    double y = getY(d2);
                    return (((getY(d3) - y) * (d - x)) / (x2 - x)) + y;
                }
                r10 *= 0;
                r0 = getX(r12) < d ? r12 + r10 : r12 - r10;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v21, types: [double] */
        /* JADX WARN: Type inference failed for: r0v22, types: [double] */
        /* JADX WARN: Type inference failed for: r0v25 */
        /* JADX WARN: Type inference failed for: r0v27, types: [double] */
        /* JADX WARN: Type inference failed for: r0v29, types: [double] */
        /* JADX WARN: Type inference failed for: r0v3, types: [double] */
        /* JADX WARN: Type inference failed for: r0v30 */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v3, types: [double] */
        /* JADX WARN: Type inference failed for: r12v0, types: [double] */
        /* JADX WARN: Type inference failed for: r1v1, types: [double] */
        /* JADX WARN: Type inference failed for: r1v3, types: [double] */
        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.constraintlayout.motion.utils.Easing$CubicEasing] */
        @Override // androidx.constraintlayout.motion.utils.Easing
        public double getDiff(double d) {
            ?? r10 = 0;
            ?? r0 = 0;
            while (true) {
                ?? r12 = r0 == true ? 1 : 0;
                if (r10 <= d_error) {
                    double d2 = r12 - r10;
                    double x = getX(d2);
                    double d3 = r12 + r10;
                    return (getY(d3) - getY(d2)) / (getX(d3) - x);
                }
                r10 *= 0;
                r0 = getX(r12) < d ? r12 + r10 : r12 - r10;
            }
        }

        void setup(double d, double d2, double d3, double d4) {
            this.f16x1 = d;
            this.f18y1 = d2;
            this.f17x2 = d3;
            this.f19y2 = d4;
        }
    }

    public static Easing getInterpolator(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new CubicEasing(str);
        }
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals(ACCELERATE_NAME)) {
                    z = false;
                    break;
                }
                break;
            case -1263948740:
                if (str.equals(DECELERATE_NAME)) {
                    z = true;
                    break;
                }
                break;
            case -1102672091:
                if (str.equals(LINEAR_NAME)) {
                    z = true;
                    break;
                }
                break;
            case 1312628413:
                if (str.equals(STANDARD_NAME)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return new CubicEasing(ACCELERATE);
            case true:
                return new CubicEasing(DECELERATE);
            case true:
                return new CubicEasing(LINEAR);
            case true:
                return new CubicEasing(STANDARD);
            default:
                Log.e("ConstraintSet", "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(NAMED_EASING));
                return sDefault;
        }
    }

    public double get(double d) {
        return d;
    }

    public double getDiff(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.str;
    }
}
