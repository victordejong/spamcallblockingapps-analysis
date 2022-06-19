package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasx.class */
public final class zzasx {
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private zzanm zzq;
    private int zza = 1000;
    private int[] zzb = new int[1000];
    private long[] zzc = new long[1000];
    private long[] zzf = new long[1000];
    private int[] zze = new int[1000];
    private int[] zzd = new int[1000];
    private zzapw[] zzg = new zzapw[1000];
    private zzanm[] zzh = new zzanm[1000];
    private long zzm = Long.MIN_VALUE;
    private long zzn = Long.MIN_VALUE;
    private boolean zzp = true;
    private boolean zzo = true;

    public final void zza() {
        this.zzj = 0;
        this.zzk = 0;
        this.zzl = 0;
        this.zzi = 0;
        this.zzo = true;
    }

    public final void zzb() {
        this.zzm = Long.MIN_VALUE;
        this.zzn = Long.MIN_VALUE;
    }

    public final int zzc() {
        return this.zzj + this.zzi;
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this) {
            z = this.zzi != 0;
        }
        return z;
    }

    public final zzanm zze() {
        synchronized (this) {
            if (this.zzp) {
                return null;
            }
            return this.zzq;
        }
    }

    public final long zzf() {
        long max;
        synchronized (this) {
            max = Math.max(this.zzm, this.zzn);
        }
        return max;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    public final int zzg(zzann zzannVar, zzapg zzapgVar, boolean z, boolean z2, zzanm zzanmVar, zzasw zzaswVar) {
        synchronized (this) {
            if (!zzd()) {
                if (z2) {
                    zzapgVar.zze(4);
                    return -4;
                }
                zzanm zzanmVar2 = this.zzq;
                if (zzanmVar2 == null || (!z && zzanmVar2 == zzanmVar)) {
                    return -3;
                }
                zzannVar.zza = zzanmVar2;
                return -5;
            }
            if (!z) {
                zzanm[] zzanmVarArr = this.zzh;
                int i = this.zzk;
                if (zzanmVarArr[i] == zzanmVar) {
                    if (zzapgVar.zzb == null) {
                        return -3;
                    }
                    zzapgVar.zzc = this.zzf[i];
                    zzapgVar.zze(this.zze[i]);
                    int[] iArr = this.zzd;
                    int i2 = this.zzk;
                    zzaswVar.zza = iArr[i2];
                    zzaswVar.zzb = this.zzc[i2];
                    zzaswVar.zzd = this.zzg[i2];
                    this.zzm = Math.max(this.zzm, zzapgVar.zzc);
                    int i3 = this.zzi - 1;
                    this.zzi = i3;
                    int i4 = this.zzk + 1;
                    this.zzk = i4;
                    this.zzj++;
                    int i5 = i4;
                    if (i4 == this.zza) {
                        this.zzk = 0;
                        i5 = 0;
                    }
                    zzaswVar.zzc = i3 > 0 ? this.zzc[i5] : zzaswVar.zzb + zzaswVar.zza;
                    return -4;
                }
            }
            zzannVar.zza = this.zzh[this.zzk];
            return -5;
        }
    }

    public final long zzh() {
        synchronized (this) {
            if (!zzd()) {
                return -1L;
            }
            int i = this.zzk;
            int i2 = this.zzi;
            int i3 = i + i2;
            int i4 = this.zza;
            int i5 = (i3 - 1) % i4;
            this.zzk = i3 % i4;
            this.zzj += i2;
            this.zzi = 0;
            return this.zzc[i5] + this.zzd[i5];
        }
    }

    public final long zzi(long j, boolean z) {
        synchronized (this) {
            if (zzd()) {
                long[] jArr = this.zzf;
                int i = this.zzk;
                if (j >= jArr[i]) {
                    int i2 = 0;
                    if (j > this.zzn && !z) {
                        return -1L;
                    }
                    int i3 = -1;
                    while (i != this.zzl && this.zzf[i] <= j) {
                        if (1 == (this.zze[i] & 1)) {
                            i3 = i2;
                        }
                        i = (i + 1) % this.zza;
                        i2++;
                    }
                    if (i3 == -1) {
                        return -1L;
                    }
                    int i4 = (this.zzk + i3) % this.zza;
                    this.zzk = i4;
                    this.zzj += i3;
                    this.zzi -= i3;
                    return this.zzc[i4];
                }
            }
            return -1L;
        }
    }

    public final boolean zzj(zzanm zzanmVar) {
        synchronized (this) {
            if (zzanmVar == null) {
                this.zzp = true;
                return false;
            }
            this.zzp = false;
            if (zzave.zza(zzanmVar, this.zzq)) {
                return false;
            }
            this.zzq = zzanmVar;
            return true;
        }
    }

    public final void zzk(long j, int i, long j2, int i2, zzapw zzapwVar) {
        synchronized (this) {
            if (this.zzo) {
                if ((i & 1) == 0) {
                    return;
                }
                this.zzo = false;
            }
            zzaup.zzd(!this.zzp);
            zzl(j);
            long[] jArr = this.zzf;
            int i3 = this.zzl;
            jArr[i3] = j;
            long[] jArr2 = this.zzc;
            jArr2[i3] = j2;
            this.zzd[i3] = i2;
            this.zze[i3] = i;
            this.zzg[i3] = zzapwVar;
            this.zzh[i3] = this.zzq;
            this.zzb[i3] = 0;
            int i4 = this.zzi + 1;
            this.zzi = i4;
            int i5 = this.zza;
            if (i4 != i5) {
                int i6 = i3 + 1;
                this.zzl = i6;
                if (i6 != i5) {
                    return;
                }
                this.zzl = 0;
                return;
            }
            int i7 = i5 + 1000;
            int[] iArr = new int[i7];
            long[] jArr3 = new long[i7];
            long[] jArr4 = new long[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            zzapw[] zzapwVarArr = new zzapw[i7];
            zzanm[] zzanmVarArr = new zzanm[i7];
            int i8 = this.zzk;
            int i9 = i5 - i8;
            System.arraycopy(jArr2, i8, jArr3, 0, i9);
            System.arraycopy(this.zzf, this.zzk, jArr4, 0, i9);
            System.arraycopy(this.zze, this.zzk, iArr2, 0, i9);
            System.arraycopy(this.zzd, this.zzk, iArr3, 0, i9);
            System.arraycopy(this.zzg, this.zzk, zzapwVarArr, 0, i9);
            System.arraycopy(this.zzh, this.zzk, zzanmVarArr, 0, i9);
            System.arraycopy(this.zzb, this.zzk, iArr, 0, i9);
            int i10 = this.zzk;
            System.arraycopy(this.zzc, 0, jArr3, i9, i10);
            System.arraycopy(this.zzf, 0, jArr4, i9, i10);
            System.arraycopy(this.zze, 0, iArr2, i9, i10);
            System.arraycopy(this.zzd, 0, iArr3, i9, i10);
            System.arraycopy(this.zzg, 0, zzapwVarArr, i9, i10);
            System.arraycopy(this.zzh, 0, zzanmVarArr, i9, i10);
            System.arraycopy(this.zzb, 0, iArr, i9, i10);
            this.zzc = jArr3;
            this.zzf = jArr4;
            this.zze = iArr2;
            this.zzd = iArr3;
            this.zzg = zzapwVarArr;
            this.zzh = zzanmVarArr;
            this.zzb = iArr;
            this.zzk = 0;
            int i11 = this.zza;
            this.zzl = i11;
            this.zzi = i11;
            this.zza = i7;
        }
    }

    public final void zzl(long j) {
        synchronized (this) {
            this.zzn = Math.max(this.zzn, j);
        }
    }
}
