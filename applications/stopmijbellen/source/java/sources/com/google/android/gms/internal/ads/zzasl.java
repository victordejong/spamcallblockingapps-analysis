package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasl.class */
final class zzasl implements zzasi {
    private final zzawu zza;
    private final int zzb;
    private final int zzc;
    private int zzd;
    private int zze;

    public zzasl(zzasf zzasfVar) {
        zzawu zzawuVar = zzasfVar.zza;
        this.zza = zzawuVar;
        zzawuVar.zzv(12);
        this.zzc = zzawuVar.zzi() & 255;
        this.zzb = zzawuVar.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final int zzb() {
        int i = this.zzc;
        if (i == 8) {
            return this.zza.zzg();
        }
        if (i == 16) {
            return this.zza.zzj();
        }
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        if (i2 % 2 != 0) {
            return this.zze & 15;
        }
        int zzg = this.zza.zzg();
        this.zze = zzg;
        return (zzg & 240) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.zzasi
    public final boolean zzc() {
        return false;
    }
}
