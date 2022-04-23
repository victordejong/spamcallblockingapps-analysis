package com.library.p518ad.strategy.request.facebook;

import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import java.util.Arrays;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.facebook.FacebookBannerBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/facebook/FacebookBannerBaseRequest.class */
public class FacebookBannerBaseRequest extends AbstractC6508d implements AdListener {

    /* renamed from: t */
    public AdSize f33176t = AdSize.BANNER_HEIGHT_50;

    /* renamed from: u */
    public AdView f33177u;

    public FacebookBannerBaseRequest(String str) {
        super("FB", str);
    }

    /* renamed from: a */
    public void m5275a(AdError adError) {
        if (!this.f20267r) {
            int errorCode = adError.getErrorCode();
            C6549b.m20532a(new C6550c(getAdInfo(), 203, (errorCode != 1000 ? errorCode != 1001 ? errorCode != 2001 ? C6552e.f20335e : C6552e.f20333c : C6552e.f20334d : C6552e.f20332b).toString()));
        }
    }

    public AdSize getAdSize() {
        return this.f33176t;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC7079Ad ad) {
        getInnerAdEventListener().mo3232a(getAdInfo(), 0);
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC7079Ad ad) {
        m20622a("network_success", m20618a(this.f33177u));
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC7079Ad ad, AdError adError) {
        adError.getErrorMessage();
        m20620a("network_failure", adError.getErrorMessage());
        m5275a(adError);
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC7079Ad ad) {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        String[] strArr = this.f20251b;
        if (strArr != null && strArr.length > 0) {
            AdSettings.addTestDevices(Arrays.asList(strArr));
        }
        AdView adView = new AdView(C6489a.m20718b(), getUnitId(), getAdSize());
        this.f33177u = adView;
        adView.setAdListener(this);
        this.f33177u.loadAd();
        return true;
    }

    public void setAdSize(AdSize adSize) {
        this.f33176t = adSize;
    }
}
