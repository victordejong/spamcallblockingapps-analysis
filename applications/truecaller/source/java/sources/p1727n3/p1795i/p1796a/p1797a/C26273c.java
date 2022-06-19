package p1727n3.p1795i.p1796a.p1797a;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.tenor.android.core.constant.AspectRatioRange;
import java.util.Arrays;
/* renamed from: n3.i.a.a.c */
/* loaded from: classes-dex2jar.jar:n3/i/a/a/c.class */
public class C26273c {

    /* renamed from: b */
    public static C26273c f73280b = new C26273c();

    /* renamed from: c */
    public static String[] f73281c = {AspectRatioRange.STANDARD, "accelerate", "decelerate", "linear"};

    /* renamed from: a */
    public String f73282a = "identity";

    /* renamed from: n3.i.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/a/c$a.class */
    public static class C26274a extends C26273c {

        /* renamed from: d */
        public double f73283d;

        /* renamed from: e */
        public double f73284e;

        /* renamed from: f */
        public double f73285f;

        /* renamed from: g */
        public double f73286g;

        public C26274a(String str) {
            this.f73282a = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f73283d = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i);
            this.f73284e = Double.parseDouble(str.substring(i, indexOf3).trim());
            int i2 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i2);
            this.f73285f = Double.parseDouble(str.substring(i2, indexOf4).trim());
            int i3 = indexOf4 + 1;
            this.f73286g = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v26, types: [double] */
        /* JADX WARN: Type inference failed for: r0v27, types: [double] */
        /* JADX WARN: Type inference failed for: r0v30 */
        /* JADX WARN: Type inference failed for: r0v32, types: [double] */
        /* JADX WARN: Type inference failed for: r0v34, types: [double] */
        /* JADX WARN: Type inference failed for: r0v35 */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7, types: [double] */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v3, types: [double] */
        /* JADX WARN: Type inference failed for: r12v0, types: [double] */
        /* JADX WARN: Type inference failed for: r1v3, types: [double] */
        /* JADX WARN: Type inference failed for: r1v5, types: [double] */
        /* JADX WARN: Type inference failed for: r7v0, types: [n3.i.a.a.c$a] */
        @Override // p1727n3.p1795i.p1796a.p1797a.C26273c
        /* renamed from: a */
        public double mo2232a(double d) {
            if (d <= PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            ?? r10 = 0;
            ?? r0 = 0;
            while (true) {
                ?? r12 = r0 == true ? 1 : 0;
                if (r10 <= 0.01d) {
                    double d2 = r12 - r10;
                    double m2230d = m2230d(d2);
                    double d3 = r12 + r10;
                    double m2230d2 = m2230d(d3);
                    double m2229e = m2229e(d2);
                    return (((d - m2230d) * (m2229e(d3) - m2229e)) / (m2230d2 - m2230d)) + m2229e;
                }
                r10 *= 0;
                r0 = m2230d(r12) < d ? r12 + r10 : r12 - r10;
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
        /* JADX WARN: Type inference failed for: r7v0, types: [n3.i.a.a.c$a] */
        @Override // p1727n3.p1795i.p1796a.p1797a.C26273c
        /* renamed from: b */
        public double mo2231b(double d) {
            ?? r10 = 0;
            ?? r0 = 0;
            while (true) {
                ?? r12 = r0 == true ? 1 : 0;
                if (r10 <= 1.0E-4d) {
                    double d2 = r12 - r10;
                    double m2230d = m2230d(d2);
                    double d3 = r12 + r10;
                    return (m2229e(d3) - m2229e(d2)) / (m2230d(d3) - m2230d);
                }
                r10 *= 0;
                r0 = m2230d(r12) < d ? r12 + r10 : r12 - r10;
            }
        }

        /* renamed from: d */
        public final double m2230d(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f73285f * d3 * d * d) + (this.f73283d * d2 * d3 * d) + (d * d * d);
        }

        /* renamed from: e */
        public final double m2229e(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f73286g * d3 * d * d) + (this.f73284e * d2 * d3 * d) + (d * d * d);
        }
    }

    /* renamed from: c */
    public static C26273c m2233c(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new C26274a(str);
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
                if (str.equals(AspectRatioRange.STANDARD)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return new C26274a("cubic(0.4, 0.05, 0.8, 0.7)");
            case true:
                return new C26274a("cubic(0.0, 0.0, 0.2, 0.95)");
            case true:
                return new C26274a("cubic(1, 1, 0, 0)");
            case true:
                return new C26274a("cubic(0.4, 0.0, 0.2, 1)");
            default:
                Arrays.toString(f73281c);
                return f73280b;
        }
    }

    /* renamed from: a */
    public double mo2232a(double d) {
        return d;
    }

    /* renamed from: b */
    public double mo2231b(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.f73282a;
    }
}
