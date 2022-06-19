package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p057e.AbstractC1347h;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.utils.C1493h;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.nativeAd.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/c.class */
public class C1436c extends AbstractC1347h {

    /* renamed from: c */
    private final AppLovinNativeAdLoadListener f5390c;

    public C1436c(C1285d c1285d, String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, C1408l c1408l) {
        super(c1285d, null, str, c1408l);
        this.f5390c = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: a */
    public AbstractRunnableC1331a mo5368a(JSONObject jSONObject) {
        return new C1437d(jSONObject, this.f5390c, this.f5113b);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: a */
    public void mo5369a(int i) {
        super.mo5369a(i);
        this.f5390c.onNativeAdLoadFailed(i);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: b */
    public String mo5367b() {
        return C1493h.m5045i(this.f5113b);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: c */
    public String mo5366c() {
        return C1493h.m5044j(this.f5113b);
    }
}
