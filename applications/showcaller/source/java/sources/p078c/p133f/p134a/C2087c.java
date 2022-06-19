package p078c.p133f.p134a;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import p078c.p133f.p134a.AbstractC2089e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: c.f.a.c */
/* loaded from: classes2-dex2jar.jar:c/f/a/c.class */
public class C2087c extends C2091f {

    /* renamed from: g */
    private float f7210g;

    /* renamed from: h */
    private float f7211h;

    /* renamed from: i */
    private float f7212i;

    /* renamed from: j */
    private boolean f7213j = true;

    public C2087c(AbstractC2089e.C2090a... c2090aArr) {
        super(c2090aArr);
    }

    @Override // p078c.p133f.p134a.C2091f
    /* renamed from: b */
    public Object mo28058b(float f) {
        return Float.valueOf(m28070f(f));
    }

    /* renamed from: e */
    public C2087c clone() {
        ArrayList<AbstractC2089e> arrayList = this.f7223e;
        int size = arrayList.size();
        AbstractC2089e.C2090a[] c2090aArr = new AbstractC2089e.C2090a[size];
        for (int i = 0; i < size; i++) {
            c2090aArr[i] = (AbstractC2089e.C2090a) arrayList.get(i).clone();
        }
        return new C2087c(c2090aArr);
    }

    /* renamed from: f */
    public float m28070f(float f) {
        int i = this.f7219a;
        if (i == 2) {
            if (this.f7213j) {
                this.f7213j = false;
                this.f7210g = ((AbstractC2089e.C2090a) this.f7223e.get(0)).m28060l();
                float m28060l = ((AbstractC2089e.C2090a) this.f7223e.get(1)).m28060l();
                this.f7211h = m28060l;
                this.f7212i = m28060l - this.f7210g;
            }
            Interpolator interpolator = this.f7222d;
            float f2 = f;
            if (interpolator != null) {
                f2 = interpolator.getInterpolation(f);
            }
            AbstractC2095h abstractC2095h = this.f7224f;
            return abstractC2095h == null ? this.f7210g + (f2 * this.f7212i) : ((Number) abstractC2095h.evaluate(f2, Float.valueOf(this.f7210g), Float.valueOf(this.f7211h))).floatValue();
        } else if (f <= 0.0f) {
            AbstractC2089e.C2090a c2090a = (AbstractC2089e.C2090a) this.f7223e.get(0);
            AbstractC2089e.C2090a c2090a2 = (AbstractC2089e.C2090a) this.f7223e.get(1);
            float m28060l2 = c2090a.m28060l();
            float m28060l3 = c2090a2.m28060l();
            float m28068b = c2090a.m28068b();
            float m28068b2 = c2090a2.m28068b();
            Interpolator m28067c = c2090a2.m28067c();
            float f3 = f;
            if (m28067c != null) {
                f3 = m28067c.getInterpolation(f);
            }
            float f4 = (f3 - m28068b) / (m28068b2 - m28068b);
            AbstractC2095h abstractC2095h2 = this.f7224f;
            return abstractC2095h2 == null ? m28060l2 + (f4 * (m28060l3 - m28060l2)) : ((Number) abstractC2095h2.evaluate(f4, Float.valueOf(m28060l2), Float.valueOf(m28060l3))).floatValue();
        } else if (f >= 1.0f) {
            AbstractC2089e.C2090a c2090a3 = (AbstractC2089e.C2090a) this.f7223e.get(i - 2);
            AbstractC2089e.C2090a c2090a4 = (AbstractC2089e.C2090a) this.f7223e.get(this.f7219a - 1);
            float m28060l4 = c2090a3.m28060l();
            float m28060l5 = c2090a4.m28060l();
            float m28068b3 = c2090a3.m28068b();
            float m28068b4 = c2090a4.m28068b();
            Interpolator m28067c2 = c2090a4.m28067c();
            float f5 = f;
            if (m28067c2 != null) {
                f5 = m28067c2.getInterpolation(f);
            }
            float f6 = (f5 - m28068b3) / (m28068b4 - m28068b3);
            AbstractC2095h abstractC2095h3 = this.f7224f;
            return abstractC2095h3 == null ? m28060l4 + (f6 * (m28060l5 - m28060l4)) : ((Number) abstractC2095h3.evaluate(f6, Float.valueOf(m28060l4), Float.valueOf(m28060l5))).floatValue();
        } else {
            AbstractC2089e.C2090a c2090a5 = (AbstractC2089e.C2090a) this.f7223e.get(0);
            int i2 = 1;
            while (true) {
                int i3 = this.f7219a;
                if (i2 >= i3) {
                    return ((Number) this.f7223e.get(i3 - 1).mo28062d()).floatValue();
                }
                AbstractC2089e.C2090a c2090a6 = (AbstractC2089e.C2090a) this.f7223e.get(i2);
                if (f < c2090a6.m28068b()) {
                    Interpolator m28067c3 = c2090a6.m28067c();
                    float f7 = f;
                    if (m28067c3 != null) {
                        f7 = m28067c3.getInterpolation(f);
                    }
                    float m28068b5 = (f7 - c2090a5.m28068b()) / (c2090a6.m28068b() - c2090a5.m28068b());
                    float m28060l6 = c2090a5.m28060l();
                    float m28060l7 = c2090a6.m28060l();
                    AbstractC2095h abstractC2095h4 = this.f7224f;
                    return abstractC2095h4 == null ? m28060l6 + (m28068b5 * (m28060l7 - m28060l6)) : ((Number) abstractC2095h4.evaluate(m28068b5, Float.valueOf(m28060l6), Float.valueOf(m28060l7))).floatValue();
                }
                i2++;
                c2090a5 = c2090a6;
            }
        }
    }
}
