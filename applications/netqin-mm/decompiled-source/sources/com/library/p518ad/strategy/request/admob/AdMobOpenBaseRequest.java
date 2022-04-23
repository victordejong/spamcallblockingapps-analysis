package com.library.p518ad.strategy.request.admob;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import java.util.Date;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.admob.AdMobOpenBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobOpenBaseRequest.class */
public class AdMobOpenBaseRequest extends AbstractC6508d<AppOpenAd> {

    /* renamed from: t */
    public long f33161t = 0;

    /* renamed from: u */
    public AppOpenAd f33162u = null;

    /* renamed from: v */
    public AppOpenAd.AppOpenAdLoadCallback f33163v = new C8517a();

    /* renamed from: com.library.ad.strategy.request.admob.AdMobOpenBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobOpenBaseRequest$a.class */
    public class C8517a extends AppOpenAd.AppOpenAdLoadCallback {
        public C8517a() {
        }

        @Override // com.google.android.gms.ads.appopen.AppOpenAd.AppOpenAdLoadCallback
        /* renamed from: a */
        public void mo5286a(LoadAdError loadAdError) {
            String str = "onAppOpenAdFailedToLoad_" + loadAdError.toString();
            AdMobOpenBaseRequest.this.onAdFailedToLoad(loadAdError.toString());
            AdMobOpenBaseRequest.this.m5291a(-1);
        }

        @Override // com.google.android.gms.ads.appopen.AppOpenAd.AppOpenAdLoadCallback
        /* renamed from: a */
        public void mo5285a(AppOpenAd appOpenAd) {
            AdMobOpenBaseRequest.this.f33162u = appOpenAd;
            AdMobOpenBaseRequest.this.f33161t = new Date().getTime();
            AdMobOpenBaseRequest.this.onAdLoaded();
        }
    }

    public AdMobOpenBaseRequest(String str) {
        super("AM", str);
    }

    /* renamed from: a */
    public void m5291a(int i) {
        if (!this.f20267r) {
            C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 0 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20332b : C6552e.f20333c).toString()));
        }
    }

    /* renamed from: a */
    public final boolean m5290a(long j) {
        return new Date().getTime() - this.f33161t < j * 3600000;
    }

    /* renamed from: g */
    public final AdRequest m5287g() {
        AdRequest.Builder builder = new AdRequest.Builder();
        String[] strArr = this.f20251b;
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                builder.m18139b(str);
            }
        }
        builder.m18139b("testDeviceId");
        return builder.m18147a();
    }

    public boolean isAdAvailable() {
        return this.f33162u != null && m5290a(4L);
    }

    public void onAdFailedToLoad(String str) {
        m20620a("network_failure", str);
    }

    public void onAdLoaded() {
        if (isAdAvailable()) {
            m20622a("network_success", (AbstractC6514f) m20618a(this.f33162u));
        } else {
            m20620a("network_failure", "加载的回调成功,但是没有广告数据");
        }
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        AppOpenAd.m18082a(C6489a.m20718b(), getUnitId(), m5287g(), 1, this.f33163v);
        return true;
    }
}
