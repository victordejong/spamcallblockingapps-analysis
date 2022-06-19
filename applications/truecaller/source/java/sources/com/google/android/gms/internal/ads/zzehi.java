package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehi.class */
public final class zzehi extends zzehh<zzcvh> {
    private final zzcoj zza;
    private final zzdam zzb;
    private final zzejq zzc;
    private final zzdgp zzd;
    private final zzdkw zze;
    private final zzddr zzf;
    private final ViewGroup zzg;

    public zzehi(zzcoj zzcojVar, zzdam zzdamVar, zzejq zzejqVar, zzdgp zzdgpVar, zzdkw zzdkwVar, zzddr zzddrVar, ViewGroup viewGroup) {
        this.zza = zzcojVar;
        this.zzb = zzdamVar;
        this.zzc = zzejqVar;
        this.zzd = zzdgpVar;
        this.zze = zzdkwVar;
        this.zzf = zzddrVar;
        this.zzg = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzehh
    public final zzfsm<zzcvh> zzc(zzfar zzfarVar, Bundle bundle) {
        zzcwd zzk = this.zza.zzk();
        zzdam zzdamVar = this.zzb;
        zzdamVar.zzf(zzfarVar);
        zzdamVar.zzg(bundle);
        zzk.zzi(zzdamVar.zzh());
        zzk.zzj(this.zzd);
        zzk.zze(this.zzc);
        zzk.zzb(this.zze);
        zzk.zzd(new zzcxa(this.zzf));
        zzk.zzc(new zzcve(this.zzg));
        zzcyj<zzcvh> zzY = zzk.zza().zzY();
        return zzY.zzd(zzY.zzc());
    }
}
