package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabo.class */
final class zzabo {
    public final int zza;
    public int zzb;
    public int zzc;
    public long zzd;
    private final boolean zze;
    private final zzfd zzf;
    private final zzfd zzg;
    private int zzh;
    private int zzi;

    public zzabo(zzfd zzfdVar, zzfd zzfdVar2, boolean z) throws zzbj {
        this.zzg = zzfdVar;
        this.zzf = zzfdVar2;
        this.zze = z;
        zzfdVar2.zzF(12);
        this.zza = zzfdVar2.zzn();
        zzfdVar.zzF(12);
        this.zzi = zzfdVar.zzn();
        zzwt.zzb(zzfdVar.zze() != 1 ? false : true, "first_chunk must be 1");
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
        this.zzd = this.zze ? this.zzf.zzt() : this.zzf.zzs();
        if (this.zzb != this.zzh) {
            return true;
        }
        this.zzc = this.zzg.zzn();
        this.zzg.zzG(4);
        int i2 = -1;
        int i3 = this.zzi - 1;
        this.zzi = i3;
        if (i3 > 0) {
            i2 = (-1) + this.zzg.zzn();
        }
        this.zzh = i2;
        return true;
    }
}
