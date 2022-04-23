package androidx.appcompat.app;
/* renamed from: androidx.appcompat.app.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/g.class */
class C0090g {

    /* renamed from: d */
    private static C0090g f290d;

    /* renamed from: a */
    public long f291a;

    /* renamed from: b */
    public long f292b;

    /* renamed from: c */
    public int f293c;

    C0090g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static C0090g m14859b() {
        if (f290d == null) {
            f290d = new C0090g();
        }
        return f290d;
    }

    /* renamed from: a */
    public void m14860a(long j, double d, double d2) {
        float f;
        float f2 = ((float) (j - 946728000000L)) / 8.64E7f;
        double d3 = (0.01720197f * f2) + 6.24006f;
        double sin = Math.sin(d3);
        Double.isNaN(d3);
        double sin2 = (sin * 0.03341960161924362d) + d3 + (Math.sin(2.0f * f) * 3.4906598739326E-4d) + (Math.sin(f * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double d4 = (-d2) / 360.0d;
        double d5 = f2 - 9.0E-4f;
        Double.isNaN(d5);
        double round = ((float) Math.round(d5 - d4)) + 9.0E-4f;
        Double.isNaN(round);
        double sin3 = round + d4 + (Math.sin(d3) * 0.0053d) + (Math.sin(2.0d * sin2) * (-0.0069d));
        double asin = Math.asin(Math.sin(sin2) * Math.sin(0.4092797040939331d));
        double d6 = 0.01745329238474369d * d;
        double sin4 = (Math.sin(-0.10471975803375244d) - (Math.sin(d6) * Math.sin(asin))) / (Math.cos(d6) * Math.cos(asin));
        if (sin4 >= 1.0d) {
            this.f293c = 1;
        } else if (sin4 <= -1.0d) {
            this.f293c = 0;
        } else {
            double acos = (float) (Math.acos(sin4) / 6.283185307179586d);
            Double.isNaN(acos);
            this.f291a = Math.round((sin3 + acos) * 8.64E7d) + 946728000000L;
            Double.isNaN(acos);
            long round2 = Math.round((sin3 - acos) * 8.64E7d) + 946728000000L;
            this.f292b = round2;
            if (round2 >= j || this.f291a <= j) {
                this.f293c = 1;
                return;
            } else {
                this.f293c = 0;
                return;
            }
        }
        this.f291a = -1L;
        this.f292b = -1L;
    }
}
