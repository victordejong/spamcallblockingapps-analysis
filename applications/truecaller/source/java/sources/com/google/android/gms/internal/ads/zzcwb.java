package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwb.class */
public final class zzcwb implements zzgla<zzdih<zzdfs>> {
    private final zzcvo zza;
    private final zzgln<zzddr> zzb;

    public zzcwb(zzcvo zzcvoVar, zzgln<zzddr> zzglnVar) {
        this.zza = zzcvoVar;
        this.zzb = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdih(new zzdfs(((zzcxb) this.zzb).zza()) { // from class: com.google.android.gms.internal.ads.zzcvn
            private final zzddr zza;

            {
                this.zza = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzdfs
            public final void zza() {
                this.zza.zzc();
            }
        }, zzchg.zzf);
    }
}
