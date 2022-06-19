package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmr.class */
public final class zzcmr implements zzo {
    private final zzcml zza;
    private final zzo zzb;

    public zzcmr(zzcml zzcmlVar, zzo zzoVar) {
        this.zza = zzcmlVar;
        this.zzb = zzoVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        zzo zzoVar = this.zzb;
        if (zzoVar != null) {
            zzoVar.zzbp();
        }
        this.zza.zzK();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        zzo zzoVar = this.zzb;
        if (zzoVar != null) {
            zzoVar.zzbs(i);
        }
        this.zza.zzI();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
        zzo zzoVar = this.zzb;
        if (zzoVar != null) {
            zzoVar.zzd();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        zzo zzoVar = this.zzb;
        if (zzoVar != null) {
            zzoVar.zze();
        }
    }
}
