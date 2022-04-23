package com.library.p518ad.strategy.request.facebook;

import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdListener;
import p131c.p396i.p397a.C6489a;
/* renamed from: com.library.ad.strategy.request.facebook.FacebookNativeTemplateRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/facebook/FacebookNativeTemplateRequest.class */
public class FacebookNativeTemplateRequest extends FacebookNativeTemplateBaseRequest {
    public FacebookNativeTemplateRequest(String str) {
        super(str);
    }

    @Override // com.library.p518ad.strategy.request.facebook.FacebookNativeTemplateBaseRequest
    /* renamed from: a */
    public void mo5264a(NativeAdListener nativeAdListener) {
        NativeAd nativeAd = new NativeAd(C6489a.m20718b(), getUnitId());
        this.f33183u = nativeAd;
        nativeAd.setAdListener(nativeAdListener);
        this.f33183u.loadAd();
    }
}
