package p068d2;

import com.applovin.mediation.AppLovinUtils;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import java.util.Objects;
import p152l0.C3428c;
import p165m2.C3636c;
import p165m2.C3638e;
/* renamed from: d2.m1 */
/* loaded from: classes-dex2jar.jar:d2/m1.class */
public class RunnableC2364m1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2410t0 f8381a;

    /* renamed from: b */
    public final /* synthetic */ C2230f1 f8382b;

    public RunnableC2364m1(C2230f1 c2230f1, C2410t0 c2410t0) {
        this.f8382b = c2230f1;
        this.f8381a = c2410t0;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        AbstractC2394r abstractC2394r = this.f8382b.f8101p;
        C2267f4 c2267f4 = this.f8381a.f8537b;
        int m3735r = C2227e4.m3735r(c2267f4, "reward_amount");
        String m3697o = c2267f4.m3697o("reward_name");
        boolean m3741l = C2227e4.m3741l(c2267f4, "success");
        String m3697o2 = c2267f4.m3697o(AppLovinUtils.ServerParameterKeys.ZONE_ID);
        C3636c c3636c = (C3636c) abstractC2394r;
        Objects.requireNonNull(c3636c);
        C3638e m1949N = c3636c.m1949N(m3697o2);
        if (m1949N == null || (mediationRewardedAdCallback = m1949N.f11913a) == null) {
            return;
        }
        mediationRewardedAdCallback.onVideoComplete();
        if (!m3741l) {
            return;
        }
        m1949N.f11913a.onUserEarnedReward(new C3428c(m3697o, m3735r));
    }
}
