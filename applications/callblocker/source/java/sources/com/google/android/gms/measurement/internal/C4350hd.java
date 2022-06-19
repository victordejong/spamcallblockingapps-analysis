package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
@TargetApi(14)
/* renamed from: com.google.android.gms.measurement.internal.hd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hd.class */
public final class C4350hd implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final /* synthetic */ C4330gk f19054a;

    private C4350hd(C4330gk c4330gk) {
        this.f19054a = c4330gk;
    }

    public /* synthetic */ C4350hd(C4330gk c4330gk, RunnableC4331gl runnableC4331gl) {
        this(c4330gk);
    }

    /* renamed from: a */
    public final void m4377a(boolean z, Uri uri, String str, String str2) {
        Bundle bundle;
        Bundle bundle2 = null;
        this.f19054a.mo4037o();
        try {
            if (this.f19054a.mo4027x().m4804a(C4452t.f19448ai) || this.f19054a.mo4027x().m4804a(C4452t.f19450ak) || this.f19054a.mo4027x().m4804a(C4452t.f19449aj)) {
                C4424jw mo4032t = this.f19054a.mo4032t();
                if (TextUtils.isEmpty(str2)) {
                    bundle = null;
                } else if (str2.contains("gclid") || str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium")) {
                    String valueOf = String.valueOf(str2);
                    Bundle m4139a = mo4032t.m4139a(Uri.parse(valueOf.length() != 0 ? "https://google.com/search?".concat(valueOf) : new String("https://google.com/search?")));
                    bundle = m4139a;
                    if (m4139a != null) {
                        m4139a.putString("_cis", "referrer");
                        bundle = m4139a;
                    }
                } else {
                    mo4032t.mo4030v().m4658i().m4654a("Activity created with data 'referrer' without required params");
                    bundle = null;
                }
            } else {
                bundle = null;
            }
            if (z) {
                Bundle m4139a2 = this.f19054a.mo4032t().m4139a(uri);
                bundle2 = m4139a2;
                if (m4139a2 != null) {
                    m4139a2.putString("_cis", "intent");
                    if (this.f19054a.mo4027x().m4804a(C4452t.f19448ai) && !m4139a2.containsKey("gclid") && bundle != null && bundle.containsKey("gclid")) {
                        m4139a2.putString("_cer", String.format("gclid=%s", bundle.getString("gclid")));
                    }
                    this.f19054a.m4405a(str, "_cmp", m4139a2);
                    bundle2 = m4139a2;
                    if (this.f19054a.mo4027x().m4804a(C4452t.f19433aP)) {
                        this.f19054a.f18996b.m4072a(str, m4139a2);
                        bundle2 = m4139a2;
                    }
                }
            }
            if (this.f19054a.mo4027x().m4804a(C4452t.f19450ak) && !this.f19054a.mo4027x().m4804a(C4452t.f19449aj) && bundle != null && bundle.containsKey("gclid") && (bundle2 == null || !bundle2.containsKey("gclid"))) {
                this.f19054a.m4401a("auto", "_lgclid", (Object) bundle.getString("gclid"), true);
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f19054a.mo4030v().m4658i().m4653a("Activity created with referrer", str2);
            if (this.f19054a.mo4027x().m4804a(C4452t.f19449aj)) {
                if (bundle != null) {
                    this.f19054a.m4405a(str, "_cmp", bundle);
                    if (this.f19054a.mo4027x().m4804a(C4452t.f19433aP)) {
                        this.f19054a.f18996b.m4072a(str, bundle);
                    }
                } else {
                    this.f19054a.mo4030v().m4658i().m4653a("Referrer does not contain valid parameters", str2);
                }
                this.f19054a.m4401a("auto", "_ldl", (Object) null, true);
                return;
            }
            if (!(str2.contains("gclid") && (str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium") || str2.contains("utm_term") || str2.contains("utm_content")))) {
                this.f19054a.mo4030v().m4658i().m4654a("Activity created with data 'referrer' without required params");
            } else if (TextUtils.isEmpty(str2)) {
            } else {
                this.f19054a.m4401a("auto", "_ldl", (Object) str2, true);
            }
        } catch (Exception e) {
            this.f19054a.mo4030v().m4655x_().m4653a("Throwable caught in handleReferrerForOnActivityCreated", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            this.f19054a.mo4030v().m4657j().m4654a("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent == null) {
                return;
            }
            Uri data = intent.getData();
            if (data == null || !data.isHierarchical()) {
                return;
            }
            this.f19054a.mo4032t();
            this.f19054a.mo4031u().m4587a(new RunnableC4354hh(this, bundle == null, data, C4424jw.m4140a(intent) ? "gs" : "auto", data.getQueryParameter("referrer")));
        } catch (Exception e) {
            this.f19054a.mo4030v().m4655x_().m4653a("Throwable caught in onActivityCreated", e);
        } finally {
            this.f19054a.mo4278e().m4364a(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f19054a.mo4278e().m4349c(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f19054a.mo4278e().m4351b(activity);
        C4399iz mo4276g = this.f19054a.mo4276g();
        mo4276g.mo4031u().m4587a(new RunnableC4402jb(mo4276g, mo4276g.mo4035q().mo13861b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C4399iz mo4276g = this.f19054a.mo4276g();
        mo4276g.mo4031u().m4587a(new RunnableC4398iy(mo4276g, mo4276g.mo4035q().mo13861b()));
        this.f19054a.mo4278e().m4365a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f19054a.mo4278e().m4350b(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
