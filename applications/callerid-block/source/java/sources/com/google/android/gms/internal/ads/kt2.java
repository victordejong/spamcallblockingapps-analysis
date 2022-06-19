package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kt2.class */
final class kt2 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b */
    private final Application f7064b;

    /* renamed from: c */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f7065c;

    /* renamed from: d */
    private boolean f7066d = false;

    public kt2(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f7065c = new WeakReference<>(activityLifecycleCallbacks);
        this.f7064b = application;
    }

    /* renamed from: a */
    protected final void m6756a(jt2 jt2Var) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f7065c.get();
            if (activityLifecycleCallbacks != null) {
                jt2Var.m6915a(activityLifecycleCallbacks);
            } else if (this.f7066d) {
            } else {
                this.f7064b.unregisterActivityLifecycleCallbacks(this);
                this.f7066d = true;
            }
        } catch (Exception e) {
            C1894po.m6182d("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m6756a(new ct2(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m6756a(new it2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m6756a(new ft2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m6756a(new et2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m6756a(new ht2(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m6756a(new dt2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m6756a(new gt2(this, activity));
    }
}
