package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.C1283c;
import com.applovin.impl.sdk.p053ad.C1285d;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.nativeAd.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/b.class */
public class C1435b extends C1436c {

    /* renamed from: c */
    private final C1283c f5389c;

    public C1435b(C1283c c1283c, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, C1408l c1408l) {
        super(C1285d.m6006a("adtoken_zone"), "TaskFetchNativeTokenAd", appLovinNativeAdLoadListener, c1408l);
        this.f5389c = c1283c;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: a */
    public Map<String, String> mo5370a() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("adtoken", this.f5389c.m6014a());
        hashMap.put("adtoken_prefix", this.f5389c.m6011c());
        return hashMap;
    }
}
