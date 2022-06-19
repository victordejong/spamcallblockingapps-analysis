package com.applovin.impl.sdk.p052a;

import android.webkit.WebView;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
/* renamed from: com.applovin.impl.sdk.a.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/a/e.class */
public class C1260e extends AbstractC1250b {
    public C1260e(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        super(appLovinNativeAdImpl);
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: a */
    public AdSessionConfiguration mo6048a() {
        AdSessionConfiguration adSessionConfiguration;
        try {
            adSessionConfiguration = AdSessionConfiguration.createAdSessionConfiguration(CreativeType.NATIVE_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false);
        } catch (Throwable th) {
            this.f4505c.m5115b(this.f4506d, "Failed to create ad session configuration", th);
            adSessionConfiguration = null;
        }
        return adSessionConfiguration;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: a */
    public AdSessionContext mo6045a(WebView webView) {
        AdSessionContext adSessionContext;
        try {
            adSessionContext = AdSessionContext.createNativeAdSessionContext(this.f4504b.m5485aj().m6050d(), this.f4504b.m5485aj().m6049e(), this.f4503a.getOpenMeasurementVerificationScriptResources(), this.f4503a.getOpenMeasurementContentUrl(), this.f4503a.getOpenMeasurementCustomReferenceData());
        } catch (Throwable th) {
            this.f4505c.m5115b(this.f4506d, "Failed to create ad session context", th);
            adSessionContext = null;
        }
        return adSessionContext;
    }
}
