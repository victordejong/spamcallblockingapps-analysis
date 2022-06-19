package p020b.p057k.p058a;

import p020b.p057k.p058a.AbstractC1722b;
/* renamed from: b.k.a.e */
/* loaded from: classes-dex2jar.jar:b/k/a/e.class */
public final class C1743e {

    /* renamed from: a */
    double f6469a;

    /* renamed from: b */
    double f6470b;

    /* renamed from: c */
    private boolean f6471c;

    /* renamed from: d */
    private double f6472d;

    /* renamed from: e */
    private double f6473e;

    /* renamed from: f */
    private double f6474f;

    /* renamed from: g */
    private double f6475g;

    /* renamed from: h */
    private double f6476h;

    /* renamed from: i */
    private double f6477i;

    /* renamed from: j */
    private final AbstractC1722b.C1737o f6478j;

    public C1743e() {
        this.f6469a = Math.sqrt(1500.0d);
        this.f6470b = 0.5d;
        this.f6471c = false;
        this.f6477i = Double.MAX_VALUE;
        this.f6478j = new AbstractC1722b.C1737o();
    }

    public C1743e(float f) {
        this.f6469a = Math.sqrt(1500.0d);
        this.f6470b = 0.5d;
        this.f6471c = false;
        this.f6477i = Double.MAX_VALUE;
        this.f6478j = new AbstractC1722b.C1737o();
        this.f6477i = f;
    }

    /* renamed from: b */
    private void m29035b() {
        if (this.f6471c) {
            return;
        }
        if (this.f6477i == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d = this.f6470b;
        if (d > 1.0d) {
            double d2 = -d;
            double d3 = this.f6469a;
            this.f6474f = (d2 * d3) + (d3 * Math.sqrt((d * d) - 1.0d));
            double d4 = this.f6470b;
            double d5 = -d4;
            double d6 = this.f6469a;
            this.f6475g = (d5 * d6) - (d6 * Math.sqrt((d4 * d4) - 1.0d));
        } else if (d >= 0.0d && d < 1.0d) {
            this.f6476h = this.f6469a * Math.sqrt(1.0d - (d * d));
        }
        this.f6471c = true;
    }

    /* renamed from: a */
    public float m29036a() {
        return (float) this.f6477i;
    }

    /* renamed from: c */
    public boolean m29034c(float f, float f2) {
        return ((double) Math.abs(f2)) < this.f6473e && ((double) Math.abs(f - m29036a())) < this.f6472d;
    }

    /* renamed from: d */
    public C1743e m29033d(float f) {
        if (f >= 0.0f) {
            this.f6470b = f;
            this.f6471c = false;
            return this;
        }
        throw new IllegalArgumentException("Damping ratio must be non-negative");
    }

    /* renamed from: e */
    public C1743e m29032e(float f) {
        this.f6477i = f;
        return this;
    }

    /* renamed from: f */
    public C1743e m29031f(float f) {
        if (f > 0.0f) {
            this.f6469a = Math.sqrt(f);
            this.f6471c = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }

    /* renamed from: g */
    public void m29030g(double d) {
        double abs = Math.abs(d);
        this.f6472d = abs;
        this.f6473e = abs * 62.5d;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r0v46, types: [double] */
    /* JADX WARN: Type inference failed for: r0v55, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v78, types: [double] */
    /* JADX WARN: Type inference failed for: r0v88, types: [double] */
    /* renamed from: h */
    public AbstractC1722b.C1737o m29029h(double d, double d2, long j) {
        char c;
        char c2;
        m29035b();
        double d3 = j / 1000.0d;
        double d4 = d - this.f6477i;
        double d5 = this.f6470b;
        if (d5 > 1.0d) {
            double d6 = this.f6475g;
            double d7 = this.f6474f;
            double d8 = d4 - (((d6 * d4) - d2) / (d6 - d7));
            double d9 = ((d4 * d6) - d2) / (d6 - d7);
            c2 = (Math.pow(2.718281828459045d, d6 * d3) * d8) + (Math.pow(2.718281828459045d, this.f6474f * d3) * d9);
            double d10 = this.f6475g;
            double pow = Math.pow(2.718281828459045d, d10 * d3);
            double d11 = this.f6474f;
            c = (d8 * d10 * pow) + (d9 * d11 * Math.pow(2.718281828459045d, d11 * d3));
        } else if (d5 == 1.0d) {
            double d12 = this.f6469a;
            double d13 = d2 + (d12 * d4);
            double d14 = d4 + (d13 * d3);
            c2 = Math.pow(2.718281828459045d, (-d12) * d3) * d14;
            double pow2 = Math.pow(2.718281828459045d, (-this.f6469a) * d3);
            double d15 = this.f6469a;
            c = (d13 * Math.pow(2.718281828459045d, (-d15) * d3)) + (d14 * pow2 * (-d15));
        } else {
            double d16 = this.f6469a;
            double d17 = (1.0d / this.f6476h) * ((d5 * d16 * d4) + d2);
            c2 = Math.pow(2.718281828459045d, (-d5) * d16 * d3) * ((Math.cos(this.f6476h * d3) * d4) + (Math.sin(this.f6476h * d3) * d17));
            double d18 = this.f6469a;
            double d19 = -d18;
            double d20 = this.f6470b;
            double pow3 = Math.pow(2.718281828459045d, (-d20) * d18 * d3);
            double d21 = this.f6476h;
            double d22 = -d21;
            double sin = Math.sin(d21 * d3);
            double d23 = this.f6476h;
            c = (d19 * c2 * d20) + (pow3 * ((d22 * d4 * sin) + (d17 * d23 * Math.cos(d23 * d3))));
        }
        AbstractC1722b.C1737o c1737o = this.f6478j;
        c1737o.f6463a = (float) (c2 + this.f6477i);
        c1737o.f6464b = c;
        return c1737o;
    }
}
