package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzask.class */
final class zzask implements zzasi {
    private final int zza;
    private final int zzb;
    private final zzawu zzc;

    public zzask(zzasf zzasfVar) {
        zzawu zzawuVar = zzasfVar.zza;
        this.zzc = zzawuVar;
        zzawuVar.zzv(12);
        this.zza = zzawuVar.zzi();
        this.zzb = zzawuVar.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final int zzb() {
        int i = this.zza;
        int i2 = i;
        if (i == 0) {
            i2 = this.zzc.zzi();
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final boolean zzc() {
        return this.zza != 0;
    }
}
