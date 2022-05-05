package androidx.appcompat.app;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/TwilightCalculator.class */
class TwilightCalculator {

    /* renamed from: d */
    private static TwilightCalculator f295d;

    /* renamed from: a */
    public long f296a;

    /* renamed from: b */
    public long f297b;

    /* renamed from: c */
    public int f298c;

    TwilightCalculator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static TwilightCalculator m22122b() {
        if (f295d == null) {
            f295d = new TwilightCalculator();
        }
        return f295d;
    }

    /* renamed from: a */
    public void m22123a(long j, double d, double d2) {
        float f;
        float f2;
        double d3;
        double d4 = (0.01720197f * (((float) (j - 946728000000L)) / 8.64E7f)) + 6.24006f;
        double sin = (Math.sin(d4) * 0.03341960161924362d) + d4 + (Math.sin(2.0f * f2) * 3.4906598739326E-4d) + (Math.sin(f2 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double round = ((float) Math.round((f - 9.0E-4f) - d3)) + 9.0E-4f + ((-d2) / 360.0d) + (Math.sin(d4) * 0.0053d) + (Math.sin(2.0d * sin) * (-0.0069d));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d5 = 0.01745329238474369d * d;
        double sin2 = (Math.sin(-0.10471975803375244d) - (Math.sin(d5) * Math.sin(asin))) / (Math.cos(d5) * Math.cos(asin));
        if (sin2 >= 1.0d) {
            this.f298c = 1;
            this.f296a = -1L;
            this.f297b = -1L;
        } else if (sin2 <= -1.0d) {
            this.f298c = 0;
            this.f296a = -1L;
            this.f297b = -1L;
        } else {
            double acos = (float) (Math.acos(sin2) / 6.283185307179586d);
            this.f296a = Math.round((round + acos) * 8.64E7d) + 946728000000L;
            long round2 = Math.round((round - acos) * 8.64E7d) + 946728000000L;
            this.f297b = round2;
            if (round2 >= j || this.f296a <= j) {
                this.f298c = 1;
            } else {
                this.f298c = 0;
            }
        }
    }
}
