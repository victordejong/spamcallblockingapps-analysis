package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtv.class */
final class dtv implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final Application f15746a;

    /* renamed from: b */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f15747b;

    /* renamed from: c */
    private boolean f15748c = false;

    public dtv(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f15747b = new WeakReference<>(activityLifecycleCallbacks);
        this.f15746a = application;
    }

    /* renamed from: a */
    private final void m8586a(dud dudVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f15747b.get();
            if (activityLifecycleCallbacks != null) {
                dudVar.mo8568a(activityLifecycleCallbacks);
            } else if (!this.f15748c) {
                this.f15746a.unregisterActivityLifecycleCallbacks(this);
                this.f15748c = true;
            }
        } catch (Exception e) {
            C3556uu.m6748c("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m8586a(new dtu(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m8586a(new dua(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m8586a(new dtz(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m8586a(new dtw(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m8586a(new dub(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m8586a(new dtx(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m8586a(new dty(this, activity));
    }
}
