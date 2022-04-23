package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
@TargetApi(14)
/* renamed from: com.google.android.gms.measurement.internal.u6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u6.class */
final class C2348u6 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b */
    final /* synthetic */ v6 f10428b;

    /* synthetic */ C2348u6(v6 v6Var, RunnableC2269h6 h6Var) {
        this.f10428b = v6Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Uri data;
        try {
            try {
                ((m5) this.f10428b).a.t().w().m3876a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (!(intent == null || (data = intent.getData()) == null || !data.isHierarchical())) {
                    ((m5) this.f10428b).a.G();
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    boolean z = true;
                    String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                    String queryParameter = data.getQueryParameter("referrer");
                    if (bundle != null) {
                        z = false;
                    }
                    ((m5) this.f10428b).a.c().p(new RunnableC2343t6(this, z, data, str, queryParameter));
                }
            } catch (Exception e) {
                ((m5) this.f10428b).a.t().m().m3875b("Throwable caught in onActivityCreated", e);
            }
            ((m5) this.f10428b).a.Q().z(activity, bundle);
        } catch (Throwable th) {
            ((m5) this.f10428b).a.Q().z(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        ((m5) this.f10428b).a.Q().D(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        ((m5) this.f10428b).a.Q().B(activity);
        z8 C = ((m5) this.f10428b).a.C();
        ((m5) C).a.c().p(new RunnableC2338s8(C, ((m5) C).a.v().m8245c()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        z8 C = ((m5) this.f10428b).a.C();
        ((m5) C).a.c().p(new RunnableC2332r8(C, ((m5) C).a.v().m8245c()));
        ((m5) this.f10428b).a.Q().A(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        ((m5) this.f10428b).a.Q().C(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
