package androidx.transition;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$f.class */
public class ChangeTransform$f {

    /* renamed from: a */
    public final float f1515a;

    /* renamed from: b */
    public final float f1516b;

    /* renamed from: c */
    public final float f1517c;

    /* renamed from: d */
    public final float f1518d;

    /* renamed from: e */
    public final float f1519e;

    /* renamed from: f */
    public final float f1520f;

    /* renamed from: g */
    public final float f1521g;

    /* renamed from: h */
    public final float f1522h;

    public ChangeTransform$f(View view) {
        this.f1515a = view.getTranslationX();
        this.f1516b = view.getTranslationY();
        this.f1517c = jb.K(view);
        this.f1518d = view.getScaleX();
        this.f1519e = view.getScaleY();
        this.f1520f = view.getRotationX();
        this.f1521g = view.getRotationY();
        this.f1522h = view.getRotation();
    }

    /* renamed from: a */
    public void m5997a(View view) {
        ChangeTransform.h(view, this.f1515a, this.f1516b, this.f1517c, this.f1518d, this.f1519e, this.f1520f, this.f1521g, this.f1522h);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ChangeTransform$f)) {
            return false;
        }
        ChangeTransform$f changeTransform$f = (ChangeTransform$f) obj;
        boolean z = false;
        if (changeTransform$f.f1515a == this.f1515a) {
            z = false;
            if (changeTransform$f.f1516b == this.f1516b) {
                z = false;
                if (changeTransform$f.f1517c == this.f1517c) {
                    z = false;
                    if (changeTransform$f.f1518d == this.f1518d) {
                        z = false;
                        if (changeTransform$f.f1519e == this.f1519e) {
                            z = false;
                            if (changeTransform$f.f1520f == this.f1520f) {
                                z = false;
                                if (changeTransform$f.f1521g == this.f1521g) {
                                    z = false;
                                    if (changeTransform$f.f1522h == this.f1522h) {
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
        float f = this.f1515a;
        int i = 0;
        int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
        float f2 = this.f1516b;
        int floatToIntBits2 = f2 != 0.0f ? Float.floatToIntBits(f2) : 0;
        float f3 = this.f1517c;
        int floatToIntBits3 = f3 != 0.0f ? Float.floatToIntBits(f3) : 0;
        float f4 = this.f1518d;
        int floatToIntBits4 = f4 != 0.0f ? Float.floatToIntBits(f4) : 0;
        float f5 = this.f1519e;
        int floatToIntBits5 = f5 != 0.0f ? Float.floatToIntBits(f5) : 0;
        float f6 = this.f1520f;
        int floatToIntBits6 = f6 != 0.0f ? Float.floatToIntBits(f6) : 0;
        float f7 = this.f1521g;
        int floatToIntBits7 = f7 != 0.0f ? Float.floatToIntBits(f7) : 0;
        float f8 = this.f1522h;
        if (f8 != 0.0f) {
            i = Float.floatToIntBits(f8);
        }
        return (((((((((((((floatToIntBits * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + floatToIntBits6) * 31) + floatToIntBits7) * 31) + i;
    }
}
