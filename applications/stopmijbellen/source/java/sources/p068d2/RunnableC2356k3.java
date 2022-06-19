package p068d2;

import android.support.p012v4.media.C0082b;
import com.applovin.mediation.AppLovinUtils;
import java.util.Iterator;
import p068d2.C2315i3;
import p068d2.C2325j3;
/* renamed from: d2.k3 */
/* loaded from: classes-dex2jar.jar:d2/k3.class */
public class RunnableC2356k3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2315i3.C2318c f8365a;

    /* renamed from: b */
    public final /* synthetic */ C2325j3 f8366b;

    public RunnableC2356k3(C2325j3 c2325j3, C2315i3.C2318c c2318c) {
        this.f8366b = c2325j3;
        this.f8365a = c2318c;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2410t0 c2410t0;
        this.f8366b.f8321c = null;
        if (!C2408t.m3589f()) {
            return;
        }
        C2230f1 m3591d = C2408t.m3591d();
        if (!this.f8365a.m3643a() || !m3591d.f8066D) {
            C2315i3.m3660k(this.f8366b.f8320b, m3591d.f8083U);
            return;
        }
        C2329k0 c2329k0 = m3591d.f8089d;
        Iterator<C2387q> it2 = c2329k0.f8330c.values().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            C2387q next = it2.next();
            if (next != null) {
                if (next.f8447l == 5) {
                    C2402s c2402s = C2408t.m3591d().f8106u.get(next.f8444i);
                    if (c2402s == null || !c2402s.f8519g) {
                        c2410t0 = null;
                    } else {
                        C2267f4 c2267f4 = new C2267f4();
                        C2227e4.m3740m(c2267f4, "reward_amount", c2402s.m3604a(c2402s.f8517e));
                        C2227e4.m3744i(c2267f4, "reward_name", c2402s.m3603b(c2402s.f8514b));
                        C2227e4.m3739n(c2267f4, "success", true);
                        C2227e4.m3744i(c2267f4, AppLovinUtils.ServerParameterKeys.ZONE_ID, next.f8444i);
                        c2410t0 = new C2410t0("AdColony.v4vc_reward", 0, c2267f4);
                    }
                    C2315i3.m3652s(new RunnableC2373o0(c2329k0, next.f8442g, c2410t0));
                }
            }
        }
        m3591d.m3730d();
        StringBuilder sb = new StringBuilder();
        sb.append("Controller heartbeat timeout occurred. ");
        StringBuilder m8752j = C0082b.m8752j("Timeout set to: ");
        m8752j.append(this.f8365a.f8267a);
        m8752j.append(" ms. ");
        sb.append(m8752j.toString());
        sb.append("Interval set to: " + m3591d.f8083U + " ms. ");
        sb.append("Heartbeat last reply: ");
        C2325j3.C2327b c2327b = this.f8366b.f8322d;
        if (c2327b != null) {
            sb.append(c2327b.toString());
        } else {
            sb.append("null");
        }
        C0082b.m8750l(0, 0, sb.toString(), true);
        C2325j3 c2325j3 = this.f8366b;
        c2325j3.f8319a = true;
        C2315i3.m3649v(c2325j3.f8320b);
        C2315i3.m3649v(c2325j3.f8321c);
        c2325j3.f8321c = null;
    }
}
