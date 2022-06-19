package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzif.class */
public final class zzif implements Runnable {
    public final /* synthetic */ zzid zza;
    public final /* synthetic */ zzid zzb;
    public final /* synthetic */ long zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ zzik zze;

    public zzif(zzik zzikVar, zzid zzidVar, zzid zzidVar2, long j, boolean z) {
        this.zze = zzikVar;
        this.zza = zzidVar;
        this.zzb = zzidVar2;
        this.zzc = j;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzB(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
