package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/GoogleAnalytics$zzb.class */
public final class GoogleAnalytics$zzb implements Application.ActivityLifecycleCallbacks {
    private final /* synthetic */ GoogleAnalytics zzrw;

    public GoogleAnalytics$zzb(GoogleAnalytics googleAnalytics) {
        this.zzrw = googleAnalytics;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.zzrw.zza(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.zzrw.zzb(activity);
    }
}
