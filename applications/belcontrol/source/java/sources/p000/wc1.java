package p000;
/* renamed from: wc1 */
/* loaded from: classes3-dex2jar.jar:wc1.class */
public class wc1 {

    /* renamed from: a */
    public float f8549a;

    /* renamed from: b */
    public float f8550b;

    /* renamed from: c */
    public long f8551c;

    public wc1(float f, float f2) {
        this.f8549a = f;
        this.f8550b = f2;
        this.f8551c = 0L;
    }

    public wc1(float f, float f2, long j) {
        this.f8549a = f;
        this.f8550b = f2;
        this.f8551c = j;
    }

    /* renamed from: a */
    public float m261a(wc1 wc1Var, wc1 wc1Var2) {
        float f = wc1Var.f8549a;
        float f2 = this.f8549a;
        float f3 = wc1Var2.f8550b;
        float f4 = this.f8550b;
        return ((f - f2) * (f3 - f4)) - ((wc1Var.f8550b - f4) * (wc1Var2.f8549a - f2));
    }

    /* renamed from: b */
    public float m260b(wc1 wc1Var) {
        return (float) Math.hypot(wc1Var.f8549a - this.f8549a, wc1Var.f8550b - this.f8550b);
    }

    /* renamed from: c */
    public float m259c(wc1 wc1Var, wc1 wc1Var2) {
        float f = wc1Var.f8549a;
        float f2 = this.f8549a;
        float f3 = wc1Var2.f8549a;
        float f4 = wc1Var.f8550b;
        float f5 = this.f8550b;
        return ((f - f2) * (f3 - f2)) + ((f4 - f5) * (wc1Var2.f8550b - f5));
    }

    /* renamed from: d */
    public float m258d(wc1 wc1Var, wc1 wc1Var2) {
        float m260b = m260b(wc1Var);
        float m260b2 = m260b(wc1Var2);
        if (m260b == 0.0f || m260b2 == 0.0f) {
            return 0.0f;
        }
        float m261a = m261a(wc1Var, wc1Var2);
        float acos = (float) Math.acos(Math.min(1.0f, Math.max(-1.0f, (m259c(wc1Var, wc1Var2) / m260b) / m260b2)));
        float f = acos;
        if (m261a < 0.0d) {
            f = 6.2831855f - acos;
        }
        return f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof wc1)) {
            return false;
        }
        wc1 wc1Var = (wc1) obj;
        boolean z = false;
        if (this.f8549a == wc1Var.f8549a) {
            z = false;
            if (this.f8550b == wc1Var.f8550b) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        float f = this.f8549a;
        int i = 0;
        int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
        float f2 = this.f8550b;
        if (f2 != 0.0f) {
            i = Float.floatToIntBits(f2);
        }
        return (floatToIntBits * 31) + i;
    }
}
