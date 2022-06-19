package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduu.class */
public final class zzduu {
    private final zzdep zza;
    private final zzdfy zzb;
    private final zzdgl zzc;
    private final zzdgx zzd;
    private final zzdjo zze;
    private final zzfdn zzf;
    private final zzfdq zzg;

    public zzduu(zzdep zzdepVar, zzdfy zzdfyVar, zzdgl zzdglVar, zzdgx zzdgxVar, zzdjo zzdjoVar, zzfdn zzfdnVar, zzfdq zzfdqVar) {
        this.zza = zzdepVar;
        this.zzb = zzdfyVar;
        this.zzc = zzdglVar;
        this.zzd = zzdgxVar;
        this.zze = zzdjoVar;
        this.zzf = zzfdnVar;
        this.zzg = zzfdqVar;
    }

    public final void zza(zzduy zzduyVar) {
        zzdus zzdusVar;
        zzdusVar = zzduyVar.zza;
        zzdep zzdepVar = this.zza;
        zzdgl zzdglVar = this.zzc;
        zzdgx zzdgxVar = this.zzd;
        zzdjo zzdjoVar = this.zze;
        zzdfy zzdfyVar = this.zzb;
        Objects.requireNonNull(zzdfyVar);
        zzdusVar.zzi(zzdepVar, zzdglVar, zzdgxVar, zzdjoVar, new zzdut(zzdfyVar));
        zzduyVar.zze(this.zzf, this.zzg);
    }
}
