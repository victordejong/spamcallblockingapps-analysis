package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabs.class */
final class zzabs implements zzabp {
    private final zzfd zza;
    private final int zzb;
    private final int zzc;
    private int zzd;
    private int zze;

    public zzabs(zzabm zzabmVar) {
        zzfd zzfdVar = zzabmVar.zza;
        this.zza = zzfdVar;
        zzfdVar.zzF(12);
        this.zzc = zzfdVar.zzn() & 255;
        this.zzb = zzfdVar.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final int zza() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final int zzc() {
        int i = this.zzc;
        if (i == 8) {
            return this.zza.zzk();
        }
        if (i == 16) {
            return this.zza.zzo();
        }
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        if (i2 % 2 != 0) {
            return this.zze & 15;
        }
        int zzk = this.zza.zzk();
        this.zze = zzk;
        return (zzk & 240) >> 4;
    }
}
