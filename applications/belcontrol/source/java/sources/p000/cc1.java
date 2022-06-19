package p000;

import android.view.MotionEvent;
import java.util.Map;
/* renamed from: cc1 */
/* loaded from: classes3-dex2jar.jar:cc1.class */
public class cc1 extends id1 {

    /* renamed from: b */
    public final Map<hd1, C0308a> f2345b = new b4();

    /* renamed from: cc1$a */
    /* loaded from: classes3-dex2jar.jar:cc1$a.class */
    public static class C0308a {

        /* renamed from: a */
        public wc1 f2346a;

        /* renamed from: b */
        public float f2347b = 0.0f;

        /* renamed from: c */
        public float f2348c = 0.0f;

        public C0308a(wc1 wc1Var) {
            this.f2346a = wc1Var;
        }

        /* renamed from: a */
        public void m5347a(wc1 wc1Var) {
            float m260b = this.f2346a.m260b(wc1Var);
            float f = (float) ((wc1Var.f8551c - this.f2346a.f8551c) + 1);
            float f2 = m260b / f;
            if (f > 2.0E7f || f < 5000000.0f) {
                this.f2347b = 0.0f;
            } else {
                float f3 = this.f2347b;
                if (f3 != 0.0f) {
                    this.f2348c = Math.max(this.f2348c, f2 / f3);
                }
                this.f2347b = f2;
            }
            this.f2346a = wc1Var;
        }
    }

    public cc1(hc1 hc1Var) {
        this.f6693a = hc1Var;
    }

    @Override // p000.gc1
    /* renamed from: b */
    public void mo32b(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.f2345b.clear();
        }
        for (int i = 0; i < motionEvent.getPointerCount(); i++) {
            hd1 m1632c = this.f6693a.m1632c(motionEvent.getPointerId(i));
            wc1 wc1Var = m1632c.m1625f().get(m1632c.m1625f().size() - 1);
            if (this.f2345b.get(m1632c) == null) {
                this.f2345b.put(m1632c, new C0308a(wc1Var));
            } else {
                this.f2345b.get(m1632c).m5347a(wc1Var);
            }
        }
    }

    @Override // p000.id1
    /* renamed from: c */
    public float mo398c(hd1 hd1Var) {
        return fd1.m1770a(this.f2345b.get(hd1Var).f2348c) * 2.0f;
    }
}
