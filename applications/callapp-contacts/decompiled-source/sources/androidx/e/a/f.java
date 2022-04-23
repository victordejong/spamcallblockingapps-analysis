package androidx.e.a;

import androidx.e.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/e/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    double f2133a;

    /* renamed from: b  reason: collision with root package name */
    public double f2134b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2135c;

    /* renamed from: d  reason: collision with root package name */
    double f2136d;
    double e;
    double f;
    private double g;
    private double h;
    private double i;
    private final b.a j;

    public f() {
        this.f2133a = Math.sqrt(1500.0d);
        this.f2134b = 0.5d;
        this.f2135c = false;
        this.f = Double.MAX_VALUE;
        this.j = new b.a();
    }

    public f(float f) {
        this.f2133a = Math.sqrt(1500.0d);
        this.f2134b = 0.5d;
        this.f2135c = false;
        this.f = Double.MAX_VALUE;
        this.j = new b.a();
        this.f = f;
    }

    private void a() {
        if (!this.f2135c) {
            if (this.f != Double.MAX_VALUE) {
                double d2 = this.f2134b;
                if (d2 > 1.0d) {
                    double d3 = -d2;
                    double d4 = this.f2133a;
                    this.g = (d3 * d4) + (d4 * Math.sqrt((d2 * d2) - 1.0d));
                    double d5 = this.f2134b;
                    double d6 = -d5;
                    double d7 = this.f2133a;
                    this.h = (d6 * d7) - (d7 * Math.sqrt((d5 * d5) - 1.0d));
                } else if (d2 >= 0.0d && d2 < 1.0d) {
                    this.i = this.f2133a * Math.sqrt(1.0d - (d2 * d2));
                }
                this.f2135c = true;
                return;
            }
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b.a a(double d2, double d3, long j) {
        double d4;
        double d5;
        a();
        double d6 = j / 1000.0d;
        double d7 = d2 - this.f;
        double d8 = this.f2134b;
        if (d8 > 1.0d) {
            double d9 = this.h;
            double d10 = this.g;
            double d11 = d7 - (((d9 * d7) - d3) / (d9 - d10));
            double d12 = ((d7 * d9) - d3) / (d9 - d10);
            d5 = (Math.pow(2.718281828459045d, d9 * d6) * d11) + (Math.pow(2.718281828459045d, this.g * d6) * d12);
            double d13 = this.h;
            double pow = Math.pow(2.718281828459045d, d13 * d6);
            double d14 = this.g;
            d4 = (d11 * d13 * pow) + (d12 * d14 * Math.pow(2.718281828459045d, d14 * d6));
        } else if (d8 == 1.0d) {
            double d15 = this.f2133a;
            double d16 = d3 + (d15 * d7);
            double d17 = d7 + (d16 * d6);
            d5 = Math.pow(2.718281828459045d, (-d15) * d6) * d17;
            double pow2 = Math.pow(2.718281828459045d, (-this.f2133a) * d6);
            double d18 = this.f2133a;
            d4 = (d16 * Math.pow(2.718281828459045d, (-d18) * d6)) + (d17 * pow2 * (-d18));
        } else {
            double d19 = this.f2133a;
            double d20 = (1.0d / this.i) * ((d8 * d19 * d7) + d3);
            d5 = Math.pow(2.718281828459045d, (-d8) * d19 * d6) * ((Math.cos(this.i * d6) * d7) + (Math.sin(this.i * d6) * d20));
            double d21 = this.f2133a;
            double d22 = -d21;
            double d23 = this.f2134b;
            double pow3 = Math.pow(2.718281828459045d, (-d23) * d21 * d6);
            double d24 = this.i;
            double d25 = -d24;
            double sin = Math.sin(d24 * d6);
            double d26 = this.i;
            d4 = (d22 * d5 * d23) + (pow3 * ((d25 * d7 * sin) + (d20 * d26 * Math.cos(d26 * d6))));
        }
        this.j.f2129a = (float) (d5 + this.f);
        this.j.f2130b = (float) d4;
        return this.j;
    }

    public final f a(float f) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            this.f2133a = Math.sqrt(f);
            this.f2135c = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }
}
