package p086f;

import android.view.View;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: f.p */
/* loaded from: classes-dex2jar.jar:f/p.class */
public class RunnableC2671p implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LayoutInflater$Factory2C2654m f9185a;

    /* renamed from: f.p$a */
    /* loaded from: classes-dex2jar.jar:f/p$a.class */
    public class C2672a extends C3260w0 {
        public C2672a() {
            RunnableC2671p.this = r4;
        }

        @Override // p163m0.AbstractC3614z
        /* renamed from: c */
        public void mo1976c(View view) {
            RunnableC2671p.this.f9185a.f9138o.setAlpha(1.0f);
            RunnableC2671p.this.f9185a.f9141r.m1981d(null);
            RunnableC2671p.this.f9185a.f9141r = null;
        }

        @Override // p134j4.C3260w0, p163m0.AbstractC3614z
        /* renamed from: d */
        public void mo1975d(View view) {
            RunnableC2671p.this.f9185a.f9138o.setVisibility(0);
        }
    }

    public RunnableC2671p(LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m) {
        this.f9185a = layoutInflater$Factory2C2654m;
    }

    @Override // java.lang.Runnable
    public void run() {
        LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = this.f9185a;
        layoutInflater$Factory2C2654m.f9139p.showAtLocation(layoutInflater$Factory2C2654m.f9138o, 55, 0, 0);
        this.f9185a.m3352K();
        if (!this.f9185a.m3338Y()) {
            this.f9185a.f9138o.setAlpha(1.0f);
            this.f9185a.f9138o.setVisibility(0);
            return;
        }
        this.f9185a.f9138o.setAlpha(0.0f);
        LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m2 = this.f9185a;
        C3611y m2122b = C3589v.m2122b(layoutInflater$Factory2C2654m2.f9138o);
        m2122b.m1984a(1.0f);
        layoutInflater$Factory2C2654m2.f9141r = m2122b;
        C3611y c3611y = this.f9185a.f9141r;
        C2672a c2672a = new C2672a();
        View view = c3611y.f11802a.get();
        if (view == null) {
            return;
        }
        c3611y.m1980e(view, c2672a);
    }
}
