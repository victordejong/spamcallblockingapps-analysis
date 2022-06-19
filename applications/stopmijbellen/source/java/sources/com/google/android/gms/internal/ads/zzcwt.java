package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwt.class */
public final class zzcwt implements zzfwm<String> {
    public final /* synthetic */ String zza;
    public final /* synthetic */ zzcwu zzb;

    public zzcwt(zzcwu zzcwuVar, String str) {
        this.zzb = zzcwuVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzfeo zzfeoVar;
        zzfjp zzfjpVar;
        zzfdz zzfdzVar;
        zzfdn zzfdnVar;
        zzfdn zzfdnVar2;
        zzfeoVar = this.zzb.zzh;
        zzfjpVar = this.zzb.zzg;
        zzfdzVar = this.zzb.zze;
        zzfdnVar = this.zzb.zzf;
        String str = this.zza;
        zzfdnVar2 = this.zzb.zzf;
        zzfeoVar.zza(zzfjpVar.zzb(zzfdzVar, zzfdnVar, false, str, null, zzfdnVar2.zzd));
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(String str) {
        zzfeo zzfeoVar;
        zzfjp zzfjpVar;
        zzfdz zzfdzVar;
        zzfdn zzfdnVar;
        zzfdn zzfdnVar2;
        zzfeoVar = this.zzb.zzh;
        zzfjpVar = this.zzb.zzg;
        zzfdzVar = this.zzb.zze;
        zzfdnVar = this.zzb.zzf;
        String str2 = this.zza;
        zzfdnVar2 = this.zzb.zzf;
        zzfeoVar.zza(zzfjpVar.zzb(zzfdzVar, zzfdnVar, false, str2, str, zzfdnVar2.zzd));
    }
}
