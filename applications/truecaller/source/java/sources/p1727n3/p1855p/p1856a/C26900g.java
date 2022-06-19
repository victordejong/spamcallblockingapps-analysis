package p1727n3.p1855p.p1856a;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import p1727n3.p1855p.p1856a.AbstractC26892b;
/* renamed from: n3.p.a.g */
/* loaded from: classes-dex2jar.jar:n3/p/a/g.class */
public final class C26900g {

    /* renamed from: a */
    public double f75187a;

    /* renamed from: b */
    public double f75188b;

    /* renamed from: c */
    public boolean f75189c;

    /* renamed from: d */
    public double f75190d;

    /* renamed from: e */
    public double f75191e;

    /* renamed from: f */
    public double f75192f;

    /* renamed from: g */
    public double f75193g;

    /* renamed from: h */
    public double f75194h;

    /* renamed from: i */
    public double f75195i;

    /* renamed from: j */
    public final AbstractC26892b.C26894k f75196j;

    public C26900g() {
        this.f75187a = Math.sqrt(1500.0d);
        this.f75188b = 0.5d;
        this.f75189c = false;
        this.f75195i = Double.MAX_VALUE;
        this.f75196j = new AbstractC26892b.C26894k();
    }

    public C26900g(float f) {
        this.f75187a = Math.sqrt(1500.0d);
        this.f75188b = 0.5d;
        this.f75189c = false;
        this.f75195i = Double.MAX_VALUE;
        this.f75196j = new AbstractC26892b.C26894k();
        this.f75195i = f;
    }

    /* renamed from: a */
    public C26900g m1226a(float f) {
        if (f >= 0.0f) {
            this.f75188b = f;
            this.f75189c = false;
            return this;
        }
        throw new IllegalArgumentException("Damping ratio must be non-negative");
    }

    /* renamed from: b */
    public C26900g m1225b(float f) {
        if (f > 0.0f) {
            this.f75187a = Math.sqrt(f);
            this.f75189c = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }

    /* JADX WARN: Type inference failed for: r0v101, types: [double] */
    /* JADX WARN: Type inference failed for: r0v111, types: [double] */
    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* JADX WARN: Type inference failed for: r0v63, types: [double] */
    /* JADX WARN: Type inference failed for: r0v83, types: [double] */
    /* JADX WARN: Type inference failed for: r0v85, types: [double] */
    /* renamed from: c */
    public AbstractC26892b.C26894k m1224c(double d, double d2, long j) {
        char c;
        char c2;
        if (!this.f75189c) {
            if (this.f75195i == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d3 = this.f75188b;
            if (d3 > 1.0d) {
                double d4 = -d3;
                double d5 = this.f75187a;
                this.f75192f = (Math.sqrt((d3 * d3) - 1.0d) * d5) + (d4 * d5);
                double d6 = this.f75188b;
                double d7 = -d6;
                double d8 = this.f75187a;
                this.f75193g = (d7 * d8) - (Math.sqrt((d6 * d6) - 1.0d) * d8);
            } else if (d3 >= PlaceLikelihood.LIKELIHOOD_MIN_VALUE && d3 < 1.0d) {
                this.f75194h = Math.sqrt(1.0d - (d3 * d3)) * this.f75187a;
            }
            this.f75189c = true;
        }
        double d9 = j / 1000.0d;
        double d10 = d - this.f75195i;
        double d11 = this.f75188b;
        if (d11 > 1.0d) {
            double d12 = this.f75193g;
            double d13 = this.f75192f;
            double d14 = d10 - (((d12 * d10) - d2) / (d12 - d13));
            double d15 = ((d10 * d12) - d2) / (d12 - d13);
            c = (Math.pow(2.718281828459045d, this.f75192f * d9) * d15) + (Math.pow(2.718281828459045d, d12 * d9) * d14);
            double d16 = this.f75193g;
            double pow = Math.pow(2.718281828459045d, d16 * d9);
            double d17 = this.f75192f;
            c2 = (Math.pow(2.718281828459045d, d17 * d9) * d15 * d17) + (pow * d14 * d16);
        } else if (d11 == 1.0d) {
            double d18 = this.f75187a;
            double d19 = (d18 * d10) + d2;
            double d20 = (d19 * d9) + d10;
            double pow2 = Math.pow(2.718281828459045d, (-d18) * d9);
            double pow3 = Math.pow(2.718281828459045d, (-this.f75187a) * d9);
            double d21 = this.f75187a;
            c2 = (Math.pow(2.718281828459045d, (-d21) * d9) * d19) + (pow3 * d20 * (-d21));
            c = pow2 * d20;
        } else {
            double d22 = this.f75187a;
            double d23 = ((d11 * d22 * d10) + d2) * (1.0d / this.f75194h);
            c = ((Math.sin(this.f75194h * d9) * d23) + (Math.cos(this.f75194h * d9) * d10)) * Math.pow(2.718281828459045d, (-d11) * d22 * d9);
            double d24 = this.f75187a;
            double d25 = -d24;
            double d26 = this.f75188b;
            double pow4 = Math.pow(2.718281828459045d, (-d26) * d24 * d9);
            double d27 = this.f75194h;
            double d28 = -d27;
            double sin = Math.sin(d27 * d9);
            double d29 = this.f75194h;
            c2 = (((Math.cos(d29 * d9) * d23 * d29) + (sin * d28 * d10)) * pow4) + (d25 * c * d26);
        }
        AbstractC26892b.C26894k c26894k = this.f75196j;
        c26894k.f75181a = (float) (c + this.f75195i);
        c26894k.f75182b = c2;
        return c26894k;
    }
}
