package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzft.class */
public final class zzft implements Runnable {
    public final /* synthetic */ zzgw zza;
    public final /* synthetic */ zzfu zzb;

    public zzft(zzfu zzfuVar, zzgw zzgwVar) {
        this.zzb = zzfuVar;
        this.zza = zzgwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfu.zzO(this.zzb, this.zza);
        this.zzb.zza(this.zza.zzg);
    }
}
