package androidx.transition;

import android.view.View;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$f.class */
public class ChangeTransform$f {

    /* renamed from: a */
    final float f2657a;

    /* renamed from: b */
    final float f2658b;

    /* renamed from: c */
    final float f2659c;

    /* renamed from: d */
    final float f2660d;

    /* renamed from: e */
    final float f2661e;

    /* renamed from: f */
    final float f2662f;

    /* renamed from: g */
    final float f2663g;

    /* renamed from: h */
    final float f2664h;

    ChangeTransform$f(View view) {
        this.f2657a = view.getTranslationX();
        this.f2658b = view.getTranslationY();
        this.f2659c = t.K(view);
        this.f2660d = view.getScaleX();
        this.f2661e = view.getScaleY();
        this.f2662f = view.getRotationX();
        this.f2663g = view.getRotationY();
        this.f2664h = view.getRotation();
    }

    /* renamed from: a */
    public void m12122a(View view) {
        ChangeTransform.v0(view, this.f2657a, this.f2658b, this.f2659c, this.f2660d, this.f2661e, this.f2662f, this.f2663g, this.f2664h);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ChangeTransform$f)) {
            return false;
        }
        ChangeTransform$f changeTransform$f = (ChangeTransform$f) obj;
        boolean z = false;
        if (changeTransform$f.f2657a == this.f2657a) {
            z = false;
            if (changeTransform$f.f2658b == this.f2658b) {
                z = false;
                if (changeTransform$f.f2659c == this.f2659c) {
                    z = false;
                    if (changeTransform$f.f2660d == this.f2660d) {
                        z = false;
                        if (changeTransform$f.f2661e == this.f2661e) {
                            z = false;
                            if (changeTransform$f.f2662f == this.f2662f) {
                                z = false;
                                if (changeTransform$f.f2663g == this.f2663g) {
                                    z = false;
                                    if (changeTransform$f.f2664h == this.f2664h) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        float f = this.f2657a;
        int i = 0;
        int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
        float f2 = this.f2658b;
        int floatToIntBits2 = f2 != 0.0f ? Float.floatToIntBits(f2) : 0;
        float f3 = this.f2659c;
        int floatToIntBits3 = f3 != 0.0f ? Float.floatToIntBits(f3) : 0;
        float f4 = this.f2660d;
        int floatToIntBits4 = f4 != 0.0f ? Float.floatToIntBits(f4) : 0;
        float f5 = this.f2661e;
        int floatToIntBits5 = f5 != 0.0f ? Float.floatToIntBits(f5) : 0;
        float f6 = this.f2662f;
        int floatToIntBits6 = f6 != 0.0f ? Float.floatToIntBits(f6) : 0;
        float f7 = this.f2663g;
        int floatToIntBits7 = f7 != 0.0f ? Float.floatToIntBits(f7) : 0;
        float f8 = this.f2664h;
        if (f8 != 0.0f) {
            i = Float.floatToIntBits(f8);
        }
        return (((((((((((((floatToIntBits * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + floatToIntBits6) * 31) + floatToIntBits7) * 31) + i;
    }
}
