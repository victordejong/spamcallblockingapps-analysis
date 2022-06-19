package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhw.class */
public final class zzhw implements Runnable {
    final /* synthetic */ zzhu zza;
    final /* synthetic */ zzhu zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzib zze;

    public zzhw(zzib zzibVar, zzhu zzhuVar, zzhu zzhuVar2, long j, boolean z) {
        this.zze = zzibVar;
        this.zza = zzhuVar;
        this.zzb = zzhuVar2;
        this.zzc = j;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzB(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
