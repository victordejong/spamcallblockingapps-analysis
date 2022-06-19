package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjh.class */
final class zzjh implements Runnable {
    public final /* synthetic */ zzjj zza;

    public zzjh(zzjj zzjjVar) {
        this.zza = zzjjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.zza.zza;
        Context zzax = zzjkVar.zzs.zzax();
        this.zza.zza.zzs.zzat();
        zzjk.zzJ(zzjkVar, new ComponentName(zzax, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
