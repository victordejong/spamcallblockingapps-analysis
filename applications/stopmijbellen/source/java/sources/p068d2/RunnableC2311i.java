package p068d2;

import android.content.Context;
import com.adcolony.sdk.AdColonyAdViewActivity;
import com.google.ads.mediation.facebook.FacebookAdapter;
import p068d2.C2319j;
/* renamed from: d2.i */
/* loaded from: classes-dex2jar.jar:d2/i.class */
public class RunnableC2311i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2319j f8254a;

    public RunnableC2311i(C2319j c2319j) {
        this.f8254a = c2319j;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context = C2408t.f8531a;
        if (context instanceof AdColonyAdViewActivity) {
            ((AdColonyAdViewActivity) context).m7241f();
        }
        C2329k0 m3722l = C2408t.m3591d().m3722l();
        String str = this.f8254a.f8272d;
        synchronized (m3722l.f8334g) {
            m3722l.f8333f.remove(str);
        }
        m3722l.m3635d(this.f8254a.f8269a);
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, this.f8254a.f8272d);
        new C2410t0("AdSession.on_ad_view_destroyed", 1, c2267f4).m3586b();
        C2319j.AbstractC2321b abstractC2321b = this.f8254a.f8289u;
        if (abstractC2321b != null) {
            C2230f1 c2230f1 = ((C2359l1) abstractC2321b).f8371a;
            int i = c2230f1.f8085W - 1;
            c2230f1.f8085W = i;
            if (i != 0) {
                return;
            }
            c2230f1.m3730d();
        }
    }
}
