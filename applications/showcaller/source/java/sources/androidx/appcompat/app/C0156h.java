package androidx.appcompat.app;
/* renamed from: androidx.appcompat.app.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h.class */
class C0156h {

    /* renamed from: a */
    private static C0156h f455a;

    /* renamed from: b */
    public long f456b;

    /* renamed from: c */
    public long f457c;

    /* renamed from: d */
    public int f458d;

    C0156h() {
    }

    /* renamed from: b */
    public static C0156h m35489b() {
        if (f455a == null) {
            f455a = new C0156h();
        }
        return f455a;
    }

    /* renamed from: a */
    public void m35490a(long j, double d, double d2) {
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
            this.f458d = 1;
            this.f456b = -1L;
            this.f457c = -1L;
        } else if (sin2 <= -1.0d) {
            this.f458d = 0;
            this.f456b = -1L;
            this.f457c = -1L;
        } else {
            double acos = (float) (Math.acos(sin2) / 6.283185307179586d);
            this.f456b = Math.round((round + acos) * 8.64E7d) + 946728000000L;
            long round2 = Math.round((round - acos) * 8.64E7d) + 946728000000L;
            this.f457c = round2;
            if (round2 >= j || this.f456b <= j) {
                this.f458d = 1;
            } else {
                this.f458d = 0;
            }
        }
    }
}
