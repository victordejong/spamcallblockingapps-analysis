package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnq.class */
public final class zzdnq implements zzo {
    private final zzdgx zza;
    private final zzdlu zzb;

    public zzdnq(zzdgx zzdgxVar, zzdlu zzdluVar) {
        this.zza = zzdgxVar;
        this.zzb = zzdluVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        this.zza.zzb();
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
        this.zza.zzbK();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
        this.zza.zzbS();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
        this.zza.zzbz();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        this.zza.zzf(i);
        this.zzb.zza();
    }
}
