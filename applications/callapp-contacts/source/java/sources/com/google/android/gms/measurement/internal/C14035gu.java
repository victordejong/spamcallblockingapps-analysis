package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
/* renamed from: com.google.android.gms.measurement.internal.gu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gu.class */
public final class C14035gu implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    final /* synthetic */ C14036gv f51737a;

    public /* synthetic */ C14035gu(C14036gv c14036gv, RunnableC14022gh runnableC14022gh) {
        this.f51737a = c14036gv;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C13979es c13979es;
        try {
            try {
                this.f51737a.f51637t.mo11661c().f51403k.m12092a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    c13979es = this.f51737a.f51637t;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        this.f51737a.f51637t.m11988g();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z = true;
                        String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                        String queryParameter = data.getQueryParameter(Payload.RFR);
                        if (bundle != null) {
                            z = false;
                        }
                        this.f51737a.f51637t.mo11658d().m12011a(new RunnableC14034gt(this, z, data, str, queryParameter));
                        c13979es = this.f51737a.f51637t;
                    }
                    c13979es = this.f51737a.f51637t;
                }
            } catch (Exception e) {
                this.f51737a.f51637t.mo11661c().f51395c.m12091a("Throwable caught in onActivityCreated", e);
                c13979es = this.f51737a.f51637t;
            }
            c13979es.m11985l().m11829a(activity, bundle);
        } catch (Throwable th) {
            this.f51737a.f51637t.m11985l().m11829a(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f51737a.f51637t.m11985l().m11816c(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f51737a.f51637t.m11985l().m11818b(activity);
        C14094iz m11990e = this.f51737a.f51637t.m11990e();
        m11990e.f51637t.mo11658d().m12011a(new RunnableC14087is(m11990e, m11990e.f51637t.f51532j.mo19038b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C14094iz m11990e = this.f51737a.f51637t.m11990e();
        m11990e.f51637t.mo11658d().m12011a(new RunnableC14086ir(m11990e, m11990e.f51637t.f51532j.mo19038b()));
        this.f51737a.f51637t.m11985l().m11830a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f51737a.f51637t.m11985l().m11817b(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
