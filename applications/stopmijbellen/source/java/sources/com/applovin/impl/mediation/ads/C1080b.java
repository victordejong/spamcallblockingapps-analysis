package com.applovin.impl.mediation.ads;

import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.p038a.C1047d;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.C1549x;
import com.applovin.impl.sdk.C1550y;
/* renamed from: com.applovin.impl.mediation.ads.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/b.class */
public class C1080b implements C1550y.AbstractC1553a {

    /* renamed from: a */
    private final C1408l f3901a;

    /* renamed from: b */
    private final C1047d f3902b;

    /* renamed from: c */
    private final C1550y f3903c;

    /* renamed from: d */
    private final C1549x f3904d;

    /* renamed from: e */
    private final AbstractC1078a.AbstractC1079a f3905e;

    public C1080b(C1047d c1047d, AbstractC1078a.AbstractC1079a abstractC1079a, C1408l c1408l) {
        this.f3901a = c1408l;
        this.f3902b = c1047d;
        this.f3905e = abstractC1079a;
        this.f3904d = new C1549x(c1047d.m6666v(), c1408l);
        C1550y c1550y = new C1550y(c1047d.m6666v(), c1408l, this);
        this.f3903c = c1550y;
        c1550y.m4903a(c1047d);
        C1479t m5542A = c1408l.m5542A();
        m5542A.m5116b("MaxNativeAdView", "Created new MaxNativeAdView (" + this + ")");
    }

    /* renamed from: a */
    private void m6542a(long j) {
        this.f3901a.m5542A().m5116b("MaxNativeAdView", "Scheduling viewability impression for ad...");
        this.f3901a.m5539D().processViewabilityAdImpressionPostback(this.f3902b, j, this.f3905e);
    }

    /* renamed from: a */
    public void m6543a() {
        this.f3903c.m4906a();
        this.f3901a.m5539D().destroyAd(this.f3902b);
    }

    /* renamed from: b */
    public void m6541b() {
        if (this.f3902b.m6663y().compareAndSet(false, true)) {
            this.f3901a.m5542A().m5116b("MaxNativeAdView", "Scheduling impression for ad manually...");
            this.f3901a.m5539D().processRawAdImpressionPostback(this.f3902b, this.f3905e);
        }
    }

    @Override // com.applovin.impl.sdk.C1550y.AbstractC1553a
    public void onLogVisibilityImpression() {
        m6542a(this.f3904d.m4907a(this.f3902b));
    }
}
