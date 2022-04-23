package com.library.p518ad.strategy.request.admob;

import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.admob.AdMobVideoBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobVideoBaseRequest.class */
public class AdMobVideoBaseRequest extends AbstractC6508d<RewardedAd> {

    /* renamed from: t */
    public RewardedAd f33168t;

    /* renamed from: com.library.ad.strategy.request.admob.AdMobVideoBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobVideoBaseRequest$a.class */
    public class C8519a extends RewardedAdLoadCallback {
        public C8519a() {
        }

        @Override // com.google.android.gms.ads.rewarded.RewardedAdLoadCallback
        /* renamed from: a */
        public void mo5280a() {
            AdMobVideoBaseRequest.this.onAdLoaded();
        }

        @Override // com.google.android.gms.ads.rewarded.RewardedAdLoadCallback
        /* renamed from: a */
        public void mo5279a(int i) {
            AdMobVideoBaseRequest.this.onAdFailedToLoad(i);
            AdMobVideoBaseRequest.this.m5281a(i);
        }
    }

    public AdMobVideoBaseRequest(String str) {
        super("AM", str);
    }

    /* renamed from: a */
    public void m5281a(int i) {
        if (!this.f20267r) {
            C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 0 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20332b : C6552e.f20333c).toString()));
        }
    }

    public void onAdFailedToLoad(int i) {
        m20620a("network_failure", Integer.valueOf(i));
    }

    public void onAdLoaded() {
        RewardedAd rewardedAd = this.f33168t;
        if (rewardedAd == null || !rewardedAd.m17904a()) {
            m20620a("network_failure", "加载的回调成功,但是没有广告数据");
        } else {
            m20622a("network_success", (AbstractC6514f) m20618a(this.f33168t));
        }
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        this.f33168t = new RewardedAd(C6489a.m20718b(), getUnitId());
        PublisherAdRequest.Builder builder = new PublisherAdRequest.Builder();
        String[] strArr = this.f20251b;
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                builder.m18074a(str);
            }
        }
        this.f33168t.m17902a(builder.m18076a(), new C8519a());
        return true;
    }
}
