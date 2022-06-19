package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjd.class */
final class zzjd implements Runnable {
    private final /* synthetic */ ComponentName zza;
    private final /* synthetic */ zzjb zzb;

    public zzjd(zzjb zzjbVar, ComponentName componentName) {
        this.zzb = zzjbVar;
        this.zza = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zza(this.zza);
    }
}
