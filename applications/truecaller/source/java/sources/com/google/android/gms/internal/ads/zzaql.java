package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaql.class */
public final class zzaql {
    public final int zza;
    public int zzb;
    public int zzc;
    public long zzd;
    private final boolean zze;
    private final zzaux zzf;
    private final zzaux zzg;
    private int zzh;
    private int zzi;

    public zzaql(zzaux zzauxVar, zzaux zzauxVar2, boolean z) {
        this.zzg = zzauxVar;
        this.zzf = zzauxVar2;
        this.zze = z;
        zzauxVar2.zzi(12);
        this.zza = zzauxVar2.zzu();
        zzauxVar.zzi(12);
        this.zzi = zzauxVar.zzu();
        zzaup.zze(zzauxVar.zzr() != 1 ? false : true, "first_chunk must be 1");
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
        this.zzd = this.zze ? this.zzf.zzv() : this.zzf.zzp();
        if (this.zzb != this.zzh) {
            return true;
        }
        this.zzc = this.zzg.zzu();
        this.zzg.zzj(4);
        int i2 = -1;
        int i3 = this.zzi - 1;
        this.zzi = i3;
        if (i3 > 0) {
            i2 = (-1) + this.zzg.zzu();
        }
        this.zzh = i2;
        return true;
    }
}
