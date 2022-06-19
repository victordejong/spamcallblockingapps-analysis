package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqy.class */
public final class zzqy {
    public final int zza;
    public int zzb;
    public int zzc;
    public long zzd;
    private final boolean zze;
    private final zzamf zzf;
    private final zzamf zzg;
    private int zzh;
    private int zzi;

    public zzqy(zzamf zzamfVar, zzamf zzamfVar2, boolean z) throws zzaha {
        this.zzg = zzamfVar;
        this.zzf = zzamfVar2;
        this.zze = z;
        zzamfVar2.zzh(12);
        this.zza = zzamfVar2.zzB();
        zzamfVar.zzh(12);
        this.zzi = zzamfVar.zzB();
        zzny.zza(zzamfVar.zzv() != 1 ? false : true, "first_chunk must be 1");
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
        this.zzd = this.zze ? this.zzf.zzD() : this.zzf.zzt();
        if (this.zzb != this.zzh) {
            return true;
        }
        this.zzc = this.zzg.zzB();
        this.zzg.zzk(4);
        int i2 = -1;
        int i3 = this.zzi - 1;
        this.zzi = i3;
        if (i3 > 0) {
            i2 = (-1) + this.zzg.zzB();
        }
        this.zzh = i2;
        return true;
    }
}
