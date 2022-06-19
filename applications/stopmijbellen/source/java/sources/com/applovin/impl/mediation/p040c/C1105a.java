package com.applovin.impl.mediation.p040c;

import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
/* renamed from: com.applovin.impl.mediation.c.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/c/a.class */
public class C1105a implements AbstractC1078a.AbstractC1079a, MaxAdListener, MaxAdRevenueListener, MaxAdViewAdListener, MaxRewardedAdListener {

    /* renamed from: a */
    private final AbstractC1078a.AbstractC1079a f3974a;

    public C1105a(AbstractC1078a.AbstractC1079a abstractC1079a) {
        this.f3974a = abstractC1079a;
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(MaxAd maxAd) {
        C1496j.m5000d(this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(MaxAd maxAd) {
        C1496j.m4992h(this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        C1496j.m5032a(this.f3974a, maxAd, maxError);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(MaxAd maxAd) {
        C1496j.m5009b(this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(MaxAd maxAd) {
        C1496j.m4994g(this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(MaxAd maxAd) {
        C1496j.m5003c(this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(String str, MaxError maxError) {
        C1496j.m5027a(this.f3974a, str, maxError);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(MaxAd maxAd) {
        C1496j.m5033a((MaxAdListener) this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        C1496j.m5025a((MaxAdRevenueListener) this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoCompleted(MaxAd maxAd) {
        C1496j.m4996f(this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoStarted(MaxAd maxAd) {
        C1496j.m4998e(this.f3974a, maxAd);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
        C1496j.m5030a(this.f3974a, maxAd, maxReward);
    }
}
