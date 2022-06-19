package p068d2;

import android.view.View;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.Objects;
/* renamed from: d2.b0 */
/* loaded from: classes-dex2jar.jar:d2/b0.class */
public class C2176b0 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2322j0 f7944a;

    /* renamed from: d2.b0$a */
    /* loaded from: classes-dex2jar.jar:d2/b0$a.class */
    public class RunnableC2177a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2410t0 f7945a;

        public RunnableC2177a(C2410t0 c2410t0) {
            C2176b0.this = r4;
            this.f7945a = c2410t0;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2322j0 c2322j0 = C2176b0.this.f7944a;
            C2410t0 c2410t0 = this.f7945a;
            Objects.requireNonNull(c2322j0);
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, FacebookAdapter.KEY_ID);
            C2230f1 m3591d = C2408t.m3591d();
            View remove = c2322j0.f8297g.remove(Integer.valueOf(m3735r));
            C2441x3 remove2 = c2322j0.f8293c.remove(Integer.valueOf(m3735r));
            if (remove2 != null && remove != null) {
                m3591d.m3717q().m3579a(remove2.f8664u);
                c2322j0.removeView(remove2);
                return;
            }
            C2329k0 m3722l = m3591d.m3722l();
            String str = c2410t0.f8536a;
            m3722l.m3634e(str, "" + m3735r);
        }
    }

    public C2176b0(C2322j0 c2322j0) {
        this.f7944a = c2322j0;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f7944a.m3639b(c2410t0)) {
            C2315i3.m3652s(new RunnableC2177a(c2410t0));
        }
    }
}
