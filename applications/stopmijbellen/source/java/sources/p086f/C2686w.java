package p086f;
/* renamed from: f.w */
/* loaded from: classes-dex2jar.jar:f/w.class */
public class C2686w {

    /* renamed from: d */
    public static C2686w f9226d;

    /* renamed from: a */
    public long f9227a;

    /* renamed from: b */
    public long f9228b;

    /* renamed from: c */
    public int f9229c;

    /* renamed from: a */
    public void m3277a(long j, double d, double d2) {
        float f;
        float f2;
        double d3 = (0.01720197f * (((float) (j - 946728000000L)) / 8.64E7f)) + 6.24006f;
        double sin = (Math.sin(f2 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * f2) * 3.4906598739326E-4d) + (Math.sin(d3) * 0.03341960161924362d) + d3 + 1.796593063d + 3.141592653589793d;
        double d4 = (-d2) / 360.0d;
        double sin2 = (Math.sin(2.0d * sin) * (-0.0069d)) + (Math.sin(d3) * 0.0053d) + ((float) Math.round((f - 9.0E-4f) - d4)) + 9.0E-4f + d4;
        double asin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(sin));
        double d5 = 0.01745329238474369d * d;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(asin) * Math.sin(d5))) / (Math.cos(asin) * Math.cos(d5));
        if (sin3 >= 1.0d) {
            this.f9229c = 1;
            this.f9227a = -1L;
            this.f9228b = -1L;
        } else if (sin3 <= -1.0d) {
            this.f9229c = 0;
            this.f9227a = -1L;
            this.f9228b = -1L;
        } else {
            double acos = (float) (Math.acos(sin3) / 6.283185307179586d);
            this.f9227a = Math.round((sin2 + acos) * 8.64E7d) + 946728000000L;
            long round = Math.round((sin2 - acos) * 8.64E7d) + 946728000000L;
            this.f9228b = round;
            if (round >= j || this.f9227a <= j) {
                this.f9229c = 1;
            } else {
                this.f9229c = 0;
            }
        }
    }
}
