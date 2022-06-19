package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrf.class */
final class zzrf implements zzrh {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ Bundle zzyi;

    public zzrf(zzqz zzqzVar, Activity activity, Bundle bundle) {
        this.val$activity = activity;
        this.zzyi = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzrh
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.val$activity, this.zzyi);
    }
}
