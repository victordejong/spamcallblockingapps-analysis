package p000;

import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: bd1 */
/* loaded from: classes3-dex2jar.jar:bd1.class */
public class bd1 extends id1 {

    /* renamed from: b */
    public Map<hd1, C0243a> f1917b = new b4();

    /* renamed from: bd1$a */
    /* loaded from: classes3-dex2jar.jar:bd1$a.class */
    public static class C0243a {

        /* renamed from: a */
        public List<wc1> f1918a = new ArrayList();

        /* renamed from: b */
        public wc1 f1919b = null;

        /* renamed from: c */
        public float f1920c = 3.1415927f;

        /* renamed from: d */
        public float f1921d = 0.0f;

        /* renamed from: e */
        public float f1922e = 0.0f;

        /* renamed from: f */
        public float f1923f = 1.0f;

        /* renamed from: g */
        public float f1924g = 0.0f;

        /* renamed from: i */
        public float f1926i = 0.0f;

        /* renamed from: h */
        public float f1925h = 0.0f;

        /* renamed from: a */
        public void m5671a(wc1 wc1Var) {
            wc1 wc1Var2 = this.f1919b;
            if (wc1Var2 != null) {
                this.f1924g += wc1Var2.m260b(wc1Var);
            }
            this.f1919b = wc1Var;
            wc1 wc1Var3 = new wc1(((float) wc1Var.f8551c) / 1.0E8f, this.f1924g / 1.0f);
            if (!this.f1918a.isEmpty()) {
                List<wc1> list = this.f1918a;
                if (list.get(list.size() - 1).equals(wc1Var3)) {
                    return;
                }
            }
            this.f1918a.add(wc1Var3);
            if (this.f1918a.size() == 4) {
                this.f1918a.remove(0);
                float m258d = this.f1918a.get(1).m258d(this.f1918a.get(0), this.f1918a.get(2));
                this.f1925h += 1.0f;
                if (m258d >= 2.8274336f) {
                    this.f1926i += 1.0f;
                }
                float f = m258d - this.f1920c;
                this.f1922e += f;
                this.f1921d += f * f;
                this.f1923f += 1.0f;
                this.f1920c = m258d;
            }
        }

        /* renamed from: b */
        public float m5670b() {
            float f = this.f1925h;
            if (f == 0.0f) {
                return 1.0f;
            }
            return this.f1926i / f;
        }

        /* renamed from: c */
        public float m5669c() {
            float f = this.f1921d;
            float f2 = this.f1923f;
            float f3 = f / f2;
            float f4 = this.f1922e;
            return f3 - ((f4 / f2) * (f4 / f2));
        }
    }

    public bd1(hc1 hc1Var) {
        this.f6693a = hc1Var;
    }

    @Override // p000.gc1
    /* renamed from: b */
    public void mo32b(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1917b.clear();
        }
        for (int i = 0; i < motionEvent.getPointerCount(); i++) {
            hd1 m1632c = this.f6693a.m1632c(motionEvent.getPointerId(i));
            if (this.f1917b.get(m1632c) == null) {
                this.f1917b.put(m1632c, new C0243a());
            }
            if (actionMasked != 1 && actionMasked != 3 && (actionMasked != 6 || i != motionEvent.getActionIndex())) {
                this.f1917b.get(m1632c).m5671a(m1632c.m1625f().get(m1632c.m1625f().size() - 1));
            }
        }
    }

    @Override // p000.id1
    /* renamed from: c */
    public float mo398c(hd1 hd1Var) {
        C0243a c0243a = this.f1917b.get(hd1Var);
        return gd1.m1683a(c0243a.m5669c()) + cd1.m5343a(c0243a.m5670b());
    }
}
