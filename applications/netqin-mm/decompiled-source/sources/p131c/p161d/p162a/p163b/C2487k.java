package p131c.p161d.p162a.p163b;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* renamed from: c.d.a.b.k */
/* loaded from: classes-dex2jar.jar:c/d/a/b/k.class */
public final class C2487k implements RewardedVideoAdListener {

    /* renamed from: a */
    public final /* synthetic */ AbstractAdViewAdapter f9472a;

    public C2487k(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f9472a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    /* renamed from: H */
    public final void mo17912H() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f9472a.zzmn;
        mediationRewardedVideoAdListener.mo16323c(this.f9472a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    /* renamed from: a */
    public final void mo17911a(RewardItem rewardItem) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f9472a.zzmn;
        mediationRewardedVideoAdListener.mo16326a(this.f9472a, rewardItem);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    /* renamed from: c */
    public final void mo17910c(int i) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f9472a.zzmn;
        mediationRewardedVideoAdListener.mo16327a(this.f9472a, i);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    /* renamed from: g0 */
    public final void mo17909g0() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f9472a.zzmn;
        mediationRewardedVideoAdListener.mo16321e(this.f9472a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    /* renamed from: n0 */
    public final void mo17908n0() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f9472a.zzmn;
        mediationRewardedVideoAdListener.mo16319g(this.f9472a);
        this.f9472a.zzmm = null;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    /* renamed from: o0 */
    public final void mo17907o0() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f9472a.zzmn;
        mediationRewardedVideoAdListener.mo16325b(this.f9472a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f9472a.zzmn;
        mediationRewardedVideoAdListener.mo16328a(this.f9472a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    /* renamed from: q0 */
    public final void mo17906q0() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f9472a.zzmn;
        mediationRewardedVideoAdListener.mo16322d(this.f9472a);
    }
}
