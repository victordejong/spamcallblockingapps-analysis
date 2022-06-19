package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzju.class */
public final class zzju implements Runnable {
    long zza;
    final /* synthetic */ zzjp zzb;

    public zzju(zzjp zzjpVar, long j) {
        this.zzb = zzjpVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzq().zza(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzjt
            private final zzju zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzju zzjuVar = this.zza;
                zzjp zzjpVar = zzjuVar.zzb;
                long j = zzjuVar.zza;
                zzjpVar.zza.zzd();
                zzjpVar.zza.zzr().zzw().zza("Application going to the background");
                zzjpVar.zza.zzf().zza("auto", "_ab", j, new Bundle());
            }
        });
    }
}
