package androidx.constraintlayout.motion.a;

import androidx.constraintlayout.motion.widget.n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/g.class */
public final class g extends n {

    /* renamed from: a  reason: collision with root package name */
    private float f1451a;

    /* renamed from: b  reason: collision with root package name */
    private float f1452b;

    /* renamed from: c  reason: collision with root package name */
    private float f1453c;

    /* renamed from: d  reason: collision with root package name */
    private float f1454d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private int j;
    private String k;
    private boolean l = false;
    private float m;
    private float n;

    private float a(float f) {
        float f2 = this.f1454d;
        if (f <= f2) {
            float f3 = this.f1451a;
            return f3 + (((this.f1452b - f3) * f) / f2);
        }
        int i = this.j;
        if (i == 1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = f - f2;
        float f5 = this.e;
        if (f4 < f5) {
            float f6 = this.f1452b;
            return f6 + (((this.f1453c - f6) * f4) / f5);
        } else if (i == 2) {
            return this.h;
        } else {
            float f7 = f4 - f5;
            float f8 = this.f;
            if (f7 >= f8) {
                return this.i;
            }
            float f9 = this.f1453c;
            return f9 - ((f7 * f9) / f8);
        }
    }

    private void a(float f, float f2, float f3, float f4, float f5) {
        float f6 = f;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            f6 = 1.0E-4f;
        }
        this.f1451a = f6;
        float f7 = f6 / f3;
        float f8 = (f7 * f6) / 2.0f;
        if (f6 < BitmapDescriptorFactory.HUE_RED) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f6) / f3) * f6) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.k = "backward accelerate, decelerate";
                this.j = 2;
                this.f1451a = f6;
                this.f1452b = sqrt;
                this.f1453c = BitmapDescriptorFactory.HUE_RED;
                float f9 = (sqrt - f6) / f3;
                this.f1454d = f9;
                this.e = sqrt / f3;
                this.g = ((f6 + sqrt) * f9) / 2.0f;
                this.h = f2;
                this.i = f2;
                return;
            }
            this.k = "backward accelerate cruse decelerate";
            this.j = 3;
            this.f1451a = f6;
            this.f1452b = f4;
            this.f1453c = f4;
            float f10 = (f4 - f6) / f3;
            this.f1454d = f10;
            float f11 = f4 / f3;
            this.f = f11;
            float f12 = ((f6 + f4) * f10) / 2.0f;
            float f13 = (f11 * f4) / 2.0f;
            this.e = ((f2 - f12) - f13) / f4;
            this.g = f12;
            this.h = f2 - f13;
            this.i = f2;
        } else if (f8 >= f2) {
            this.k = "hard stop";
            this.j = 1;
            this.f1451a = f6;
            this.f1452b = BitmapDescriptorFactory.HUE_RED;
            this.g = f2;
            this.f1454d = (2.0f * f2) / f6;
        } else {
            float f14 = f2 - f8;
            float f15 = f14 / f6;
            if (f15 + f7 < f5) {
                this.k = "cruse decelerate";
                this.j = 2;
                this.f1451a = f6;
                this.f1452b = f6;
                this.f1453c = BitmapDescriptorFactory.HUE_RED;
                this.g = f14;
                this.h = f2;
                this.f1454d = f15;
                this.e = f7;
                return;
            }
            float sqrt2 = (float) Math.sqrt((f3 * f2) + ((f6 * f6) / 2.0f));
            float f16 = (sqrt2 - f6) / f3;
            this.f1454d = f16;
            float f17 = sqrt2 / f3;
            this.e = f17;
            if (sqrt2 < f4) {
                this.k = "accelerate decelerate";
                this.j = 2;
                this.f1451a = f6;
                this.f1452b = sqrt2;
                this.f1453c = BitmapDescriptorFactory.HUE_RED;
                this.f1454d = f16;
                this.e = f17;
                this.g = ((f6 + sqrt2) * f16) / 2.0f;
                this.h = f2;
                return;
            }
            this.k = "accelerate cruse decelerate";
            this.j = 3;
            this.f1451a = f6;
            this.f1452b = f4;
            this.f1453c = f4;
            float f18 = (f4 - f6) / f3;
            this.f1454d = f18;
            float f19 = f4 / f3;
            this.f = f19;
            float f20 = ((f6 + f4) * f18) / 2.0f;
            float f21 = (f19 * f4) / 2.0f;
            this.e = ((f2 - f20) - f21) / f4;
            this.g = f20;
            this.h = f2 - f21;
            this.i = f2;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.n
    public final float a() {
        return this.l ? -a(this.n) : a(this.n);
    }

    public final void a(float f, float f2, float f3, float f4, float f5, float f6) {
        this.m = f;
        boolean z = f > f2;
        this.l = z;
        if (z) {
            a(-f3, f - f2, f5, f6, f4);
        } else {
            a(f3, f2 - f, f5, f6, f4);
        }
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2;
        float f3 = this.f1454d;
        if (f <= f3) {
            float f4 = this.f1451a;
            f2 = (f4 * f) + ((((this.f1452b - f4) * f) * f) / (f3 * 2.0f));
        } else {
            int i = this.j;
            if (i == 1) {
                f2 = this.g;
            } else {
                float f5 = f - f3;
                float f6 = this.e;
                if (f5 < f6) {
                    float f7 = this.g;
                    float f8 = this.f1452b;
                    f2 = f7 + (f8 * f5) + ((((this.f1453c - f8) * f5) * f5) / (f6 * 2.0f));
                } else if (i == 2) {
                    f2 = this.h;
                } else {
                    float f9 = f5 - f6;
                    float f10 = this.f;
                    if (f9 < f10) {
                        float f11 = this.h;
                        float f12 = this.f1453c;
                        f2 = (f11 + (f12 * f9)) - (((f12 * f9) * f9) / (f10 * 2.0f));
                    } else {
                        f2 = this.i;
                    }
                }
            }
        }
        this.n = f;
        return this.l ? this.m - f2 : this.m + f2;
    }
}
