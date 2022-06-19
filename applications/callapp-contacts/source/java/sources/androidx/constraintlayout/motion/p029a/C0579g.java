package androidx.constraintlayout.motion.p029a;

import androidx.constraintlayout.motion.widget.AbstractanimationInterpolatorC0625n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.constraintlayout.motion.a.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/g.class */
public final class C0579g extends AbstractanimationInterpolatorC0625n {

    /* renamed from: a */
    private float f2414a;

    /* renamed from: b */
    private float f2415b;

    /* renamed from: c */
    private float f2416c;

    /* renamed from: d */
    private float f2417d;

    /* renamed from: e */
    private float f2418e;

    /* renamed from: f */
    private float f2419f;

    /* renamed from: g */
    private float f2420g;

    /* renamed from: h */
    private float f2421h;

    /* renamed from: i */
    private float f2422i;

    /* renamed from: j */
    private int f2423j;

    /* renamed from: k */
    private String f2424k;

    /* renamed from: l */
    private boolean f2425l = false;

    /* renamed from: m */
    private float f2426m;

    /* renamed from: n */
    private float f2427n;

    /* renamed from: a */
    private float m45060a(float f) {
        float f2 = this.f2417d;
        if (f <= f2) {
            float f3 = this.f2414a;
            return f3 + (((this.f2415b - f3) * f) / f2);
        }
        int i = this.f2423j;
        if (i == 1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = f - f2;
        float f5 = this.f2418e;
        if (f4 < f5) {
            float f6 = this.f2415b;
            return f6 + (((this.f2416c - f6) * f4) / f5);
        } else if (i == 2) {
            return this.f2421h;
        } else {
            float f7 = f4 - f5;
            float f8 = this.f2419f;
            if (f7 >= f8) {
                return this.f2422i;
            }
            float f9 = this.f2416c;
            return f9 - ((f7 * f9) / f8);
        }
    }

    /* renamed from: a */
    private void m45059a(float f, float f2, float f3, float f4, float f5) {
        float f6 = f;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            f6 = 1.0E-4f;
        }
        this.f2414a = f6;
        float f7 = f6 / f3;
        float f8 = (f7 * f6) / 2.0f;
        if (f6 < BitmapDescriptorFactory.HUE_RED) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f6) / f3) * f6) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.f2424k = "backward accelerate, decelerate";
                this.f2423j = 2;
                this.f2414a = f6;
                this.f2415b = sqrt;
                this.f2416c = BitmapDescriptorFactory.HUE_RED;
                float f9 = (sqrt - f6) / f3;
                this.f2417d = f9;
                this.f2418e = sqrt / f3;
                this.f2420g = ((f6 + sqrt) * f9) / 2.0f;
                this.f2421h = f2;
                this.f2422i = f2;
                return;
            }
            this.f2424k = "backward accelerate cruse decelerate";
            this.f2423j = 3;
            this.f2414a = f6;
            this.f2415b = f4;
            this.f2416c = f4;
            float f10 = (f4 - f6) / f3;
            this.f2417d = f10;
            float f11 = f4 / f3;
            this.f2419f = f11;
            float f12 = ((f6 + f4) * f10) / 2.0f;
            float f13 = (f11 * f4) / 2.0f;
            this.f2418e = ((f2 - f12) - f13) / f4;
            this.f2420g = f12;
            this.f2421h = f2 - f13;
            this.f2422i = f2;
        } else if (f8 >= f2) {
            this.f2424k = "hard stop";
            this.f2423j = 1;
            this.f2414a = f6;
            this.f2415b = BitmapDescriptorFactory.HUE_RED;
            this.f2420g = f2;
            this.f2417d = (2.0f * f2) / f6;
        } else {
            float f14 = f2 - f8;
            float f15 = f14 / f6;
            if (f15 + f7 < f5) {
                this.f2424k = "cruse decelerate";
                this.f2423j = 2;
                this.f2414a = f6;
                this.f2415b = f6;
                this.f2416c = BitmapDescriptorFactory.HUE_RED;
                this.f2420g = f14;
                this.f2421h = f2;
                this.f2417d = f15;
                this.f2418e = f7;
                return;
            }
            float sqrt2 = (float) Math.sqrt((f3 * f2) + ((f6 * f6) / 2.0f));
            float f16 = (sqrt2 - f6) / f3;
            this.f2417d = f16;
            float f17 = sqrt2 / f3;
            this.f2418e = f17;
            if (sqrt2 < f4) {
                this.f2424k = "accelerate decelerate";
                this.f2423j = 2;
                this.f2414a = f6;
                this.f2415b = sqrt2;
                this.f2416c = BitmapDescriptorFactory.HUE_RED;
                this.f2417d = f16;
                this.f2418e = f17;
                this.f2420g = ((f6 + sqrt2) * f16) / 2.0f;
                this.f2421h = f2;
                return;
            }
            this.f2424k = "accelerate cruse decelerate";
            this.f2423j = 3;
            this.f2414a = f6;
            this.f2415b = f4;
            this.f2416c = f4;
            float f18 = (f4 - f6) / f3;
            this.f2417d = f18;
            float f19 = f4 / f3;
            this.f2419f = f19;
            float f20 = ((f6 + f4) * f18) / 2.0f;
            float f21 = (f19 * f4) / 2.0f;
            this.f2418e = ((f2 - f20) - f21) / f4;
            this.f2420g = f20;
            this.f2421h = f2 - f21;
            this.f2422i = f2;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractanimationInterpolatorC0625n
    /* renamed from: a */
    public final float mo44833a() {
        return this.f2425l ? -m45060a(this.f2427n) : m45060a(this.f2427n);
    }

    /* renamed from: a */
    public final void m45058a(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f2426m = f;
        boolean z = f > f2;
        this.f2425l = z;
        if (z) {
            m45059a(-f3, f - f2, f5, f6, f4);
        } else {
            m45059a(f3, f2 - f, f5, f6, f4);
        }
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2;
        float f3 = this.f2417d;
        if (f <= f3) {
            float f4 = this.f2414a;
            f2 = (f4 * f) + ((((this.f2415b - f4) * f) * f) / (f3 * 2.0f));
        } else {
            int i = this.f2423j;
            if (i == 1) {
                f2 = this.f2420g;
            } else {
                float f5 = f - f3;
                float f6 = this.f2418e;
                if (f5 < f6) {
                    float f7 = this.f2420g;
                    float f8 = this.f2415b;
                    f2 = f7 + (f8 * f5) + ((((this.f2416c - f8) * f5) * f5) / (f6 * 2.0f));
                } else if (i == 2) {
                    f2 = this.f2421h;
                } else {
                    float f9 = f5 - f6;
                    float f10 = this.f2419f;
                    if (f9 < f10) {
                        float f11 = this.f2421h;
                        float f12 = this.f2416c;
                        f2 = (f11 + (f12 * f9)) - (((f12 * f9) * f9) / (f10 * 2.0f));
                    } else {
                        f2 = this.f2422i;
                    }
                }
            }
        }
        this.f2427n = f;
        return this.f2425l ? this.f2426m - f2 : this.f2426m + f2;
    }
}
