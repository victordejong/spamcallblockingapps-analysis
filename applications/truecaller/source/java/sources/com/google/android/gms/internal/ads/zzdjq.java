package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjq.class */
public final class zzdjq implements zzgla<zzdih<zzdcq>> {
    private final zzdjm zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzcgz> zzc;
    private final zzgln<zzezz> zzd;
    private final zzgln<zzfar> zze;

    public zzdjq(zzdjm zzdjmVar, zzgln<Context> zzglnVar, zzgln<zzcgz> zzglnVar2, zzgln<zzezz> zzglnVar3, zzgln<zzfar> zzglnVar4) {
        this.zza = zzdjmVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
        this.zzd = zzglnVar3;
        this.zze = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdih(new zzdcq(this.zzb.zzb(), ((zzcox) this.zzc).zza(), ((zzcxw) this.zzd).zza(), ((zzdat) this.zze).zza()) { // from class: com.google.android.gms.internal.ads.zzdjk
            private final Context zza;
            private final zzcgz zzb;
            private final zzezz zzc;
            private final zzfar zzd;

            {
                this.zza = zzb;
                this.zzb = zza;
                this.zzc = zza2;
                this.zzd = zza3;
            }

            @Override // com.google.android.gms.internal.ads.zzdcq
            public final void zzf() {
                zzt.zzm().zzg(this.zza, this.zzb.zza, this.zzc.zzC.toString(), this.zzd.zzf);
            }
        }, zzchg.zzf);
    }
}
