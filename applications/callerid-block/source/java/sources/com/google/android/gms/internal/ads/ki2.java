package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ki2.class */
final class ki2 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b */
    private final Application f6981b;

    /* renamed from: c */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f6982c;

    /* renamed from: d */
    private boolean f6983d = false;

    public ki2(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f6982c = new WeakReference<>(activityLifecycleCallbacks);
        this.f6981b = application;
    }

    /* renamed from: a */
    protected final void m6812a(ji2 ji2Var) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f6982c.get();
            if (activityLifecycleCallbacks != null) {
                ji2Var.m6968a(activityLifecycleCallbacks);
            } else if (this.f6983d) {
            } else {
                this.f6981b.unregisterActivityLifecycleCallbacks(this);
                this.f6983d = true;
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m6812a(new ci2(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m6812a(new ii2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m6812a(new fi2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m6812a(new ei2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m6812a(new hi2(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m6812a(new di2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m6812a(new gi2(this, activity));
    }
}
