package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zziy.class */
final class zziy implements Runnable {
    final /* synthetic */ zzja zza;

    public zziy(zzja zzjaVar) {
        this.zza = zzjaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjb zzjbVar = this.zza.zza;
        Context zzaw = zzjbVar.zzx.zzaw();
        this.zza.zza.zzx.zzas();
        zzjb.zzJ(zzjbVar, new ComponentName(zzaw, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
