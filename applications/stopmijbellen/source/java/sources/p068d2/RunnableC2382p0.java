package p068d2;

import android.support.p012v4.media.C0082b;
import com.applovin.mediation.AppLovinUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
/* renamed from: d2.p0 */
/* loaded from: classes-dex2jar.jar:d2/p0.class */
public class RunnableC2382p0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f8424a;

    /* renamed from: b */
    public final /* synthetic */ String f8425b;

    /* renamed from: c */
    public final /* synthetic */ long f8426c;

    /* renamed from: d */
    public final /* synthetic */ C2329k0 f8427d;

    public RunnableC2382p0(C2329k0 c2329k0, String str, String str2, long j) {
        this.f8427d = c2329k0;
        this.f8424a = str;
        this.f8425b = str2;
        this.f8426c = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8427d.f8328a.remove(this.f8424a);
        AbstractC2328k remove = this.f8427d.f8331d.remove(this.f8424a);
        if (remove != null) {
            remove.mo1956f(C2168b.m3797a(this.f8425b));
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, this.f8424a);
            C2227e4.m3744i(c2267f4, AppLovinUtils.ServerParameterKeys.ZONE_ID, this.f8425b);
            C2227e4.m3740m(c2267f4, "type", 1);
            C2227e4.m3740m(c2267f4, "request_fail_reason", 26);
            new C2410t0("AdSession.on_request_failure", 1, c2267f4).m3586b();
            StringBuilder sb = new StringBuilder();
            sb.append("RequestNotFilled called due to a native timeout. ");
            StringBuilder m8752j = C0082b.m8752j("Timeout set to: ");
            m8752j.append(C2408t.m3591d().f8082T);
            m8752j.append(" ms. ");
            sb.append(m8752j.toString());
            sb.append("AdView request time allowed: " + this.f8426c + " ms. ");
            sb.append("AdView with adSessionId(" + this.f8424a + ") - request failed.");
            C0082b.m8750l(0, 0, sb.toString(), true);
        }
    }
}
