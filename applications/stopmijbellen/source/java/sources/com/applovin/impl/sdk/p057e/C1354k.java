package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1469j;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.k */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/k.class */
public class C1354k extends AbstractC1347h {

    /* renamed from: c */
    private final AppLovinAdLoadListener f5152c;

    public C1354k(C1285d c1285d, C1469j c1469j, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        this(c1285d, c1469j, appLovinAdLoadListener, "TaskFetchNextAd", c1408l);
    }

    public C1354k(C1285d c1285d, C1469j c1469j, AppLovinAdLoadListener appLovinAdLoadListener, String str, C1408l c1408l) {
        super(c1285d, c1469j, str, c1408l);
        this.f5152c = appLovinAdLoadListener;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: a */
    public AbstractRunnableC1331a mo5368a(JSONObject jSONObject) {
        return new C1367p(jSONObject, ((AbstractC1347h) this).f5142a, mo5664h(), this.f5152c, this.f5113b);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: a */
    public void mo5369a(int i) {
        super.mo5369a(i);
        this.f5152c.failedToReceiveAd(i);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: b */
    public String mo5367b() {
        return C1493h.m5047g(this.f5113b);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: c */
    public String mo5366c() {
        return C1493h.m5046h(this.f5113b);
    }
}
