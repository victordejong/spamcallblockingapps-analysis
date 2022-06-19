package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjf.class */
final class zzjf implements Runnable {
    public final /* synthetic */ ComponentName zza;
    public final /* synthetic */ zzjj zzb;

    public zzjf(zzjj zzjjVar, ComponentName componentName) {
        this.zzb = zzjjVar;
        this.zza = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk.zzJ(this.zzb.zza, this.zza);
    }
}
