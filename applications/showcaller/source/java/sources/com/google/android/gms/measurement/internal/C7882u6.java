package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
@TargetApi(14)
/* renamed from: com.google.android.gms.measurement.internal.u6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/u6.class */
public final class C7882u6 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    final /* synthetic */ C7893v6 f35714d;

    public /* synthetic */ C7882u6(C7893v6 c7893v6, RunnableC7735h6 runnableC7735h6) {
        this.f35714d = c7893v6;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C7858s4 c7858s4;
        try {
            try {
                this.f35714d.f35460a.mo6047C().m6187u().m6216a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    c7858s4 = this.f35714d.f35460a;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        this.f35714d.f35460a.m6043G();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z = true;
                        String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                        String queryParameter = data.getQueryParameter("referrer");
                        if (bundle != null) {
                            z = false;
                        }
                        this.f35714d.f35460a.mo6029b().m6109p(new RunnableC7871t6(this, z, data, str, queryParameter));
                        c7858s4 = this.f35714d.f35460a;
                    }
                    c7858s4 = this.f35714d.f35460a;
                }
            } catch (Exception e) {
                this.f35714d.f35460a.mo6047C().m6195m().m6215b("Throwable caught in onActivityCreated", e);
                c7858s4 = this.f35714d.f35460a;
            }
            c7858s4.m6033Q().m6293y(activity, bundle);
        } catch (Throwable th) {
            this.f35714d.f35460a.m6033Q().m6293y(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f35714d.f35460a.m6033Q().m6310D(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f35714d.f35460a.m6033Q().m6312A(activity);
        C7939z8 m6048B = this.f35714d.f35460a.m6048B();
        m6048B.f35460a.mo6029b().m6109p(new RunnableC7862s8(m6048B, m6048B.f35460a.mo6007x().mo16806b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C7939z8 m6048B = this.f35714d.f35460a.m6048B();
        m6048B.f35460a.mo6029b().m6109p(new RunnableC7851r8(m6048B, m6048B.f35460a.mo6007x().mo16806b()));
        this.f35714d.f35460a.m6033Q().m6292z(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f35714d.f35460a.m6033Q().m6311B(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
