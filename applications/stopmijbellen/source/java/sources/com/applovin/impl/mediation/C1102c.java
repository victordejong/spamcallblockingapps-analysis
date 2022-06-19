package com.applovin.impl.mediation;

import com.applovin.impl.mediation.p038a.C1046c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.C1489e;
/* renamed from: com.applovin.impl.mediation.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/c.class */
public class C1102c {

    /* renamed from: a */
    private final C1408l f3968a;

    /* renamed from: b */
    private final C1479t f3969b;

    /* renamed from: c */
    private final AbstractC1104a f3970c;

    /* renamed from: d */
    private C1489e f3971d;

    /* renamed from: com.applovin.impl.mediation.c$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/c$a.class */
    public interface AbstractC1104a {
        /* renamed from: c */
        void mo6465c(C1046c c1046c);
    }

    public C1102c(C1408l c1408l, AbstractC1104a abstractC1104a) {
        this.f3968a = c1408l;
        this.f3969b = c1408l.m5542A();
        this.f3970c = abstractC1104a;
    }

    /* renamed from: a */
    public void m6469a() {
        this.f3969b.m5116b("AdHiddenCallbackTimeoutManager", "Cancelling timeout");
        C1489e c1489e = this.f3971d;
        if (c1489e != null) {
            c1489e.m5080a();
            this.f3971d = null;
        }
    }

    /* renamed from: a */
    public void m6468a(final C1046c c1046c, long j) {
        C1479t c1479t = this.f3969b;
        c1479t.m5116b("AdHiddenCallbackTimeoutManager", "Scheduling in " + j + "ms...");
        this.f3971d = C1489e.m5079a(j, this.f3968a, new Runnable() { // from class: com.applovin.impl.mediation.c.1
            @Override // java.lang.Runnable
            public void run() {
                C1102c.this.f3969b.m5116b("AdHiddenCallbackTimeoutManager", "Timing out...");
                C1102c.this.f3970c.mo6465c(c1046c);
            }
        });
    }
}
