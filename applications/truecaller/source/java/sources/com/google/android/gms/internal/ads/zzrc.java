package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrc.class */
public final class zzrc implements zzqz {
    private final zzamf zza;
    private final int zzb;
    private final int zzc;
    private int zzd;
    private int zze;

    public zzrc(zzqw zzqwVar) {
        zzamf zzamfVar = zzqwVar.zza;
        this.zza = zzamfVar;
        zzamfVar.zzh(12);
        this.zzc = zzamfVar.zzB() & 255;
        this.zzb = zzamfVar.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzqz
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzqz
    public final int zzb() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzqz
    public final int zzc() {
        int i = this.zzc;
        if (i == 8) {
            return this.zza.zzn();
        }
        if (i == 16) {
            return this.zza.zzo();
        }
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        if (i2 % 2 != 0) {
            return this.zze & 15;
        }
        int zzn = this.zza.zzn();
        this.zze = zzn;
        return (zzn & 240) >> 4;
    }
}
