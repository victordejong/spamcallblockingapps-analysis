package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawq.class */
public final class zzawq implements Application.ActivityLifecycleCallbacks {
    private final Application zza;
    private final WeakReference<Application.ActivityLifecycleCallbacks> zzb;
    private boolean zzc = false;

    public zzawq(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzb = new WeakReference<>(activityLifecycleCallbacks);
        this.zza = application;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(new zzawi(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zza(new zzawo(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(new zzawl(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(new zzawk(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza(new zzawn(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(new zzawj(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zza(new zzawm(this, activity));
    }

    public final void zza(zzawp zzawpVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.zzb.get();
            if (activityLifecycleCallbacks != null) {
                zzawpVar.zza(activityLifecycleCallbacks);
            } else if (this.zzc) {
            } else {
                this.zza.unregisterActivityLifecycleCallbacks(this);
                this.zzc = true;
            }
        } catch (Exception e) {
            zzcgt.zzg("Error while dispatching lifecycle callback.", e);
        }
    }
}
