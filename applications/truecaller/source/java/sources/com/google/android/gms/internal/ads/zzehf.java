package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehf.class */
public final class zzehf extends zzehh<zzcxn> {
    private final zzcoj zza;
    private final zzdkw zzb;
    private final zzdam zzc;
    private final zzdgp zzd;

    public zzehf(zzcoj zzcojVar, zzdkw zzdkwVar, zzdam zzdamVar, zzdgp zzdgpVar) {
        this.zza = zzcojVar;
        this.zzb = zzdkwVar;
        this.zzc = zzdamVar;
        this.zzd = zzdgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehh
    public final zzfsm<zzcxn> zzc(zzfar zzfarVar, Bundle bundle) {
        zzdla zzr = this.zza.zzr();
        zzdam zzdamVar = this.zzc;
        zzdamVar.zzf(zzfarVar);
        zzdamVar.zzg(bundle);
        zzr.zzd(zzdamVar.zzh());
        zzr.zze(this.zzd);
        zzr.zzc(this.zzb);
        zzr.zzb(new zzcve(null));
        zzcyj<zzcxn> zzR = zzr.zza().zzR();
        return zzR.zzd(zzR.zzc());
    }
}
