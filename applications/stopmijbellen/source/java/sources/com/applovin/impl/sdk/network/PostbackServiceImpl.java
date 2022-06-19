package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p057e.C1344g;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinPostbackService;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/PostbackServiceImpl.class */
public class PostbackServiceImpl implements AppLovinPostbackService {

    /* renamed from: a */
    private final C1408l f5414a;

    public PostbackServiceImpl(C1408l c1408l) {
        this.f5414a = c1408l;
    }

    @Override // com.applovin.sdk.AppLovinPostbackService
    public void dispatchPostbackAsync(String str, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(C1467i.m5200b(this.f5414a).mo5192a(str).mo5179c(false).mo5196a(), appLovinPostbackListener);
    }

    public void dispatchPostbackRequest(C1467i c1467i, C1362o.EnumC1364a enumC1364a, AppLovinPostbackListener appLovinPostbackListener) {
        this.f5414a.m5525R().m5653a(new C1344g(c1467i, enumC1364a, this.f5414a, appLovinPostbackListener), enumC1364a);
    }

    public void dispatchPostbackRequest(C1467i c1467i, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(c1467i, C1362o.EnumC1364a.POSTBACKS, appLovinPostbackListener);
    }

    public String toString() {
        return "PostbackService{}";
    }
}
