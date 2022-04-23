package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eel.class */
final class eel implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final Application f27734a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f27735b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27736c = false;

    public eel(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f27735b = new WeakReference<>(activityLifecycleCallbacks);
        this.f27734a = application;
    }

    private final void a(eet eetVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f27735b.get();
            if (activityLifecycleCallbacks != null) {
                eetVar.a(activityLifecycleCallbacks);
            } else if (!this.f27736c) {
                this.f27734a.unregisterActivityLifecycleCallbacks(this);
                this.f27736c = true;
            }
        } catch (Exception e) {
            zzd.zzc("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new eeo(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new eeu(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new eep(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new eeq(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new eer(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new een(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new ees(this, activity));
    }
}
