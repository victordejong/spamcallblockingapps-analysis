package p020b.p037f.p038a.p039a;

import android.util.Log;
import java.util.Arrays;
/* renamed from: b.f.a.a.c */
/* loaded from: classes-dex2jar.jar:b/f/a/a/c.class */
public class C1508c {

    /* renamed from: a */
    static C1508c f6008a = new C1508c();

    /* renamed from: b */
    public static String[] f6009b = {"standard", "accelerate", "decelerate", "linear"};

    /* renamed from: c */
    String f6010c = "identity";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.f.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:b/f/a/a/c$a.class */
    public static class C1509a extends C1508c {

        /* renamed from: d */
        private static double f6011d = 0.01d;

        /* renamed from: e */
        private static double f6012e = 1.0E-4d;

        /* renamed from: f */
        double f6013f;

        /* renamed from: g */
        double f6014g;

        /* renamed from: h */
        double f6015h;

        /* renamed from: i */
        double f6016i;

        C1509a(String str) {
            this.f6010c = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f6013f = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i);
            this.f6014g = Double.parseDouble(str.substring(i, indexOf3).trim());
            int i2 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i2);
            this.f6015h = Double.parseDouble(str.substring(i2, indexOf4).trim());
            int i3 = indexOf4 + 1;
            this.f6016i = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        /* renamed from: d */
        private double m29881d(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f6013f * d2 * d3 * d) + (this.f6015h * d3 * d * d) + (d * d * d);
        }

        /* renamed from: e */
        private double m29880e(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f6014g * d2 * d3 * d) + (this.f6016i * d3 * d * d) + (d * d * d);
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
        /* JADX WARN: Type inference failed for: r7v0, types: [b.f.a.a.c$a] */
        @Override // p020b.p037f.p038a.p039a.C1508c
        /* renamed from: a */
        public double mo29883a(double d) {
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
                if (r10 <= f6011d) {
                    double d2 = r12 - r10;
                    double m29881d = m29881d(d2);
                    double d3 = r12 + r10;
                    double m29881d2 = m29881d(d3);
                    double m29880e = m29880e(d2);
                    return (((m29880e(d3) - m29880e) * (d - m29881d)) / (m29881d2 - m29881d)) + m29880e;
                }
                r10 *= 0;
                r0 = m29881d(r12) < d ? r12 + r10 : r12 - r10;
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
        /* JADX WARN: Type inference failed for: r7v0, types: [b.f.a.a.c$a] */
        @Override // p020b.p037f.p038a.p039a.C1508c
        /* renamed from: b */
        public double mo29882b(double d) {
            ?? r10 = 0;
            ?? r0 = 0;
            while (true) {
                ?? r12 = r0 == true ? 1 : 0;
                if (r10 <= f6012e) {
                    double d2 = r12 - r10;
                    double m29881d = m29881d(d2);
                    double d3 = r12 + r10;
                    return (m29880e(d3) - m29880e(d2)) / (m29881d(d3) - m29881d);
                }
                r10 *= 0;
                r0 = m29881d(r12) < d ? r12 + r10 : r12 - r10;
            }
        }
    }

    /* renamed from: c */
    public static C1508c m29884c(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new C1509a(str);
        }
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
                if (str.equals("standard")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return new C1509a("cubic(0.4, 0.05, 0.8, 0.7)");
            case true:
                return new C1509a("cubic(0.0, 0.0, 0.2, 0.95)");
            case true:
                return new C1509a("cubic(1, 1, 0, 0)");
            case true:
                return new C1509a("cubic(0.4, 0.0, 0.2, 1)");
            default:
                Log.e("ConstraintSet", "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(f6009b));
                return f6008a;
        }
    }

    /* renamed from: a */
    public double mo29883a(double d) {
        return d;
    }

    /* renamed from: b */
    public double mo29882b(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.f6010c;
    }
}
