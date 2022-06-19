package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eel.class */
final class eel implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final Application f48881a;

    /* renamed from: b */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f48882b;

    /* renamed from: c */
    private boolean f48883c = false;

    public eel(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f48882b = new WeakReference<>(activityLifecycleCallbacks);
        this.f48881a = application;
    }

    /* renamed from: a */
    private final void m15123a(eet eetVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f48882b.get();
            if (activityLifecycleCallbacks != null) {
                eetVar.mo15121a(activityLifecycleCallbacks);
            } else if (this.f48883c) {
            } else {
                this.f48881a.unregisterActivityLifecycleCallbacks(this);
                this.f48883c = true;
            }
        } catch (Exception e) {
            zzd.zzc("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m15123a(new eeo(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m15123a(new eeu(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m15123a(new eep(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m15123a(new eeq(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m15123a(new eer(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m15123a(new een(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m15123a(new ees(this, activity));
    }
}
