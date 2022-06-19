package com.applovin.impl.sdk.p057e;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.C1281a;
import com.applovin.impl.sdk.p056d.C1326d;
import com.applovin.sdk.AppLovinAdLoadListener;
/* renamed from: com.applovin.impl.sdk.e.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/d.class */
public class C1340d extends AbstractC1337c {

    /* renamed from: c */
    private final C1281a f5131c;

    /* renamed from: d */
    private boolean f5132d;

    /* renamed from: e */
    private boolean f5133e;

    public C1340d(C1281a c1281a, C1408l c1408l, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheAppLovinAd", c1281a, c1408l, appLovinAdLoadListener);
        this.f5131c = c1281a;
    }

    /* renamed from: j */
    private void m5691j() {
        m5733a("Caching HTML resources...");
        this.f5131c.m6025a(m5704a(this.f5131c.m6023b(), this.f5131c.m5987F(), this.f5131c));
        this.f5131c.m5960a(true);
        if (this.f5113b.m5542A().m5122a()) {
            StringBuilder m8752j = C0082b.m8752j("Finish caching non-video resources for ad #");
            m8752j.append(this.f5131c.getAdIdNumber());
            m5733a(m8752j.toString());
            C1479t m5542A = this.f5113b.m5542A();
            String m5727e = m5727e();
            StringBuilder m8752j2 = C0082b.m8752j("Ad updated with cachedHTML = ");
            m8752j2.append(this.f5131c.m6023b());
            m5542A.m5119a(m5727e, m8752j2.toString());
        }
    }

    /* renamed from: k */
    private void m5690k() {
        Uri m5699e;
        if (!m5702b() && (m5699e = m5699e(this.f5131c.m6020h())) != null) {
            if (this.f5131c.m5952aH()) {
                this.f5131c.m6025a(this.f5131c.m6023b().replaceFirst(this.f5131c.m6022d(), m5699e.toString()));
                m5733a("Replaced video URL with cached video URI in HTML for web video ad");
            }
            this.f5131c.m6021f();
            this.f5131c.m6026a(m5699e);
        }
    }

    /* renamed from: a */
    public void m5693a(boolean z) {
        this.f5132d = z;
    }

    /* renamed from: b */
    public void m5692b(boolean z) {
        this.f5133e = z;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1337c, java.lang.Runnable
    public void run() {
        super.run();
        boolean mo5911e = this.f5131c.mo5911e();
        boolean z = this.f5133e;
        if (mo5911e || z) {
            StringBuilder m8752j = C0082b.m8752j("Begin caching for streaming ad #");
            m8752j.append(this.f5131c.getAdIdNumber());
            m8752j.append("...");
            m5733a(m8752j.toString());
            m5700c();
            if (mo5911e) {
                if (this.f5132d) {
                    mo5688i();
                }
                m5691j();
                if (!this.f5132d) {
                    mo5688i();
                }
                m5690k();
            } else {
                mo5688i();
                m5691j();
            }
        } else {
            StringBuilder m8752j2 = C0082b.m8752j("Begin processing for non-streaming ad #");
            m8752j2.append(this.f5131c.getAdIdNumber());
            m8752j2.append("...");
            m5733a(m8752j2.toString());
            m5700c();
            m5691j();
            m5690k();
            mo5688i();
        }
        long currentTimeMillis = System.currentTimeMillis();
        long createdAtMillis = this.f5131c.getCreatedAtMillis();
        C1326d.m5770a(this.f5131c, this.f5113b);
        C1326d.m5771a(currentTimeMillis - createdAtMillis, this.f5131c, this.f5113b);
        m5709a(this.f5131c);
        m5711a();
    }
}
