package androidx.p042e.p043a;

import androidx.p042e.p043a.AbstractC1000b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.e.a.f */
/* loaded from: classes-dex2jar.jar:androidx/e/a/f.class */
public final class C1021f {

    /* renamed from: a */
    double f4039a;

    /* renamed from: b */
    public double f4040b;

    /* renamed from: c */
    public boolean f4041c;

    /* renamed from: d */
    double f4042d;

    /* renamed from: e */
    double f4043e;

    /* renamed from: f */
    double f4044f;

    /* renamed from: g */
    private double f4045g;

    /* renamed from: h */
    private double f4046h;

    /* renamed from: i */
    private double f4047i;

    /* renamed from: j */
    private final AbstractC1000b.C1016a f4048j;

    public C1021f() {
        this.f4039a = Math.sqrt(1500.0d);
        this.f4040b = 0.5d;
        this.f4041c = false;
        this.f4044f = Double.MAX_VALUE;
        this.f4048j = new AbstractC1000b.C1016a();
    }

    public C1021f(float f) {
        this.f4039a = Math.sqrt(1500.0d);
        this.f4040b = 0.5d;
        this.f4041c = false;
        this.f4044f = Double.MAX_VALUE;
        this.f4048j = new AbstractC1000b.C1016a();
        this.f4044f = f;
    }

    /* renamed from: a */
    private void m43824a() {
        if (this.f4041c) {
            return;
        }
        if (this.f4044f == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d = this.f4040b;
        if (d > 1.0d) {
            double d2 = -d;
            double d3 = this.f4039a;
            this.f4045g = (d2 * d3) + (d3 * Math.sqrt((d * d) - 1.0d));
            double d4 = this.f4040b;
            double d5 = -d4;
            double d6 = this.f4039a;
            this.f4046h = (d5 * d6) - (d6 * Math.sqrt((d4 * d4) - 1.0d));
        } else if (d >= 0.0d && d < 1.0d) {
            this.f4047i = this.f4039a * Math.sqrt(1.0d - (d * d));
        }
        this.f4041c = true;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v47, types: [double] */
    /* JADX WARN: Type inference failed for: r0v56, types: [double] */
    /* JADX WARN: Type inference failed for: r0v65, types: [double] */
    /* JADX WARN: Type inference failed for: r0v79, types: [double] */
    /* JADX WARN: Type inference failed for: r0v89, types: [double] */
    /* renamed from: a */
    public final AbstractC1000b.C1016a m43823a(double d, double d2, long j) {
        char c;
        char c2;
        m43824a();
        double d3 = j / 1000.0d;
        double d4 = d - this.f4044f;
        double d5 = this.f4040b;
        if (d5 > 1.0d) {
            double d6 = this.f4046h;
            double d7 = this.f4045g;
            double d8 = d4 - (((d6 * d4) - d2) / (d6 - d7));
            double d9 = ((d4 * d6) - d2) / (d6 - d7);
            c2 = (Math.pow(2.718281828459045d, d6 * d3) * d8) + (Math.pow(2.718281828459045d, this.f4045g * d3) * d9);
            double d10 = this.f4046h;
            double pow = Math.pow(2.718281828459045d, d10 * d3);
            double d11 = this.f4045g;
            c = (d8 * d10 * pow) + (d9 * d11 * Math.pow(2.718281828459045d, d11 * d3));
        } else if (d5 == 1.0d) {
            double d12 = this.f4039a;
            double d13 = d2 + (d12 * d4);
            double d14 = d4 + (d13 * d3);
            c2 = Math.pow(2.718281828459045d, (-d12) * d3) * d14;
            double pow2 = Math.pow(2.718281828459045d, (-this.f4039a) * d3);
            double d15 = this.f4039a;
            c = (d13 * Math.pow(2.718281828459045d, (-d15) * d3)) + (d14 * pow2 * (-d15));
        } else {
            double d16 = this.f4039a;
            double d17 = (1.0d / this.f4047i) * ((d5 * d16 * d4) + d2);
            c2 = Math.pow(2.718281828459045d, (-d5) * d16 * d3) * ((Math.cos(this.f4047i * d3) * d4) + (Math.sin(this.f4047i * d3) * d17));
            double d18 = this.f4039a;
            double d19 = -d18;
            double d20 = this.f4040b;
            double pow3 = Math.pow(2.718281828459045d, (-d20) * d18 * d3);
            double d21 = this.f4047i;
            double d22 = -d21;
            double sin = Math.sin(d21 * d3);
            double d23 = this.f4047i;
            c = (d19 * c2 * d20) + (pow3 * ((d22 * d4 * sin) + (d17 * d23 * Math.cos(d23 * d3))));
        }
        this.f4048j.f4032a = (float) (c2 + this.f4044f);
        this.f4048j.f4033b = c;
        return this.f4048j;
    }

    /* renamed from: a */
    public final C1021f m43822a(float f) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            this.f4039a = Math.sqrt(f);
            this.f4041c = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }
}
