package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.p038a.C1046c;
import com.applovin.impl.sdk.C1248a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.AbstractC1485a;
/* renamed from: com.applovin.impl.mediation.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a.class */
public class C1042a extends AbstractC1485a {

    /* renamed from: a */
    private final C1248a f3791a;

    /* renamed from: b */
    private final C1479t f3792b;

    /* renamed from: c */
    private AbstractC1043a f3793c;

    /* renamed from: d */
    private C1046c f3794d;

    /* renamed from: e */
    private int f3795e;

    /* renamed from: f */
    private boolean f3796f;

    /* renamed from: com.applovin.impl.mediation.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a$a.class */
    public interface AbstractC1043a {
        /* renamed from: a */
        void mo6540a(C1046c c1046c);
    }

    public C1042a(C1408l c1408l) {
        this.f3792b = c1408l.m5542A();
        this.f3791a = c1408l.m5491ad();
    }

    /* renamed from: a */
    public void m6722a() {
        this.f3792b.m5116b("AdActivityObserver", "Cancelling...");
        this.f3791a.m6065b(this);
        this.f3793c = null;
        this.f3794d = null;
        this.f3795e = 0;
        this.f3796f = false;
    }

    /* renamed from: a */
    public void m6721a(C1046c c1046c, AbstractC1043a abstractC1043a) {
        C1479t c1479t = this.f3792b;
        StringBuilder m8752j = C0082b.m8752j("Starting for ad ");
        m8752j.append(c1046c.getAdUnitId());
        m8752j.append("...");
        c1479t.m5116b("AdActivityObserver", m8752j.toString());
        m6722a();
        this.f3793c = abstractC1043a;
        this.f3794d = c1046c;
        this.f3791a.m6067a(this);
    }

    @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f3796f) {
            this.f3796f = true;
        }
        this.f3795e++;
        this.f3792b.m5116b("AdActivityObserver", "Created Activity: " + activity + ", counter is " + this.f3795e);
    }

    @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (!this.f3796f) {
            return;
        }
        this.f3795e--;
        this.f3792b.m5116b("AdActivityObserver", "Destroyed Activity: " + activity + ", counter is " + this.f3795e);
        if (this.f3795e > 0) {
            return;
        }
        this.f3792b.m5116b("AdActivityObserver", "Last ad Activity destroyed");
        if (this.f3793c != null) {
            this.f3792b.m5116b("AdActivityObserver", "Invoking callback...");
            this.f3793c.mo6540a(this.f3794d);
        }
        m6722a();
    }
}
