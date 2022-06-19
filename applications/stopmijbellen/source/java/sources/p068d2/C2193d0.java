package p068d2;

import android.view.View;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.Objects;
/* renamed from: d2.d0 */
/* loaded from: classes-dex2jar.jar:d2/d0.class */
public class C2193d0 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2322j0 f8003a;

    public C2193d0(C2322j0 c2322j0) {
        this.f8003a = c2322j0;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8003a.m3639b(c2410t0)) {
            C2322j0 c2322j0 = this.f8003a;
            Objects.requireNonNull(c2322j0);
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, FacebookAdapter.KEY_ID);
            View remove = c2322j0.f8297g.remove(Integer.valueOf(m3735r));
            C2183b3 remove2 = c2322j0.f8296f.remove(Integer.valueOf(m3735r)).booleanValue() ? c2322j0.f8294d.remove(Integer.valueOf(m3735r)) : c2322j0.f8292b.remove(Integer.valueOf(m3735r));
            if (remove != null && remove2 != null) {
                c2322j0.removeView(remove2);
                return;
            }
            C2329k0 m3722l = C2408t.m3591d().m3722l();
            String str = c2410t0.f8536a;
            m3722l.m3634e(str, "" + m3735r);
        }
    }
}
