package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhb.class */
final class zzhb implements Runnable {
    public final /* synthetic */ long zza;
    public final /* synthetic */ zzhw zzb;

    public zzhb(zzhw zzhwVar, long j) {
        this.zzb = zzhwVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzs.zzd().zzf.zzb(this.zza);
        this.zzb.zzs.zzau().zzj().zzb("Session timeout duration set", Long.valueOf(this.zza));
    }
}
