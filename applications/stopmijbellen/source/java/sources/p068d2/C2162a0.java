package p068d2;

import android.support.p012v4.media.C0082b;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.Objects;
import p008a7.EnumC0038e;
/* renamed from: d2.a0 */
/* loaded from: classes-dex2jar.jar:d2/a0.class */
public class C2162a0 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2322j0 f7912a;

    /* renamed from: d2.a0$a */
    /* loaded from: classes-dex2jar.jar:d2/a0$a.class */
    public class RunnableC2163a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2410t0 f7913a;

        public RunnableC2163a(C2410t0 c2410t0) {
            C2162a0.this = r4;
            this.f7913a = c2410t0;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2322j0 c2322j0 = C2162a0.this.f7912a;
            C2410t0 c2410t0 = this.f7913a;
            Objects.requireNonNull(c2322j0);
            C2267f4 c2267f4 = c2410t0.f8537b;
            int m3735r = C2227e4.m3735r(c2267f4, FacebookAdapter.KEY_ID);
            boolean m3741l = C2227e4.m3741l(c2267f4, "is_module");
            C2230f1 m3591d = C2408t.m3591d();
            C2441x3 c2441x3 = null;
            if (m3741l) {
                C2441x3 c2441x32 = m3591d.f8107v.get(Integer.valueOf(C2227e4.m3735r(c2267f4, "module_id")));
                if (c2441x32 == null) {
                    C0082b.m8750l(0, 0, "Module WebView created with invalid id", false);
                    c2322j0.m3640a(c2441x3, EnumC0038e.OTHER);
                }
                c2441x32.m3550j(c2410t0, m3735r, -1, c2322j0);
                c2441x32.m3534z();
                c2441x3 = c2441x32;
            } else {
                try {
                    c2441x3 = new C2441x3(c2322j0.f8315y, c2410t0, m3735r, m3591d.m3717q().m3573g(), c2322j0);
                } catch (RuntimeException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(e.toString() + ": during WebView initialization.");
                    sb.append(" Disabling AdColony.");
                    C2408t.m3591d().m3718p().m3686e(0, 0, sb.toString(), false);
                    C2168b.m3789i();
                }
            }
            c2322j0.f8293c.put(Integer.valueOf(m3735r), c2441x3);
            c2322j0.f8297g.put(Integer.valueOf(m3735r), c2441x3);
            C2267f4 c2267f42 = new C2267f4();
            C2227e4.m3740m(c2267f42, "module_id", c2441x3.f8664u);
            C2227e4.m3740m(c2267f42, "mraid_module_id", c2441x3.f8665v);
            c2410t0.m3587a(c2267f42).m3586b();
            c2322j0.m3640a(c2441x3, EnumC0038e.OTHER);
        }
    }

    public C2162a0(C2322j0 c2322j0) {
        this.f7912a = c2322j0;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f7912a.m3639b(c2410t0)) {
            C2315i3.m3652s(new RunnableC2163a(c2410t0));
        }
    }
}
