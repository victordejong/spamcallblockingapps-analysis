package com.moat.analytics.mobile.mpub;

import android.app.Application;
import android.content.Context;
import com.moat.analytics.mobile.mpub.C8624g;
import com.moat.analytics.mobile.mpub.C8667w;
import java.lang.ref.WeakReference;
/* renamed from: com.moat.analytics.mobile.mpub.k */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/k.class */
public class C8641k extends MoatAnalytics implements C8667w.AbstractC8673b {

    /* renamed from: d */
    public C8624g f33521d;

    /* renamed from: e */
    public WeakReference<Context> f33522e;

    /* renamed from: g */
    public String f33524g;

    /* renamed from: h */
    public MoatOptions f33525h;

    /* renamed from: a */
    public boolean f33518a = false;

    /* renamed from: b */
    public boolean f33519b = false;

    /* renamed from: c */
    public boolean f33520c = false;

    /* renamed from: f */
    public boolean f33523f = false;

    /* renamed from: a */
    private void m4892a(MoatOptions moatOptions, Application application) {
        if (this.f33523f) {
            C8652p.m4848a(3, "Analytics", this, "Moat SDK has already been started.");
            return;
        }
        this.f33525h = moatOptions;
        C8667w.m4813a().m4808b();
        this.f33520c = moatOptions.disableLocationServices;
        if (application != null) {
            if (moatOptions.loggingEnabled && C8655s.m4834b(application.getApplicationContext())) {
                this.f33518a = true;
            }
            this.f33522e = new WeakReference<>(application.getApplicationContext());
            this.f33523f = true;
            this.f33519b = moatOptions.autoTrackGMAInterstitials;
            C8612a.m4994a(application);
            C8667w.m4813a().m4811a(this);
            if (!moatOptions.disableAdIdCollection) {
                C8655s.m4837a(application);
            }
            C8652p.m4843a("[SUCCESS] ", "Moat Analytics SDK Version 2.4.5 started");
            return;
        }
        throw new C8643m("Moat Analytics SDK didn't start, application was null");
    }

    /* renamed from: e */
    private void m4890e() {
        if (this.f33521d == null) {
            C8624g gVar = new C8624g(C8612a.m4997a(), C8624g.EnumC8629a.DISPLAY);
            this.f33521d = gVar;
            gVar.m4949a(this.f33524g);
            C8652p.m4848a(3, "Analytics", this, "Preparing native display tracking with partner code " + this.f33524g);
            C8652p.m4843a("[SUCCESS] ", "Prepared for native display tracking with partner code " + this.f33524g);
        }
    }

    /* renamed from: a */
    public boolean m4893a() {
        return this.f33523f;
    }

    /* renamed from: b */
    public boolean m4891b() {
        MoatOptions moatOptions = this.f33525h;
        return moatOptions != null && moatOptions.disableLocationServices;
    }

    @Override // com.moat.analytics.mobile.mpub.C8667w.AbstractC8673b
    /* renamed from: c */
    public void mo4786c() {
        C8643m.m4880a();
        C8649o.m4870a();
        if (this.f33524g != null) {
            try {
                m4890e();
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }
    }

    @Override // com.moat.analytics.mobile.mpub.C8667w.AbstractC8673b
    /* renamed from: d */
    public void mo4785d() {
    }

    @Override // com.moat.analytics.mobile.mpub.MoatAnalytics
    public void prepareNativeDisplayTracking(String str) {
        this.f33524g = str;
        if (C8667w.m4813a().f33573a != C8667w.EnumC8675d.OFF) {
            try {
                m4890e();
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }
    }

    @Override // com.moat.analytics.mobile.mpub.MoatAnalytics
    public void start(Application application) {
        start(new MoatOptions(), application);
    }

    @Override // com.moat.analytics.mobile.mpub.MoatAnalytics
    public void start(MoatOptions moatOptions, Application application) {
        try {
            m4892a(moatOptions, application);
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }
}
