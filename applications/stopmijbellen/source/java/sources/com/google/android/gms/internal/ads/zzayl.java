package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayl.class */
final class zzayl implements zzaym {
    public final /* synthetic */ Activity zza;

    public zzayl(zzayn zzaynVar, Activity activity) {
        this.zza = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.zza);
    }
}
