package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.C1283c;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.e.l */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/l.class */
public class C1355l extends C1354k {

    /* renamed from: c */
    private final C1283c f5153c;

    public C1355l(C1283c c1283c, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        super(C1285d.m6006a("adtoken_zone"), null, appLovinAdLoadListener, "TaskFetchTokenAd", c1408l);
        this.f5153c = c1283c;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: a */
    public Map<String, String> mo5370a() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("adtoken", this.f5153c.m6014a());
        hashMap.put("adtoken_prefix", this.f5153c.m6011c());
        return hashMap;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: h */
    public EnumC1282b mo5664h() {
        return EnumC1282b.REGULAR_AD_TOKEN;
    }
}
