package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzen.class */
final class zzen implements zzet {
    private final /* synthetic */ Activity val$activity;

    public zzen(zzel zzelVar, Activity activity) {
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzet
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.val$activity);
    }
}
