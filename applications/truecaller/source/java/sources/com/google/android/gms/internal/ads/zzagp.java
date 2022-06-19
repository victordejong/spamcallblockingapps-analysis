package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagp.class */
public final class zzagp {
    public final zzhe zza;
    public final Object zzb;
    public boolean zzd;
    public boolean zze;
    public zzagq zzf;
    public boolean zzg;
    private final zzahw[] zzi;
    private final zzjz zzj;
    private final zzagz zzk;
    private zzagp zzl;
    private zzka zzn;
    private long zzo;
    private zzs zzm = zzs.zza;
    public final zziu[] zzc = new zziu[2];
    private final boolean[] zzh = new boolean[2];

    public zzagp(zzahw[] zzahwVarArr, long j, zzjz zzjzVar, zzko zzkoVar, zzagz zzagzVar, zzagq zzagqVar, zzka zzkaVar, byte[] bArr) {
        this.zzi = zzahwVarArr;
        this.zzo = j;
        this.zzj = zzjzVar;
        this.zzk = zzagzVar;
        zzhf zzhfVar = zzagqVar.zza;
        this.zzb = zzhfVar.zza;
        this.zzf = zzagqVar;
        this.zzn = zzkaVar;
        long j2 = zzagqVar.zzb;
        long j3 = zzagqVar.zzd;
        zzhe zzo = zzagzVar.zzo(zzhfVar, zzkoVar, j2);
        this.zza = j3 != -9223372036854775807L ? new zzgm(zzo, true, 0L, j3) : zzo;
    }

    private final void zzs() {
        if (zzu()) {
            int i = 0;
            while (true) {
                zzka zzkaVar = this.zzn;
                if (i >= zzkaVar.zza) {
                    return;
                }
                zzkaVar.zza(i);
                zzjg zzjgVar = this.zzn.zzd[i];
                i++;
            }
        }
    }

    private final void zzt() {
        if (zzu()) {
            int i = 0;
            while (true) {
                zzka zzkaVar = this.zzn;
                if (i >= zzkaVar.zza) {
                    return;
                }
                zzkaVar.zza(i);
                zzjg zzjgVar = this.zzn.zzd[i];
                i++;
            }
        }
    }

    private final boolean zzu() {
        return this.zzl == null;
    }

    public final long zza() {
        return this.zzo;
    }

    public final void zzb(long j) {
        this.zzo = 0L;
    }

    public final long zzc() {
        return this.zzf.zzb + this.zzo;
    }

    public final boolean zzd() {
        boolean z = true;
        if (this.zzd) {
            if (this.zze) {
                if (this.zza.zzh() == Long.MIN_VALUE) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    public final long zze() {
        if (!this.zzd) {
            return this.zzf.zzb;
        }
        char zzh = this.zze ? this.zza.zzh() : (char) 0;
        return zzh == Long.MIN_VALUE ? this.zzf.zze : zzh;
    }

    public final long zzf() {
        if (!this.zzd) {
            return 0L;
        }
        return this.zza.zzk();
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public final void zzg(float f, zzaiq zzaiqVar) throws zzaeg {
        this.zzd = true;
        this.zzm = this.zza.zzd();
        zzka zzj = zzj(f, zzaiqVar);
        zzagq zzagqVar = this.zzf;
        ?? r0 = zzagqVar.zzb;
        long j = zzagqVar.zze;
        char c = r0;
        if (j != -9223372036854775807L) {
            c = r0;
            if (r0 >= j) {
                c = Math.max(0L, j - 1);
            }
        }
        long zzk = zzk(zzj, c, false);
        long j2 = this.zzo;
        zzagq zzagqVar2 = this.zzf;
        this.zzo = (zzagqVar2.zzb - zzk) + j2;
        this.zzf = zzagqVar2.zza(zzk);
    }

    public final void zzh(long j) {
        zzakt.zzd(zzu());
        if (this.zzd) {
            this.zza.zzf(j - this.zzo);
        }
    }

    public final void zzi(long j) {
        zzakt.zzd(zzu());
        this.zza.zzl(j - this.zzo);
    }

    public final zzka zzj(float f, zzaiq zzaiqVar) throws zzaeg {
        zzjg[] zzjgVarArr;
        zzka zzj = this.zzj.zzj(this.zzi, this.zzm, this.zzf.zza, zzaiqVar);
        for (zzjg zzjgVar : zzj.zzd) {
        }
        return zzj;
    }

    public final long zzk(zzka zzkaVar, long j, boolean z) {
        return zzl(zzkaVar, j, false, new boolean[2]);
    }

    public final long zzl(zzka zzkaVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzkaVar.zza) {
                break;
            }
            boolean[] zArr2 = this.zzh;
            if (z || !zzkaVar.zzb(this.zzn, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        int i2 = 0;
        while (true) {
            zzahw[] zzahwVarArr = this.zzi;
            if (i2 >= 2) {
                break;
            }
            zzahwVarArr[i2].zzac();
            i2++;
        }
        zzt();
        this.zzn = zzkaVar;
        zzs();
        long zzq = this.zza.zzq(zzkaVar.zzd, this.zzh, this.zzc, zArr, j);
        int i3 = 0;
        while (true) {
            zzahw[] zzahwVarArr2 = this.zzi;
            if (i3 >= 2) {
                break;
            }
            zzahwVarArr2[i3].zzac();
            i3++;
        }
        this.zze = false;
        int i4 = 0;
        while (true) {
            zziu[] zziuVarArr = this.zzc;
            if (i4 < 2) {
                if (zziuVarArr[i4] != null) {
                    zzakt.zzd(zzkaVar.zza(i4));
                    this.zzi[i4].zzac();
                    this.zze = true;
                } else {
                    zzakt.zzd(zzkaVar.zzd[i4] == null);
                }
                i4++;
            } else {
                return zzq;
            }
        }
    }

    public final void zzm() {
        zzt();
        zzagz zzagzVar = this.zzk;
        zzhe zzheVar = this.zza;
        try {
            if (zzheVar instanceof zzgm) {
                zzagzVar.zzf(((zzgm) zzheVar).zza);
            } else {
                zzagzVar.zzf(zzheVar);
            }
        } catch (RuntimeException e) {
            zzaln.zzb("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    public final void zzn(zzagp zzagpVar) {
        if (zzagpVar == this.zzl) {
            return;
        }
        zzt();
        this.zzl = zzagpVar;
        zzs();
    }

    public final zzagp zzo() {
        return this.zzl;
    }

    public final zzs zzp() {
        return this.zzm;
    }

    public final zzka zzq() {
        return this.zzn;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public final void zzr() {
        zzhe zzheVar = this.zza;
        if (zzheVar instanceof zzgm) {
            ?? r0 = this.zzf.zzd;
            char c = r0;
            if (r0 == -9223372036854775807L) {
                c = 0;
            }
            ((zzgm) zzheVar).zza(0L, c);
        }
    }
}
