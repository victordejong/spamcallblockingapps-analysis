package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgl.class */
final class zzgl implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ long zzd;
    public final /* synthetic */ zzgm zze;

    public zzgl(zzgm zzgmVar, String str, String str2, String str3, long j) {
        this.zze = zzgmVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn zzknVar;
        zzkn zzknVar2;
        String str = this.zza;
        if (str == null) {
            zzknVar2 = this.zze.zza;
            zzknVar2.zzN().zzx().zzn(this.zzb, null);
            return;
        }
        zzid zzidVar = new zzid(this.zzc, str, this.zzd);
        zzknVar = this.zze.zza;
        zzknVar.zzN().zzx().zzn(this.zzb, zzidVar);
    }
}
