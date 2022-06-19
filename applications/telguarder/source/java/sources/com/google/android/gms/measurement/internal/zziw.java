package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zziw.class */
final class zziw implements Runnable {
    final /* synthetic */ ComponentName zza;
    final /* synthetic */ zzja zzb;

    public zziw(zzja zzjaVar, ComponentName componentName) {
        this.zzb = zzjaVar;
        this.zza = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjb.zzJ(this.zzb.zza, this.zza);
    }
}
