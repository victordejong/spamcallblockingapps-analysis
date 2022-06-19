package p068d2;

import android.view.View;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.Objects;
/* renamed from: d2.z */
/* loaded from: classes-dex2jar.jar:d2/z.class */
public class C2462z implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2322j0 f8693a;

    public C2462z(C2322j0 c2322j0) {
        this.f8693a = c2322j0;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (this.f8693a.m3639b(c2410t0)) {
            C2322j0 c2322j0 = this.f8693a;
            Objects.requireNonNull(c2322j0);
            int m3735r = C2227e4.m3735r(c2410t0.f8537b, FacebookAdapter.KEY_ID);
            View remove = c2322j0.f8297g.remove(Integer.valueOf(m3735r));
            TextureView$SurfaceTextureListenerC2399r3 remove2 = c2322j0.f8291a.remove(Integer.valueOf(m3735r));
            boolean z = false;
            if (remove == null || remove2 == null) {
                C2408t.m3591d().m3722l().m3634e(c2410t0.f8536a, "" + m3735r);
                return;
            }
            if (remove2.f8481K != null) {
                z = true;
            }
            if (z) {
                remove2.m3606e();
            }
            if (remove2.f8477G != null) {
                remove2.f8508x = true;
            }
            remove2.f8483M.shutdown();
            c2322j0.removeView(remove2);
        }
    }
}
