package p203p8;

import android.view.animation.Interpolator;
import androidx.recyclerview.widget.C0608b;
import java.util.ArrayList;
import p203p8.AbstractC4049c;
/* renamed from: p8.b */
/* loaded from: classes2-dex2jar.jar:p8/b.class */
public class C4048b extends C4051d {

    /* renamed from: e */
    public float f12713e;

    /* renamed from: f */
    public float f12714f;

    /* renamed from: g */
    public float f12715g;

    /* renamed from: h */
    public boolean f12716h = true;

    public C4048b(AbstractC4049c.C4050a... c4050aArr) {
        super(c4050aArr);
    }

    /* renamed from: a */
    public C4048b clone() {
        ArrayList<AbstractC4049c> arrayList = this.f12723c;
        int size = arrayList.size();
        AbstractC4049c.C4050a[] c4050aArr = new AbstractC4049c.C4050a[size];
        for (int i = 0; i < size; i++) {
            c4050aArr[i] = (AbstractC4049c.C4050a) arrayList.get(i).clone();
        }
        return new C4048b(c4050aArr);
    }

    /* renamed from: b */
    public float m1464b(float f) {
        int i = this.f12721a;
        if (i == 2) {
            if (this.f12716h) {
                this.f12716h = false;
                this.f12713e = ((AbstractC4049c.C4050a) this.f12723c.get(0)).f12720d;
                float f2 = ((AbstractC4049c.C4050a) this.f12723c.get(1)).f12720d;
                this.f12714f = f2;
                this.f12715g = f2 - this.f12713e;
            }
            Interpolator interpolator = this.f12722b;
            float f3 = f;
            if (interpolator != null) {
                f3 = interpolator.getInterpolation(f);
            }
            AbstractC4071h abstractC4071h = this.f12724d;
            if (abstractC4071h != null) {
                return ((Number) abstractC4071h.evaluate(f3, Float.valueOf(this.f12713e), Float.valueOf(this.f12714f))).floatValue();
            }
            return (f3 * this.f12715g) + this.f12713e;
        } else if (f <= 0.0f) {
            AbstractC4049c.C4050a c4050a = (AbstractC4049c.C4050a) this.f12723c.get(0);
            AbstractC4049c.C4050a c4050a2 = (AbstractC4049c.C4050a) this.f12723c.get(1);
            float f4 = c4050a.f12720d;
            float f5 = c4050a2.f12720d;
            float f6 = c4050a.f12717a;
            float f7 = c4050a2.f12717a;
            Interpolator interpolator2 = c4050a2.f12718b;
            float f8 = f;
            if (interpolator2 != null) {
                f8 = interpolator2.getInterpolation(f);
            }
            float f9 = (f8 - f6) / (f7 - f6);
            AbstractC4071h abstractC4071h2 = this.f12724d;
            return abstractC4071h2 == null ? C0608b.m7621n(f5, f4, f9, f4) : ((Number) abstractC4071h2.evaluate(f9, Float.valueOf(f4), Float.valueOf(f5))).floatValue();
        } else if (f >= 1.0f) {
            AbstractC4049c.C4050a c4050a3 = (AbstractC4049c.C4050a) this.f12723c.get(i - 2);
            AbstractC4049c.C4050a c4050a4 = (AbstractC4049c.C4050a) this.f12723c.get(this.f12721a - 1);
            float f10 = c4050a3.f12720d;
            float f11 = c4050a4.f12720d;
            float f12 = c4050a3.f12717a;
            float f13 = c4050a4.f12717a;
            Interpolator interpolator3 = c4050a4.f12718b;
            float f14 = f;
            if (interpolator3 != null) {
                f14 = interpolator3.getInterpolation(f);
            }
            float f15 = (f14 - f12) / (f13 - f12);
            AbstractC4071h abstractC4071h3 = this.f12724d;
            return abstractC4071h3 == null ? C0608b.m7621n(f11, f10, f15, f10) : ((Number) abstractC4071h3.evaluate(f15, Float.valueOf(f10), Float.valueOf(f11))).floatValue();
        } else {
            AbstractC4049c.C4050a c4050a5 = (AbstractC4049c.C4050a) this.f12723c.get(0);
            int i2 = 1;
            while (true) {
                int i3 = this.f12721a;
                if (i2 >= i3) {
                    return ((Number) this.f12723c.get(i3 - 1).mo1462b()).floatValue();
                }
                AbstractC4049c.C4050a c4050a6 = (AbstractC4049c.C4050a) this.f12723c.get(i2);
                if (f < c4050a6.f12717a) {
                    Interpolator interpolator4 = c4050a6.f12718b;
                    float f16 = f;
                    if (interpolator4 != null) {
                        f16 = interpolator4.getInterpolation(f);
                    }
                    float f17 = c4050a5.f12717a;
                    float f18 = (f16 - f17) / (c4050a6.f12717a - f17);
                    float f19 = c4050a5.f12720d;
                    float f20 = c4050a6.f12720d;
                    AbstractC4071h abstractC4071h4 = this.f12724d;
                    return abstractC4071h4 == null ? C0608b.m7621n(f20, f19, f18, f19) : ((Number) abstractC4071h4.evaluate(f18, Float.valueOf(f19), Float.valueOf(f20))).floatValue();
                }
                i2++;
                c4050a5 = c4050a6;
            }
        }
    }
}
