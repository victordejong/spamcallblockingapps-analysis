package com.applovin.impl.sdk.p057e;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.p035a.C0883e;
import com.applovin.impl.p035a.C0891l;
import com.applovin.impl.p035a.EnumC0884f;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
/* renamed from: com.applovin.impl.sdk.e.x */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/x.class */
public class C1383x extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final C0883e f5223a;

    /* renamed from: c */
    private final AppLovinAdLoadListener f5224c;

    public C1383x(C0883e c0883e, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        super("TaskResolveVastWrapper", c1408l);
        this.f5224c = appLovinAdLoadListener;
        this.f5223a = c0883e;
    }

    /* renamed from: a */
    public void m5612a(int i) {
        m5728d("Failed to resolve VAST wrapper due to error code " + i);
        if (i != -1009) {
            C0891l.m7119a(this.f5223a, this.f5224c, i == -1001 ? EnumC0884f.TIMED_OUT : EnumC0884f.GENERAL_WRAPPER_ERROR, i, this.f5113b);
            return;
        }
        AppLovinAdLoadListener appLovinAdLoadListener = this.f5224c;
        if (appLovinAdLoadListener == null) {
            return;
        }
        appLovinAdLoadListener.failedToReceiveAd(i);
    }

    @Override // java.lang.Runnable
    public void run() {
        String m7121a = C0891l.m7121a(this.f5223a);
        if (StringUtils.isValidString(m7121a)) {
            StringBuilder m8752j = C0082b.m8752j("Resolving VAST ad with depth ");
            m8752j.append(this.f5223a.m7149a());
            m8752j.append(" at ");
            m8752j.append(m7121a);
            m5733a(m8752j.toString());
            try {
                this.f5113b.m5525R().m5654a(new AbstractC1378u<C1539q>(C1447c.m5327a(this.f5113b).mo5192a(m7121a).mo5185b("GET").mo5193a((C1447c.C1448a) C1539q.f5712a).mo5195a(((Integer) this.f5113b.m5511a(C1314b.f4961en)).intValue()).mo5188b(((Integer) this.f5113b.m5511a(C1314b.f4962eo)).intValue()).mo5179c(false).mo5196a(), this.f5113b) { // from class: com.applovin.impl.sdk.e.x.1
                    /* renamed from: a */
                    public void mo5331a(int i, String str, C1539q c1539q) {
                        m5728d("Unable to resolve VAST wrapper. Server returned " + i);
                        C1383x.this.m5612a(i);
                    }

                    /* renamed from: a */
                    public void mo5330a(C1539q c1539q, int i) {
                        this.f5113b.m5525R().m5654a(AbstractC1371r.m5632a(c1539q, C1383x.this.f5223a, C1383x.this.f5224c, C1383x.this.f5113b));
                    }
                });
                return;
            } catch (Throwable th) {
                m5732a("Unable to resolve VAST wrapper", th);
            }
        } else {
            m5728d("Resolving VAST failed. Could not find resolution URL");
        }
        m5612a(-1);
    }
}
