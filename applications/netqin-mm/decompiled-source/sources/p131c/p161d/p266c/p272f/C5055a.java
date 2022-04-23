package p131c.p161d.p266c.p272f;

import java.math.RoundingMode;
/* renamed from: c.d.c.f.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/f/a.class */
public final class C5055a {

    /* renamed from: c.d.c.f.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/f/a$a.class */
    public static /* synthetic */ class C5056a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17648a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[RoundingMode.values().length];
            f17648a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17648a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17648a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f17648a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f17648a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f17648a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f17648a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f17648a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    static {
        Math.log(2.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v2, types: [double] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [double] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9, types: [double] */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double m24594a(double r7, java.math.RoundingMode r9) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p266c.p272f.C5055a.m24594a(double, java.math.RoundingMode):double");
    }

    /* renamed from: a */
    public static boolean m24595a(double d) {
        return C5057b.m24590c(d) && (d == 0.0d || 52 - Long.numberOfTrailingZeros(C5057b.m24591b(d)) <= Math.getExponent(d));
    }

    /* renamed from: b */
    public static long m24593b(double d, RoundingMode roundingMode) {
        double a = m24594a(d, roundingMode);
        boolean z = true;
        boolean z2 = (-9.223372036854776E18d) - a < 1.0d;
        if (a >= 9.223372036854776E18d) {
            z = false;
        }
        C5066e.m24575a(z2 & z, d, roundingMode);
        return (long) a;
    }
}
