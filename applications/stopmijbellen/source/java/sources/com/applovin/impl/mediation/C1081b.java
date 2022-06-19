package com.applovin.impl.mediation;

import com.applovin.impl.mediation.C1042a;
import com.applovin.impl.mediation.C1102c;
import com.applovin.impl.mediation.p038a.C1046c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdListener;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.mediation.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b.class */
public class C1081b implements C1042a.AbstractC1043a, C1102c.AbstractC1104a {

    /* renamed from: a */
    private final C1042a f3906a;

    /* renamed from: b */
    private final C1102c f3907b;

    /* renamed from: c */
    private final MaxAdListener f3908c;

    public C1081b(C1408l c1408l, MaxAdListener maxAdListener) {
        this.f3908c = maxAdListener;
        this.f3906a = new C1042a(c1408l);
        this.f3907b = new C1102c(c1408l, this);
    }

    @Override // com.applovin.impl.mediation.C1042a.AbstractC1043a
    /* renamed from: a */
    public void mo6540a(final C1046c c1046c) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.b.1
            @Override // java.lang.Runnable
            public void run() {
                C1081b.this.f3908c.onAdHidden(c1046c);
            }
        }, c1046c.m6672x());
    }

    /* renamed from: a */
    public void m6538a(MaxAd maxAd) {
        this.f3907b.m6469a();
        this.f3906a.m6722a();
    }

    /* renamed from: b */
    public void m6537b(C1046c c1046c) {
        long m6674v = c1046c.m6674v();
        if (m6674v >= 0) {
            this.f3907b.m6468a(c1046c, m6674v);
        }
        if (c1046c.m6673w()) {
            this.f3906a.m6721a(c1046c, this);
        }
    }

    @Override // com.applovin.impl.mediation.C1102c.AbstractC1104a
    /* renamed from: c */
    public void mo6465c(C1046c c1046c) {
        this.f3908c.onAdHidden(c1046c);
    }
}
