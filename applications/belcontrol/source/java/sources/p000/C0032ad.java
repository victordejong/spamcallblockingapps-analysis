package p000;

import xc;
/* renamed from: ad */
/* loaded from: classes-dex2jar.jar:ad.class */
public final class C0032ad {

    /* renamed from: a */
    public double f267a;

    /* renamed from: b */
    public double f268b;

    /* renamed from: c */
    public boolean f269c;

    /* renamed from: d */
    public double f270d;

    /* renamed from: e */
    public double f271e;

    /* renamed from: f */
    public double f272f;

    /* renamed from: g */
    public double f273g;

    /* renamed from: h */
    public double f274h;

    /* renamed from: i */
    public double f275i;

    /* renamed from: j */
    public final xc.o f276j;

    public C0032ad() {
        this.f267a = Math.sqrt(1500.0d);
        this.f268b = 0.5d;
        this.f269c = false;
        this.f275i = Double.MAX_VALUE;
        this.f276j = new xc.o();
    }

    public C0032ad(float f) {
        this.f267a = Math.sqrt(1500.0d);
        this.f268b = 0.5d;
        this.f269c = false;
        this.f275i = Double.MAX_VALUE;
        this.f276j = new xc.o();
        this.f275i = f;
    }

    /* renamed from: a */
    public float m7236a() {
        return (float) this.f275i;
    }

    /* renamed from: b */
    public final void m7235b() {
        if (this.f269c) {
            return;
        }
        if (this.f275i == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d = this.f268b;
        if (d > 1.0d) {
            double d2 = -d;
            double d3 = this.f267a;
            this.f272f = (d2 * d3) + (d3 * Math.sqrt((d * d) - 1.0d));
            double d4 = this.f268b;
            double d5 = -d4;
            double d6 = this.f267a;
            this.f273g = (d5 * d6) - (d6 * Math.sqrt((d4 * d4) - 1.0d));
        } else if (d >= 0.0d && d < 1.0d) {
            this.f274h = this.f267a * Math.sqrt(1.0d - (d * d));
        }
        this.f269c = true;
    }

    /* renamed from: c */
    public boolean m7234c(float f, float f2) {
        return ((double) Math.abs(f2)) < this.f271e && ((double) Math.abs(f - m7236a())) < this.f270d;
    }

    /* renamed from: d */
    public C0032ad m7233d(float f) {
        if (f >= 0.0f) {
            this.f268b = f;
            this.f269c = false;
            return this;
        }
        throw new IllegalArgumentException("Damping ratio must be non-negative");
    }

    /* renamed from: e */
    public C0032ad m7232e(float f) {
        this.f275i = f;
        return this;
    }

    /* renamed from: f */
    public C0032ad m7231f(float f) {
        if (f > 0.0f) {
            this.f267a = Math.sqrt(f);
            this.f269c = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }

    /* renamed from: g */
    public void m7230g(double d) {
        double abs = Math.abs(d);
        this.f270d = abs;
        this.f271e = abs * 62.5d;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r0v46, types: [double] */
    /* JADX WARN: Type inference failed for: r0v55, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v78, types: [double] */
    /* JADX WARN: Type inference failed for: r0v88, types: [double] */
    /* renamed from: h */
    public xc.o m7229h(double d, double d2, long j) {
        char c;
        char c2;
        m7235b();
        double d3 = j / 1000.0d;
        double d4 = d - this.f275i;
        double d5 = this.f268b;
        if (d5 > 1.0d) {
            double d6 = this.f273g;
            double d7 = this.f272f;
            double d8 = d4 - (((d6 * d4) - d2) / (d6 - d7));
            double d9 = ((d4 * d6) - d2) / (d6 - d7);
            c2 = (Math.pow(2.718281828459045d, d6 * d3) * d8) + (Math.pow(2.718281828459045d, this.f272f * d3) * d9);
            double d10 = this.f273g;
            double pow = Math.pow(2.718281828459045d, d10 * d3);
            double d11 = this.f272f;
            c = (d8 * d10 * pow) + (d9 * d11 * Math.pow(2.718281828459045d, d11 * d3));
        } else if (d5 == 1.0d) {
            double d12 = this.f267a;
            double d13 = d2 + (d12 * d4);
            double d14 = d4 + (d13 * d3);
            c2 = Math.pow(2.718281828459045d, (-d12) * d3) * d14;
            double pow2 = Math.pow(2.718281828459045d, (-this.f267a) * d3);
            double d15 = this.f267a;
            c = (d13 * Math.pow(2.718281828459045d, (-d15) * d3)) + (d14 * pow2 * (-d15));
        } else {
            double d16 = this.f267a;
            double d17 = (1.0d / this.f274h) * ((d5 * d16 * d4) + d2);
            c2 = Math.pow(2.718281828459045d, (-d5) * d16 * d3) * ((Math.cos(this.f274h * d3) * d4) + (Math.sin(this.f274h * d3) * d17));
            double d18 = this.f267a;
            double d19 = -d18;
            double d20 = this.f268b;
            double pow3 = Math.pow(2.718281828459045d, (-d20) * d18 * d3);
            double d21 = this.f274h;
            double d22 = -d21;
            double sin = Math.sin(d21 * d3);
            double d23 = this.f274h;
            c = (d19 * c2 * d20) + (pow3 * ((d22 * d4 * sin) + (d17 * d23 * Math.cos(d23 * d3))));
        }
        xc.o oVar = this.f276j;
        oVar.a = (float) (c2 + this.f275i);
        oVar.b = c;
        return oVar;
    }
}
