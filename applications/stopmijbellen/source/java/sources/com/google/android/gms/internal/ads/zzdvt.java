package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvt.class */
public final class zzdvt implements zzgpr<zzeht<zzdvn>> {
    private final zzgqe<zzemt<zzdvn, zzfev, zzejq>> zza;
    private final zzgqe<zzemt<zzdvn, zzfev, zzejp>> zzb;
    private final zzgqe<zzfef> zzc;

    public zzdvt(zzgqe<zzemt<zzdvn, zzfev, zzejq>> zzgqeVar, zzgqe<zzemt<zzdvn, zzfev, zzejp>> zzgqeVar2, zzgqe<zzfef> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        zzgqe<zzemt<zzdvn, zzfev, zzejq>> zzgqeVar = this.zza;
        zzgqe<zzemt<zzdvn, zzfev, zzejp>> zzgqeVar2 = this.zzb;
        int i = ((zzdei) this.zzc).zza().zzo.zza;
        if (i != 0) {
            return i - 1 != 0 ? ((zzemu) zzgqeVar2).zzb() : ((zzemu) zzgqeVar).zzb();
        }
        throw null;
    }
}
