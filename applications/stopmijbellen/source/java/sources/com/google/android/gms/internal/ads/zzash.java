package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzash.class */
final class zzash {
    public final int zza;
    public int zzb;
    public int zzc;
    public long zzd;
    private final boolean zze;
    private final zzawu zzf;
    private final zzawu zzg;
    private int zzh;
    private int zzi;

    public zzash(zzawu zzawuVar, zzawu zzawuVar2, boolean z) {
        this.zzg = zzawuVar;
        this.zzf = zzawuVar2;
        this.zze = z;
        zzawuVar2.zzv(12);
        this.zza = zzawuVar2.zzi();
        zzawuVar.zzv(12);
        this.zzi = zzawuVar.zzi();
        zzawm.zzf(zzawuVar.zze() != 1 ? false : true, "first_chunk must be 1");
        this.zzb = -1;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    public final boolean zza() {
        int i = this.zzb + 1;
        this.zzb = i;
        if (i == this.zza) {
            return false;
        }
        this.zzd = this.zze ? this.zzf.zzn() : this.zzf.zzm();
        if (this.zzb != this.zzh) {
            return true;
        }
        this.zzc = this.zzg.zzi();
        this.zzg.zzw(4);
        int i2 = -1;
        int i3 = this.zzi - 1;
        this.zzi = i3;
        if (i3 > 0) {
            i2 = (-1) + this.zzg.zzi();
        }
        this.zzh = i2;
        return true;
    }
}
