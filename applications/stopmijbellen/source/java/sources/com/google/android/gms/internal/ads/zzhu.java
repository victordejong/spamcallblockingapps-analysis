package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhu.class */
public final class zzhu {
    public final zzpy zza;
    public final Object zzb;
    public boolean zzd;
    public boolean zze;
    public zzhv zzf;
    public boolean zzg;
    private final zzim[] zzi;
    private final zzsv zzj;
    private final zzie zzk;
    private zzhu zzl;
    private zzsw zzn;
    private long zzo;
    private zzch zzm = zzch.zza;
    public final zzrn[] zzc = new zzrn[2];
    private final boolean[] zzh = new boolean[2];

    public zzhu(zzim[] zzimVarArr, long j, zzsv zzsvVar, zztk zztkVar, zzie zzieVar, zzhv zzhvVar, zzsw zzswVar, byte[] bArr) {
        this.zzi = zzimVarArr;
        this.zzo = j;
        this.zzj = zzsvVar;
        this.zzk = zzieVar;
        zzpz zzpzVar = zzhvVar.zza;
        this.zzb = zzpzVar.zza;
        this.zzf = zzhvVar;
        this.zzn = zzswVar;
        long j2 = zzhvVar.zzb;
        long j3 = zzhvVar.zzd;
        zzpy zzo = zzieVar.zzo(zzpzVar, zztkVar, j2);
        this.zza = j3 != -9223372036854775807L ? new zzpg(zzo, true, 0L, j3) : zzo;
    }

    private final void zzs() {
        if (zzu()) {
            int i = 0;
            while (true) {
                zzsw zzswVar = this.zzn;
                if (i >= zzswVar.zza) {
                    return;
                }
                zzswVar.zzb(i);
                zzsb zzsbVar = this.zzn.zze[i];
                i++;
            }
        }
    }

    private final void zzt() {
        if (zzu()) {
            int i = 0;
            while (true) {
                zzsw zzswVar = this.zzn;
                if (i >= zzswVar.zza) {
                    return;
                }
                zzswVar.zzb(i);
                zzsb zzsbVar = this.zzn.zze[i];
                i++;
            }
        }
    }

    private final boolean zzu() {
        return this.zzl == null;
    }

    public final long zza(zzsw zzswVar, long j, boolean z) {
        return zzb(zzswVar, j, false, new boolean[2]);
    }

    public final long zzb(zzsw zzswVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzswVar.zza) {
                break;
            }
            boolean[] zArr2 = this.zzh;
            if (z || !zzswVar.zza(this.zzn, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        int i2 = 0;
        while (true) {
            zzim[] zzimVarArr = this.zzi;
            if (i2 >= 2) {
                break;
            }
            zzimVarArr[i2].zzb();
            i2++;
        }
        zzs();
        this.zzn = zzswVar;
        zzt();
        long zzq = this.zza.zzq(zzswVar.zze, this.zzh, this.zzc, zArr, j);
        int i3 = 0;
        while (true) {
            zzim[] zzimVarArr2 = this.zzi;
            if (i3 >= 2) {
                break;
            }
            zzimVarArr2[i3].zzb();
            i3++;
        }
        this.zze = false;
        int i4 = 0;
        while (true) {
            zzrn[] zzrnVarArr = this.zzc;
            if (i4 < 2) {
                if (zzrnVarArr[i4] != null) {
                    zzdy.zzf(zzswVar.zzb(i4));
                    this.zzi[i4].zzb();
                    this.zze = true;
                } else {
                    zzdy.zzf(zzswVar.zze[i4] == null);
                }
                i4++;
            } else {
                return zzq;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    public final long zzc() {
        if (!this.zzd) {
            return this.zzf.zzb;
        }
        char zzb = this.zze ? this.zza.zzb() : (char) 0;
        return zzb == Long.MIN_VALUE ? this.zzf.zze : zzb;
    }

    public final long zzd() {
        if (!this.zzd) {
            return 0L;
        }
        return this.zza.zzc();
    }

    public final long zze() {
        return this.zzo;
    }

    public final long zzf() {
        return this.zzf.zzb + this.zzo;
    }

    public final zzch zzg() {
        return this.zzm;
    }

    public final zzhu zzh() {
        return this.zzl;
    }

    public final zzsw zzi() {
        return this.zzn;
    }

    public final zzsw zzj(float f, zzcd zzcdVar) throws zzgg {
        zzsb[] zzsbVarArr;
        zzsw zzi = this.zzj.zzi(this.zzi, this.zzm, this.zzf.zza, zzcdVar);
        for (zzsb zzsbVar : zzi.zze) {
        }
        return zzi;
    }

    public final void zzk(long j) {
        zzdy.zzf(zzu());
        this.zza.zzn(j - this.zzo);
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public final void zzl(float f, zzcd zzcdVar) throws zzgg {
        this.zzd = true;
        this.zzm = this.zza.zzf();
        zzsw zzj = zzj(f, zzcdVar);
        zzhv zzhvVar = this.zzf;
        ?? r0 = zzhvVar.zzb;
        long j = zzhvVar.zze;
        char c = r0;
        if (j != -9223372036854775807L) {
            c = r0;
            if (r0 >= j) {
                c = Math.max(0L, j - 1);
            }
        }
        long zza = zza(zzj, c, false);
        long j2 = this.zzo;
        zzhv zzhvVar2 = this.zzf;
        this.zzo = (zzhvVar2.zzb - zza) + j2;
        this.zzf = zzhvVar2.zzb(zza);
    }

    public final void zzm(long j) {
        zzdy.zzf(zzu());
        if (this.zzd) {
            this.zza.zzl(j - this.zzo);
        }
    }

    public final void zzn() {
        zzs();
        zzie zzieVar = this.zzk;
        zzpy zzpyVar = this.zza;
        try {
            if (zzpyVar instanceof zzpg) {
                zzieVar.zzh(((zzpg) zzpyVar).zza);
            } else {
                zzieVar.zzh(zzpyVar);
            }
        } catch (RuntimeException e) {
            zzep.zza("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    public final void zzo(zzhu zzhuVar) {
        if (zzhuVar == this.zzl) {
            return;
        }
        zzs();
        this.zzl = zzhuVar;
        zzt();
    }

    public final void zzp(long j) {
        this.zzo = 0L;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public final void zzq() {
        zzpy zzpyVar = this.zza;
        if (zzpyVar instanceof zzpg) {
            ?? r0 = this.zzf.zzd;
            char c = r0;
            if (r0 == -9223372036854775807L) {
                c = 0;
            }
            ((zzpg) zzpyVar).zzm(0L, c);
        }
    }

    public final boolean zzr() {
        boolean z = true;
        if (this.zzd) {
            if (this.zze) {
                if (this.zza.zzb() == Long.MIN_VALUE) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }
}
