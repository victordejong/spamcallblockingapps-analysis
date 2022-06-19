package com.applovin.adview;

import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0523i;
import androidx.lifecycle.AbstractC0532q;
import com.applovin.impl.adview.C1013o;
import com.applovin.impl.adview.activity.p037b.AbstractC0914a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1314b;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinFullscreenAdViewObserver.class */
public class AppLovinFullscreenAdViewObserver implements AbstractC0523i {

    /* renamed from: a */
    private final C1408l f3248a;

    /* renamed from: b */
    private final AtomicBoolean f3249b = new AtomicBoolean(true);

    /* renamed from: c */
    private AbstractC0914a f3250c;

    /* renamed from: d */
    private C1013o f3251d;

    public AppLovinFullscreenAdViewObserver(AbstractC0516f abstractC0516f, C1013o c1013o, C1408l c1408l) {
        this.f3251d = c1013o;
        this.f3248a = c1408l;
        abstractC0516f.mo7992a(this);
    }

    @AbstractC0532q(AbstractC0516f.EnumC0518b.ON_DESTROY)
    public void onDestroy() {
        C1013o c1013o = this.f3251d;
        if (c1013o != null) {
            c1013o.m6803e();
            this.f3251d = null;
        }
        AbstractC0914a abstractC0914a = this.f3250c;
        if (abstractC0914a != null) {
            abstractC0914a.mo6958h();
            this.f3250c.mo6976j();
            this.f3250c = null;
        }
    }

    @AbstractC0532q(AbstractC0516f.EnumC0518b.ON_PAUSE)
    public void onPause() {
        AbstractC0914a abstractC0914a = this.f3250c;
        if (abstractC0914a != null) {
            abstractC0914a.mo7014g();
            this.f3250c.mo6959e();
        }
    }

    @AbstractC0532q(AbstractC0516f.EnumC0518b.ON_RESUME)
    public void onResume() {
        AbstractC0914a abstractC0914a;
        if (!this.f3249b.getAndSet(false) && (abstractC0914a = this.f3250c) != null) {
            abstractC0914a.mo7015f();
            this.f3250c.mo6969a((((Boolean) this.f3248a.m5511a(C1314b.f4940eM)).booleanValue() ? null : 250) == 1 ? 1L : 0L);
        }
    }

    @AbstractC0532q(AbstractC0516f.EnumC0518b.ON_STOP)
    public void onStop() {
        AbstractC0914a abstractC0914a = this.f3250c;
        if (abstractC0914a != null) {
            abstractC0914a.m7043i();
        }
    }

    public void setPresenter(AbstractC0914a abstractC0914a) {
        this.f3250c = abstractC0914a;
    }
}
