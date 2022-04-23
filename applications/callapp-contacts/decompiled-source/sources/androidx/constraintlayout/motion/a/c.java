package androidx.constraintlayout.motion.a;

import android.util.Log;
import java.util.Arrays;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static c f1437a = new c();

    /* renamed from: c  reason: collision with root package name */
    public static String[] f1438c = {Reporting.CreativeType.STANDARD, "accelerate", "decelerate", "linear"};

    /* renamed from: b  reason: collision with root package name */
    String f1439b = "identity";

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/c$a.class */
    static final class a extends c {
        private static double h = 0.01d;
        private static double i = 1.0E-4d;

        /* renamed from: d  reason: collision with root package name */
        double f1440d;
        double e;
        double f;
        double g;

        public a(double d2, double d3, double d4, double d5) {
            this.f1440d = d2;
            this.e = d3;
            this.f = d4;
            this.g = d5;
        }

        a(String str) {
            this.f1439b = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f1440d = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i2 = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i2);
            this.e = Double.parseDouble(str.substring(i2, indexOf3).trim());
            int i3 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i3);
            this.f = Double.parseDouble(str.substring(i3, indexOf4).trim());
            int i4 = indexOf4 + 1;
            this.g = Double.parseDouble(str.substring(i4, str.indexOf(41, i4)).trim());
        }

        private double c(double d2) {
            double d3 = 1.0d - d2;
            double d4 = 3.0d * d3;
            return (this.f1440d * d3 * d4 * d2) + (this.f * d4 * d2 * d2) + (d2 * d2 * d2);
        }

        private double d(double d2) {
            double d3 = 1.0d - d2;
            double d4 = 3.0d * d3;
            return (this.e * d3 * d4 * d2) + (this.g * d4 * d2 * d2) + (d2 * d2 * d2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v31 */
        /* JADX WARN: Type inference failed for: r0v33, types: [double] */
        /* JADX WARN: Type inference failed for: r0v35, types: [double] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6, types: [double] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.constraintlayout.motion.a.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final double a(double r8) {
            /*
                r7 = this;
                r0 = r8
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x0008
                r0 = 0
                return r0
            L_0x0008:
                r0 = r8
                r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0010
                r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                return r0
            L_0x0010:
                r0 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                r10 = r0
                r0 = r10
                r12 = r0
            L_0x0017:
                r0 = r10
                double r1 = androidx.constraintlayout.motion.a.c.a.h
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0046
                r0 = r7
                r1 = r12
                double r0 = r0.c(r1)
                r14 = r0
                r0 = r10
                r1 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                double r0 = r0 * r1
                r10 = r0
                r0 = r14
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x003d
                r0 = r12
                r1 = r10
                double r0 = r0 + r1
                r12 = r0
                goto L_0x0017
            L_0x003d:
                r0 = r12
                r1 = r10
                double r0 = r0 - r1
                r12 = r0
                goto L_0x0017
            L_0x0046:
                r0 = r12
                r1 = r10
                double r0 = r0 - r1
                r16 = r0
                r0 = r7
                r1 = r16
                double r0 = r0.c(r1)
                r14 = r0
                r0 = r12
                r1 = r10
                double r0 = r0 + r1
                r12 = r0
                r0 = r7
                r1 = r12
                double r0 = r0.c(r1)
                r10 = r0
                r0 = r7
                r1 = r16
                double r0 = r0.d(r1)
                r16 = r0
                r0 = r7
                r1 = r12
                double r0 = r0.d(r1)
                r1 = r16
                double r0 = r0 - r1
                r1 = r8
                r2 = r14
                double r1 = r1 - r2
                double r0 = r0 * r1
                r1 = r10
                r2 = r14
                double r1 = r1 - r2
                double r0 = r0 / r1
                r1 = r16
                double r0 = r0 + r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.c.a.a(double):double");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [double] */
        /* JADX WARN: Type inference failed for: r0v25 */
        /* JADX WARN: Type inference failed for: r0v27, types: [double] */
        /* JADX WARN: Type inference failed for: r0v29, types: [double] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.constraintlayout.motion.a.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final double b(double r8) {
            /*
                r7 = this;
                r0 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                r10 = r0
                r0 = r10
                r12 = r0
            L_0x0007:
                r0 = r10
                double r1 = androidx.constraintlayout.motion.a.c.a.i
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0036
                r0 = r7
                r1 = r12
                double r0 = r0.c(r1)
                r14 = r0
                r0 = r10
                r1 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                double r0 = r0 * r1
                r10 = r0
                r0 = r14
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x002d
                r0 = r12
                r1 = r10
                double r0 = r0 + r1
                r12 = r0
                goto L_0x0007
            L_0x002d:
                r0 = r12
                r1 = r10
                double r0 = r0 - r1
                r12 = r0
                goto L_0x0007
            L_0x0036:
                r0 = r12
                r1 = r10
                double r0 = r0 - r1
                r14 = r0
                r0 = r7
                r1 = r14
                double r0 = r0.c(r1)
                r8 = r0
                r0 = r12
                r1 = r10
                double r0 = r0 + r1
                r10 = r0
                r0 = r7
                r1 = r10
                double r0 = r0.c(r1)
                r12 = r0
                r0 = r7
                r1 = r14
                double r0 = r0.d(r1)
                r14 = r0
                r0 = r7
                r1 = r10
                double r0 = r0.d(r1)
                r1 = r14
                double r0 = r0 - r1
                r1 = r12
                r2 = r8
                double r1 = r1 - r2
                double r0 = r0 / r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.a.c.a.b(double):double");
        }
    }

    public static c a(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new a(str);
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals("accelerate")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1263948740:
                if (str.equals("decelerate")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1102672091:
                if (str.equals("linear")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1312628413:
                if (str.equals(Reporting.CreativeType.STANDARD)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return new a("cubic(0.4, 0.05, 0.8, 0.7)");
            case 1:
                return new a("cubic(0.0, 0.0, 0.2, 0.95)");
            case 2:
                return new a("cubic(1, 1, 0, 0)");
            case 3:
                return new a("cubic(0.4, 0.0, 0.2, 1)");
            default:
                Log.e("ConstraintSet", "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(f1438c));
                return f1437a;
        }
    }

    public double a(double d2) {
        return d2;
    }

    public double b(double d2) {
        return 1.0d;
    }

    public String toString() {
        return this.f1439b;
    }
}
