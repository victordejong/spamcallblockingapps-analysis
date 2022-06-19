package com.flurry.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* renamed from: com.flurry.sdk.kk */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kk.class */
public class C0465kk {

    /* renamed from: a */
    private static final String f3478a = "kk";

    /* renamed from: b */
    private static C0465kk f3479b;

    /* renamed from: c */
    private Application.ActivityLifecycleCallbacks f3480c;

    private C0465kk() {
        if (Build.VERSION.SDK_INT < 14 || this.f3480c != null) {
            return;
        }
        Context context = C0462kg.m4652a().f3460a;
        if (!(context instanceof Application)) {
            return;
        }
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: com.flurry.sdk.kk.1
            /* renamed from: a */
            private static void m4637a(Activity activity, kj$a kj_a) {
                kj kjVar = new kj();
                kjVar.a = new WeakReference(activity);
                kjVar.b = kj_a;
                kjVar.m4619b();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity, Bundle bundle) {
                String str = C0465kk.f3478a;
                C0478ku.m4596a(3, str, "onActivityCreated for activity:" + activity);
                m4637a(activity, kj$a.kCreated);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity) {
                String str = C0465kk.f3478a;
                C0478ku.m4596a(3, str, "onActivityDestroyed for activity:" + activity);
                m4637a(activity, kj$a.kDestroyed);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity) {
                String str = C0465kk.f3478a;
                C0478ku.m4596a(3, str, "onActivityPaused for activity:" + activity);
                m4637a(activity, kj$a.kPaused);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity) {
                String str = C0465kk.f3478a;
                C0478ku.m4596a(3, str, "onActivityResumed for activity:" + activity);
                m4637a(activity, kj$a.kResumed);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                String str = C0465kk.f3478a;
                C0478ku.m4596a(3, str, "onActivitySaveInstanceState for activity:" + activity);
                m4637a(activity, kj$a.kSaveState);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity) {
                String str = C0465kk.f3478a;
                C0478ku.m4596a(3, str, "onActivityStarted for activity:" + activity);
                m4637a(activity, kj$a.kStarted);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
                String str = C0465kk.f3478a;
                C0478ku.m4596a(3, str, "onActivityStopped for activity:" + activity);
                m4637a(activity, kj$a.kStopped);
            }
        };
        this.f3480c = activityLifecycleCallbacks;
        ((Application) context).registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
    }

    /* renamed from: a */
    public static C0465kk m4640a() {
        C0465kk c0465kk;
        synchronized (C0465kk.class) {
            try {
                if (f3479b == null) {
                    f3479b = new C0465kk();
                }
                c0465kk = f3479b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0465kk;
    }

    /* renamed from: b */
    public final boolean m4639b() {
        return this.f3480c != null;
    }
}
