package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvd.class */
public final class zzdvd {
    private final zzdep zza;
    private final zzdfy zzb;
    private final zzdgl zzc;
    private final zzdgx zzd;
    private final zzdjo zze;
    private final zzdmb zzf;

    public zzdvd(zzdep zzdepVar, zzdfy zzdfyVar, zzdgl zzdglVar, zzdgx zzdgxVar, zzdjo zzdjoVar, zzdmb zzdmbVar) {
        this.zza = zzdepVar;
        this.zzb = zzdfyVar;
        this.zzc = zzdglVar;
        this.zzd = zzdgxVar;
        this.zze = zzdjoVar;
        this.zzf = zzdmbVar;
    }

    public final void zza(zzdve zzdveVar) {
        zzdvb zzdvbVar;
        zzdvbVar = zzdveVar.zza;
        zzdep zzdepVar = this.zza;
        zzdgl zzdglVar = this.zzc;
        zzdgx zzdgxVar = this.zzd;
        zzdjo zzdjoVar = this.zze;
        zzdfy zzdfyVar = this.zzb;
        Objects.requireNonNull(zzdfyVar);
        zzdvbVar.zzi(zzdepVar, zzdglVar, zzdgxVar, zzdjoVar, new zzdvc(zzdfyVar), this.zzf);
    }
}
