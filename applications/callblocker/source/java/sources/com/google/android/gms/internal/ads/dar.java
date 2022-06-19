package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dar.class */
public final class dar implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final Application f13908a;

    /* renamed from: b */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f13909b;

    /* renamed from: c */
    private boolean f13910c = false;

    public dar(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f13909b = new WeakReference<>(activityLifecycleCallbacks);
        this.f13908a = application;
    }

    /* renamed from: a */
    private final void m10256a(dih dihVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f13909b.get();
            if (activityLifecycleCallbacks != null) {
                dihVar.mo9429a(activityLifecycleCallbacks);
            } else if (!this.f13910c) {
                this.f13908a.unregisterActivityLifecycleCallbacks(this);
                this.f13910c = true;
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m10256a(new czp(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m10256a(new dfs(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m10256a(new des(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m10256a(new dbs(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m10256a(new dgt(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m10256a(new dcs(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m10256a(new ddr(this, activity));
    }
}
