package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdn.class */
public final class zzdn implements zzdh {
    private zzdx zzb;
    private String zzc;
    private boolean zzf;
    private final zzdu zza = new zzdu();
    private int zzd = 8000;
    private int zze = 8000;

    public final zzdn zzb(boolean z) {
        this.zzf = true;
        return this;
    }

    public final zzdn zzc(int i) {
        this.zzd = i;
        return this;
    }

    public final zzdn zzd(int i) {
        this.zze = i;
        return this;
    }

    public final zzdn zze(zzdx zzdxVar) {
        this.zzb = zzdxVar;
        return this;
    }

    public final zzdn zzf(String str) {
        this.zzc = str;
        return this;
    }

    /* renamed from: zzg */
    public final zzdp zza() {
        zzdp zzdpVar = new zzdp(this.zzc, this.zzd, this.zze, this.zzf, this.zza);
        zzdx zzdxVar = this.zzb;
        if (zzdxVar != null) {
            zzdpVar.zzb(zzdxVar);
        }
        return zzdpVar;
    }
}
