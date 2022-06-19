package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawm.class */
public final class zzawm implements zzawp {
    public final /* synthetic */ Activity zza;

    public zzawm(zzawq zzawqVar, Activity activity) {
        this.zza = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzawp
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.zza);
    }
}
