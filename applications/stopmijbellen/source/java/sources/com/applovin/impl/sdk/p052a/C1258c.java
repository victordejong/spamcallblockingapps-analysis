package com.applovin.impl.sdk.p052a;

import android.webkit.WebView;
import com.applovin.impl.sdk.p053ad.C1281a;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
/* renamed from: com.applovin.impl.sdk.a.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/a/c.class */
public class C1258c extends AbstractC1250b {
    public C1258c(C1281a c1281a) {
        super(c1281a);
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1250b
    /* renamed from: a */
    public AdSessionConfiguration mo6048a() {
        AdSessionConfiguration adSessionConfiguration;
        try {
            adSessionConfiguration = AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.LOADED, Owner.NATIVE, Owner.NONE, false);
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
            adSessionContext = AdSessionContext.createHtmlAdSessionContext(this.f4504b.m5485aj().m6050d(), webView, this.f4503a.getOpenMeasurementContentUrl(), this.f4503a.getOpenMeasurementCustomReferenceData());
        } catch (Throwable th) {
            this.f4505c.m5115b(this.f4506d, "Failed to create ad session context", th);
            adSessionContext = null;
        }
        return adSessionContext;
    }
}
