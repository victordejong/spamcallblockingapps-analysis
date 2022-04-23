package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlg.class */
final class dlg implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final Application f26917a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f26918b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f26919c = false;

    public dlg(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f26918b = new WeakReference<>(activityLifecycleCallbacks);
        this.f26917a = application;
    }

    private final void a(dsy dsyVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f26918b.get();
            if (activityLifecycleCallbacks != null) {
                dsyVar.a(activityLifecycleCallbacks);
            } else if (!this.f26919c) {
                this.f26917a.unregisterActivityLifecycleCallbacks(this);
                this.f26919c = true;
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new dof(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new dsz(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new dpg(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new dqg(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new drg(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new dng(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new dsh(this, activity));
    }
}
