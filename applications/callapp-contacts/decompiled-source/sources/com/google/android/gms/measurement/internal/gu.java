package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gu.class */
public final class gu implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ gv f29727a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ gu(gv gvVar, gh ghVar) {
        this.f29727a = gvVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        es esVar;
        try {
            try {
                this.f29727a.t.c().k.a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    esVar = this.f29727a.t;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        this.f29727a.t.g();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z = true;
                        String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                        String queryParameter = data.getQueryParameter(Payload.RFR);
                        if (bundle != null) {
                            z = false;
                        }
                        this.f29727a.t.d().a(new gt(this, z, data, str, queryParameter));
                        esVar = this.f29727a.t;
                    }
                    esVar = this.f29727a.t;
                }
            } catch (Exception e) {
                this.f29727a.t.c().f29506c.a("Throwable caught in onActivityCreated", e);
                esVar = this.f29727a.t;
            }
            esVar.l().a(activity, bundle);
        } catch (Throwable th) {
            this.f29727a.t.l().a(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f29727a.t.l().c(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f29727a.t.l().b(activity);
        iz e = this.f29727a.t.e();
        e.t.d().a(new is(e, e.t.j.b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        iz e = this.f29727a.t.e();
        e.t.d().a(new ir(e, e.t.j.b()));
        this.f29727a.t.l().a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f29727a.t.l().b(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
