package androidx.p031e.p032a;

import androidx.p031e.p032a.AbstractC0670b;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* renamed from: androidx.e.a.f */
/* loaded from: classes-dex2jar.jar:androidx/e/a/f.class */
public final class C0693f {

    /* renamed from: a */
    double f2241a;

    /* renamed from: b */
    double f2242b;

    /* renamed from: c */
    private boolean f2243c;

    /* renamed from: d */
    private double f2244d;

    /* renamed from: e */
    private double f2245e;

    /* renamed from: f */
    private double f2246f;

    /* renamed from: g */
    private double f2247g;

    /* renamed from: h */
    private double f2248h;

    /* renamed from: i */
    private double f2249i;

    /* renamed from: j */
    private final AbstractC0670b.C0685a f2250j;

    public C0693f() {
        this.f2241a = Math.sqrt(1500.0d);
        this.f2242b = 0.5d;
        this.f2243c = false;
        this.f2249i = Double.MAX_VALUE;
        this.f2250j = new AbstractC0670b.C0685a();
    }

    public C0693f(float f) {
        this.f2241a = Math.sqrt(1500.0d);
        this.f2242b = 0.5d;
        this.f2243c = false;
        this.f2249i = Double.MAX_VALUE;
        this.f2250j = new AbstractC0670b.C0685a();
        this.f2249i = f;
    }

    /* renamed from: b */
    private void m5705b() {
        if (this.f2243c) {
            return;
        }
        if (this.f2249i == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d = this.f2242b;
        if (d > 1.0d) {
            double d2 = -d;
            double d3 = this.f2241a;
            this.f2246f = (d2 * d3) + (d3 * Math.sqrt((d * d) - 1.0d));
            double d4 = this.f2242b;
            double d5 = -d4;
            double d6 = this.f2241a;
            this.f2247g = (d5 * d6) - (d6 * Math.sqrt((d4 * d4) - 1.0d));
        } else if (d >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && d < 1.0d) {
            this.f2248h = this.f2241a * Math.sqrt(1.0d - (d * d));
        }
        this.f2243c = true;
    }

    /* renamed from: a */
    public float m5710a() {
        return (float) this.f2249i;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r0v46, types: [double] */
    /* JADX WARN: Type inference failed for: r0v55, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v78, types: [double] */
    /* JADX WARN: Type inference failed for: r0v88, types: [double] */
    /* renamed from: a */
    public AbstractC0670b.C0685a m5708a(double d, double d2, long j) {
        char c;
        char c2;
        m5705b();
        double d3 = j / 1000.0d;
        double d4 = d - this.f2249i;
        double d5 = this.f2242b;
        if (d5 > 1.0d) {
            double d6 = this.f2247g;
            double d7 = this.f2246f;
            double d8 = d4 - (((d6 * d4) - d2) / (d6 - d7));
            double d9 = ((d4 * d6) - d2) / (d6 - d7);
            c2 = (Math.pow(2.718281828459045d, d6 * d3) * d8) + (Math.pow(2.718281828459045d, this.f2246f * d3) * d9);
            double d10 = this.f2247g;
            double pow = Math.pow(2.718281828459045d, d10 * d3);
            double d11 = this.f2246f;
            c = (d8 * d10 * pow) + (d9 * d11 * Math.pow(2.718281828459045d, d11 * d3));
        } else if (d5 == 1.0d) {
            double d12 = this.f2241a;
            double d13 = d2 + (d12 * d4);
            double d14 = d4 + (d13 * d3);
            c2 = Math.pow(2.718281828459045d, (-d12) * d3) * d14;
            double pow2 = Math.pow(2.718281828459045d, (-this.f2241a) * d3);
            double d15 = this.f2241a;
            c = (d13 * Math.pow(2.718281828459045d, (-d15) * d3)) + (d14 * pow2 * (-d15));
        } else {
            double d16 = this.f2241a;
            double d17 = (1.0d / this.f2248h) * ((d5 * d16 * d4) + d2);
            c2 = Math.pow(2.718281828459045d, (-d5) * d16 * d3) * ((Math.cos(this.f2248h * d3) * d4) + (Math.sin(this.f2248h * d3) * d17));
            double d18 = this.f2241a;
            double d19 = -d18;
            double d20 = this.f2242b;
            double pow3 = Math.pow(2.718281828459045d, (-d20) * d18 * d3);
            double d21 = this.f2248h;
            double d22 = -d21;
            double sin = Math.sin(d21 * d3);
            double d23 = this.f2248h;
            c = (d19 * c2 * d20) + (pow3 * ((d22 * d4 * sin) + (d17 * d23 * Math.cos(d23 * d3))));
        }
        AbstractC0670b.C0685a c0685a = this.f2250j;
        c0685a.f2231a = (float) (c2 + this.f2249i);
        c0685a.f2232b = c;
        return c0685a;
    }

    /* renamed from: a */
    public C0693f m5707a(float f) {
        this.f2249i = f;
        return this;
    }

    /* renamed from: a */
    public void m5709a(double d) {
        this.f2244d = Math.abs(d);
        this.f2245e = this.f2244d * 62.5d;
    }

    /* renamed from: a */
    public boolean m5706a(float f, float f2) {
        return ((double) Math.abs(f2)) < this.f2245e && ((double) Math.abs(f - m5710a())) < this.f2244d;
    }
}
