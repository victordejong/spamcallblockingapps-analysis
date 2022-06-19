package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfht.class */
public final class zzfht implements zzfwm {
    public final /* synthetic */ zzfhj zza;
    public final /* synthetic */ zzfhv zzb;

    public zzfht(zzfhv zzfhvVar, zzfhj zzfhjVar) {
        this.zzb = zzfhvVar;
        this.zza = zzfhjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzfhx zzfhxVar;
        zzfhxVar = this.zzb.zza.zzd;
        zzfhxVar.zzb(this.zza, th);
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zzb(Object obj) {
        zzfhx zzfhxVar;
        zzfhxVar = this.zzb.zza.zzd;
        zzfhxVar.zzd(this.zza);
    }
}
