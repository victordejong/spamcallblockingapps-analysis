package com.applovin.impl.sdk;

import com.applovin.impl.mediation.p038a.AbstractC1044a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.u */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/u.class */
public class C1481u {

    /* renamed from: a */
    private final C1408l f5573a;

    /* renamed from: b */
    private final C1479t f5574b;

    /* renamed from: c */
    private final Map<String, AbstractC1044a> f5575c = new HashMap(4);

    /* renamed from: d */
    private final Object f5576d = new Object();

    public C1481u(C1408l c1408l) {
        this.f5573a = c1408l;
        this.f5574b = c1408l.m5542A();
    }

    /* renamed from: a */
    public String m5104a(String str) {
        String m6653O;
        synchronized (this.f5576d) {
            AbstractC1044a abstractC1044a = this.f5575c.get(str);
            m6653O = abstractC1044a != null ? abstractC1044a.m6653O() : null;
        }
        return m6653O;
    }

    /* renamed from: a */
    public void m5105a(AbstractC1044a abstractC1044a) {
        synchronized (this.f5576d) {
            C1479t c1479t = this.f5574b;
            c1479t.m5116b("MediationWaterfallWinnerTracker", "Tracking winning ad: " + abstractC1044a);
            this.f5575c.put(abstractC1044a.getAdUnitId(), abstractC1044a);
        }
    }

    /* renamed from: b */
    public void m5103b(AbstractC1044a abstractC1044a) {
        synchronized (this.f5576d) {
            String adUnitId = abstractC1044a.getAdUnitId();
            AbstractC1044a abstractC1044a2 = this.f5575c.get(adUnitId);
            if (abstractC1044a == abstractC1044a2) {
                C1479t c1479t = this.f5574b;
                c1479t.m5116b("MediationWaterfallWinnerTracker", "Clearing previous winning ad: " + abstractC1044a2);
                this.f5575c.remove(adUnitId);
            } else {
                C1479t c1479t2 = this.f5574b;
                c1479t2.m5116b("MediationWaterfallWinnerTracker", "Previous winner not cleared for ad: " + abstractC1044a + " , since it could have already been updated with a new ad: " + abstractC1044a2);
            }
        }
    }
}
