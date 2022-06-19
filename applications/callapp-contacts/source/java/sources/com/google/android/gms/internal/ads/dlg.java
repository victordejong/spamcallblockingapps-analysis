package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlg.class */
public final class dlg implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final Application f47175a;

    /* renamed from: b */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f47176b;

    /* renamed from: c */
    private boolean f47177c = false;

    public dlg(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f47176b = new WeakReference<>(activityLifecycleCallbacks);
        this.f47175a = application;
    }

    /* renamed from: a */
    private final void m16510a(dsy dsyVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f47176b.get();
            if (activityLifecycleCallbacks != null) {
                dsyVar.mo15753a(activityLifecycleCallbacks);
            } else if (this.f47177c) {
            } else {
                this.f47175a.unregisterActivityLifecycleCallbacks(this);
                this.f47177c = true;
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m16510a(new dof(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m16510a(new dsz(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m16510a(new dpg(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m16510a(new dqg(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m16510a(new drg(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m16510a(new dng(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m16510a(new dsh(this, activity));
    }
}
