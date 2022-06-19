package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcov.class */
final class zzcov implements zzo {
    private final zzcop zza;
    private final zzo zzb;

    public zzcov(zzcop zzcopVar, zzo zzoVar) {
        this.zza = zzcopVar;
        this.zzb = zzoVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        zzo zzoVar = this.zzb;
        if (zzoVar != null) {
            zzoVar.zzb();
        }
        this.zza.zzZ();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
        zzo zzoVar = this.zzb;
        if (zzoVar != null) {
            zzoVar.zzbK();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        zzo zzoVar = this.zzb;
        if (zzoVar != null) {
            zzoVar.zze();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        zzo zzoVar = this.zzb;
        if (zzoVar != null) {
            zzoVar.zzf(i);
        }
        this.zza.zzX();
    }
}
