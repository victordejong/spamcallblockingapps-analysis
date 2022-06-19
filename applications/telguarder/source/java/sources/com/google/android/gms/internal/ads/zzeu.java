package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeu.class */
final class zzeu implements zzet {
    private final /* synthetic */ Activity val$activity;

    public zzeu(zzel zzelVar, Activity activity) {
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzet
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.val$activity);
    }
}
