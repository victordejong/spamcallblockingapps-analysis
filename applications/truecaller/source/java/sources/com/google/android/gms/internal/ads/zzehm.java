package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehm.class */
public final class zzehm extends zzehh<zzdrw> {
    private final zzcoj zza;
    private final zzdam zzb;
    private final zzdgp zzc;

    public zzehm(zzcoj zzcojVar, zzdam zzdamVar, zzdgp zzdgpVar) {
        this.zza = zzcojVar;
        this.zzb = zzdamVar;
        this.zzc = zzdgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehh
    public final zzfsm<zzdrw> zzc(zzfar zzfarVar, Bundle bundle) {
        zzdsa zzs = this.zza.zzs();
        zzdam zzdamVar = this.zzb;
        zzdamVar.zzf(zzfarVar);
        zzdamVar.zzg(bundle);
        zzs.zzb(zzdamVar.zzh());
        zzs.zzc(this.zzc);
        zzcyj<zzdrw> zzP = zzs.zza().zzP();
        return zzP.zzd(zzP.zzc());
    }
}
