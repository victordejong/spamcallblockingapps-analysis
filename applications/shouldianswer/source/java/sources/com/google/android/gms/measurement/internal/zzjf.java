package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjf.class */
final class zzjf implements Runnable {
    private final /* synthetic */ zzjb zza;

    public zzjf(zzjb zzjbVar) {
        this.zza = zzjbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzij zzijVar = this.zza.zza;
        Context zzn = this.zza.zza.zzn();
        this.zza.zza.zzu();
        zzijVar.zza(new ComponentName(zzn, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
