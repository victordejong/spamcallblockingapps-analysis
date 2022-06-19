package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejj.class */
public final class zzejj implements zzeec<zzcvh> {
    private final Context zza;
    private final zzcwe zzb;
    private final zzbkg zzc;
    private final zzfsn zzd;
    private final zzfes zze;

    public zzejj(Context context, zzcwe zzcweVar, zzfes zzfesVar, zzfsn zzfsnVar, zzbkg zzbkgVar) {
        this.zza = context;
        this.zzb = zzcweVar;
        this.zze = zzfesVar;
        this.zzd = zzfsnVar;
        this.zzc = zzbkgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        zzfae zzfaeVar;
        return (this.zzc == null || (zzfaeVar = zzezzVar.zzs) == null || zzfaeVar.zza == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<zzcvh> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        zzcvi zzaa = this.zzb.zzaa(new zzcxv(zzfalVar, zzezzVar, null), new zzejh(this, new View(this.zza), null, zzejf.zza, zzezzVar.zzu.get(0)));
        zzeji zzk = zzaa.zzk();
        zzfae zzfaeVar = zzezzVar.zzs;
        zzbkb zzbkbVar = new zzbkb(zzk, zzfaeVar.zzb, zzfaeVar.zza);
        zzfes zzfesVar = this.zze;
        return zzfed.zzd(new zzfdx(this, zzbkbVar) { // from class: com.google.android.gms.internal.ads.zzejg
            private final zzejj zza;
            private final zzbkb zzb;

            {
                this.zza = this;
                this.zzb = zzbkbVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfdx
            public final void zza() {
                this.zza.zzc(this.zzb);
            }
        }, this.zzd, zzfem.CUSTOM_RENDER_SYN, zzfesVar).zzj(zzfem.CUSTOM_RENDER_ACK).zze(zzfsd.zza(zzaa.zzh())).zzi();
    }

    public final /* synthetic */ void zzc(zzbkb zzbkbVar) throws Exception {
        this.zzc.zze(zzbkbVar);
    }
}
