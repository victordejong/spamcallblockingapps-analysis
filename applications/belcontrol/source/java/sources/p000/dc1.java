package p000;

import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: dc1 */
/* loaded from: classes3-dex2jar.jar:dc1.class */
public class dc1 extends id1 {

    /* renamed from: b */
    public Map<hd1, C1289a> f5816b = new b4();

    /* renamed from: dc1$a */
    /* loaded from: classes3-dex2jar.jar:dc1$a.class */
    public static class C1289a {

        /* renamed from: a */
        public List<wc1> f5817a = new ArrayList();

        /* renamed from: b */
        public float f5818b = 0.0f;

        /* renamed from: c */
        public float f5819c = 3.1415927f;

        /* renamed from: d */
        public float f5820d = 0.0f;

        /* renamed from: f */
        public float f5822f = 0.0f;

        /* renamed from: e */
        public float f5821e = 0.0f;

        /* renamed from: h */
        public float f5824h = 0.0f;

        /* renamed from: g */
        public float f5823g = 0.0f;

        /* renamed from: j */
        public float f5826j = 1.0f;

        /* renamed from: i */
        public float f5825i = 1.0f;

        /* renamed from: k */
        public float f5827k = 0.0f;

        /* renamed from: l */
        public float f5828l = 0.0f;

        /* renamed from: p */
        public float f5832p = 0.0f;

        /* renamed from: o */
        public float f5831o = 0.0f;

        /* renamed from: n */
        public float f5830n = 0.0f;

        /* renamed from: m */
        public float f5829m = 0.0f;

        /* renamed from: a */
        public void m2697a(wc1 wc1Var) {
            if (!this.f5817a.isEmpty()) {
                List<wc1> list = this.f5817a;
                if (list.get(list.size() - 1).equals(wc1Var)) {
                    return;
                }
                List<wc1> list2 = this.f5817a;
                if (list2.get(list2.size() - 1).m260b(wc1Var) <= 0.01f) {
                    return;
                }
            }
            if (!this.f5817a.isEmpty()) {
                float f = this.f5828l;
                List<wc1> list3 = this.f5817a;
                this.f5828l = f + list3.get(list3.size() - 1).m260b(wc1Var);
            }
            this.f5817a.add(wc1Var);
            if (this.f5817a.size() == 4) {
                this.f5817a.remove(0);
                float m258d = this.f5817a.get(1).m258d(this.f5817a.get(0), this.f5817a.get(2));
                this.f5829m += 1.0f;
                double d = m258d;
                if (d < 2.9845130165391645d) {
                    this.f5830n += 1.0f;
                } else if (d <= 3.298672290640422d) {
                    this.f5832p += 1.0f;
                } else {
                    this.f5831o += 1.0f;
                }
                float f2 = m258d - this.f5819c;
                if (this.f5820d < m258d) {
                    this.f5820d = m258d;
                    this.f5827k = this.f5828l;
                    this.f5818b = m2694d(this.f5821e, this.f5823g, this.f5825i);
                    this.f5822f = 0.0f;
                    this.f5824h = 0.0f;
                    this.f5826j = 1.0f;
                } else {
                    this.f5824h += f2;
                    this.f5822f += f2 * f2;
                    this.f5826j += 1.0f;
                }
                this.f5823g += f2;
                this.f5821e += f2 * f2;
                this.f5825i += 1.0f;
                this.f5819c = m258d;
            }
        }

        /* renamed from: b */
        public float m2696b() {
            if (this.f5829m == 0.0f) {
                return 1.0f;
            }
            return (Math.max(this.f5830n, this.f5831o) + this.f5832p) / this.f5829m;
        }

        /* renamed from: c */
        public float m2695c() {
            float m2694d = m2694d(this.f5821e, this.f5823g, this.f5825i);
            float f = m2694d;
            if (this.f5827k < this.f5828l / 2.0f) {
                f = Math.min(m2694d, this.f5818b + m2694d(this.f5822f, this.f5824h, this.f5826j));
            }
            return f;
        }

        /* renamed from: d */
        public float m2694d(float f, float f2, float f3) {
            float f4 = f2 / f3;
            return (f / f3) - (f4 * f4);
        }
    }

    public dc1(hc1 hc1Var) {
        this.f6693a = hc1Var;
    }

    @Override // p000.gc1
    /* renamed from: b */
    public void mo32b(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.f5816b.clear();
        }
        for (int i = 0; i < motionEvent.getPointerCount(); i++) {
            hd1 m1632c = this.f6693a.m1632c(motionEvent.getPointerId(i));
            if (this.f5816b.get(m1632c) == null) {
                this.f5816b.put(m1632c, new C1289a());
            }
            this.f5816b.get(m1632c).m2697a(m1632c.m1625f().get(m1632c.m1625f().size() - 1));
        }
    }

    @Override // p000.id1
    /* renamed from: c */
    public float mo398c(hd1 hd1Var) {
        C1289a c1289a = this.f5816b.get(hd1Var);
        return fc1.m1771a(c1289a.m2695c()) + ec1.m2173a(c1289a.m2696b());
    }
}
