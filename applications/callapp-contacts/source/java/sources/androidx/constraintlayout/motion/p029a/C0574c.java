package androidx.constraintlayout.motion.p029a;

import android.util.Log;
import java.util.Arrays;
import net.pubnative.lite.sdk.analytics.Reporting;
/* renamed from: androidx.constraintlayout.motion.a.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/c.class */
public class C0574c {

    /* renamed from: a */
    static C0574c f2392a = new C0574c();

    /* renamed from: c */
    public static String[] f2393c = {Reporting.CreativeType.STANDARD, "accelerate", "decelerate", "linear"};

    /* renamed from: b */
    String f2394b = "identity";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/c$a.class */
    public static final class C0575a extends C0574c {

        /* renamed from: h */
        private static double f2395h = 0.01d;

        /* renamed from: i */
        private static double f2396i = 1.0E-4d;

        /* renamed from: d */
        double f2397d;

        /* renamed from: e */
        double f2398e;

        /* renamed from: f */
        double f2399f;

        /* renamed from: g */
        double f2400g;

        public C0575a(double d, double d2, double d3, double d4) {
            this.f2397d = d;
            this.f2398e = d2;
            this.f2399f = d3;
            this.f2400g = d4;
        }

        C0575a(String str) {
            this.f2394b = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f2397d = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i);
            this.f2398e = Double.parseDouble(str.substring(i, indexOf3).trim());
            int i2 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i2);
            this.f2399f = Double.parseDouble(str.substring(i2, indexOf4).trim());
            int i3 = indexOf4 + 1;
            this.f2400g = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        /* renamed from: c */
        private double m45075c(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f2397d * d2 * d3 * d) + (this.f2399f * d3 * d * d) + (d * d * d);
        }

        /* renamed from: d */
        private double m45074d(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f2398e * d2 * d3 * d) + (this.f2400g * d3 * d * d) + (d * d * d);
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
        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.constraintlayout.motion.a.c$a] */
        @Override // androidx.constraintlayout.motion.p029a.C0574c
        /* renamed from: a */
        public final double mo45077a(double d) {
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
                if (r10 <= f2395h) {
                    double d2 = r12 - r10;
                    double m45075c = m45075c(d2);
                    double d3 = r12 + r10;
                    double m45075c2 = m45075c(d3);
                    double m45074d = m45074d(d2);
                    return (((m45074d(d3) - m45074d) * (d - m45075c)) / (m45075c2 - m45075c)) + m45074d;
                }
                r10 *= 0;
                r0 = m45075c(r12) < d ? r12 + r10 : r12 - r10;
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
        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.constraintlayout.motion.a.c$a] */
        @Override // androidx.constraintlayout.motion.p029a.C0574c
        /* renamed from: b */
        public final double mo45076b(double d) {
            ?? r10 = 0;
            ?? r0 = 0;
            while (true) {
                ?? r12 = r0 == true ? 1 : 0;
                if (r10 <= f2396i) {
                    double d2 = r12 - r10;
                    double m45075c = m45075c(d2);
                    double d3 = r12 + r10;
                    return (m45074d(d3) - m45074d(d2)) / (m45075c(d3) - m45075c);
                }
                r10 *= 0;
                r0 = m45075c(r12) < d ? r12 + r10 : r12 - r10;
            }
        }
    }

    /* renamed from: a */
    public static C0574c m45078a(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new C0575a(str);
        }
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals("accelerate")) {
                    z = false;
                    break;
                }
                break;
            case -1263948740:
                if (str.equals("decelerate")) {
                    z = true;
                    break;
                }
                break;
            case -1102672091:
                if (str.equals("linear")) {
                    z = true;
                    break;
                }
                break;
            case 1312628413:
                if (str.equals(Reporting.CreativeType.STANDARD)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return new C0575a("cubic(0.4, 0.05, 0.8, 0.7)");
            case true:
                return new C0575a("cubic(0.0, 0.0, 0.2, 0.95)");
            case true:
                return new C0575a("cubic(1, 1, 0, 0)");
            case true:
                return new C0575a("cubic(0.4, 0.0, 0.2, 1)");
            default:
                Log.e("ConstraintSet", "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(f2393c));
                return f2392a;
        }
    }

    /* renamed from: a */
    public double mo45077a(double d) {
        return d;
    }

    /* renamed from: b */
    public double mo45076b(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.f2394b;
    }
}
