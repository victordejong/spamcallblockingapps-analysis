package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauu.class */
final class zzauu {
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private zzapg zzq;
    private int zza = 1000;
    private int[] zzb = new int[1000];
    private long[] zzc = new long[1000];
    private long[] zzf = new long[1000];
    private int[] zze = new int[1000];
    private int[] zzd = new int[1000];
    private zzarr[] zzg = new zzarr[1000];
    private zzapg[] zzh = new zzapg[1000];
    private long zzm = Long.MIN_VALUE;
    private long zzn = Long.MIN_VALUE;
    private boolean zzp = true;
    private boolean zzo = true;

    public final int zza() {
        return this.zzj + this.zzi;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    public final int zzb(zzaph zzaphVar, zzarb zzarbVar, boolean z, boolean z2, zzapg zzapgVar, zzaut zzautVar) {
        synchronized (this) {
            if (!zzl()) {
                if (z2) {
                    zzarbVar.zzc(4);
                    return -4;
                }
                zzapg zzapgVar2 = this.zzq;
                if (zzapgVar2 == null || (!z && zzapgVar2 == zzapgVar)) {
                    return -3;
                }
                zzaphVar.zza = zzapgVar2;
                return -5;
            }
            if (!z) {
                zzapg[] zzapgVarArr = this.zzh;
                int i = this.zzk;
                if (zzapgVarArr[i] == zzapgVar) {
                    if (zzarbVar.zzb == null) {
                        return -3;
                    }
                    zzarbVar.zzc = this.zzf[i];
                    zzarbVar.zzc(this.zze[i]);
                    int[] iArr = this.zzd;
                    int i2 = this.zzk;
                    zzautVar.zza = iArr[i2];
                    zzautVar.zzb = this.zzc[i2];
                    zzautVar.zzd = this.zzg[i2];
                    this.zzm = Math.max(this.zzm, zzarbVar.zzc);
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
                    zzautVar.zzc = i3 > 0 ? this.zzc[i5] : zzautVar.zzb + zzautVar.zza;
                    return -4;
                }
            }
            zzaphVar.zza = this.zzh[this.zzk];
            return -5;
        }
    }

    public final long zzc() {
        long max;
        synchronized (this) {
            max = Math.max(this.zzm, this.zzn);
        }
        return max;
    }

    public final long zzd() {
        synchronized (this) {
            if (!zzl()) {
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

    public final long zze(long j, boolean z) {
        synchronized (this) {
            if (zzl()) {
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

    public final zzapg zzf() {
        synchronized (this) {
            if (this.zzp) {
                return null;
            }
            return this.zzq;
        }
    }

    public final void zzg() {
        this.zzj = 0;
        this.zzk = 0;
        this.zzl = 0;
        this.zzi = 0;
        this.zzo = true;
    }

    public final void zzh(long j, int i, long j2, int i2, zzarr zzarrVar) {
        synchronized (this) {
            if (this.zzo) {
                if ((i & 1) == 0) {
                    return;
                }
                this.zzo = false;
            }
            zzawm.zze(!this.zzp);
            zzi(j);
            long[] jArr = this.zzf;
            int i3 = this.zzl;
            jArr[i3] = j;
            long[] jArr2 = this.zzc;
            jArr2[i3] = j2;
            this.zzd[i3] = i2;
            this.zze[i3] = i;
            this.zzg[i3] = zzarrVar;
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
            zzarr[] zzarrVarArr = new zzarr[i7];
            zzapg[] zzapgVarArr = new zzapg[i7];
            int i8 = this.zzk;
            int i9 = i5 - i8;
            System.arraycopy(jArr2, i8, jArr3, 0, i9);
            System.arraycopy(this.zzf, this.zzk, jArr4, 0, i9);
            System.arraycopy(this.zze, this.zzk, iArr2, 0, i9);
            System.arraycopy(this.zzd, this.zzk, iArr3, 0, i9);
            System.arraycopy(this.zzg, this.zzk, zzarrVarArr, 0, i9);
            System.arraycopy(this.zzh, this.zzk, zzapgVarArr, 0, i9);
            System.arraycopy(this.zzb, this.zzk, iArr, 0, i9);
            int i10 = this.zzk;
            System.arraycopy(this.zzc, 0, jArr3, i9, i10);
            System.arraycopy(this.zzf, 0, jArr4, i9, i10);
            System.arraycopy(this.zze, 0, iArr2, i9, i10);
            System.arraycopy(this.zzd, 0, iArr3, i9, i10);
            System.arraycopy(this.zzg, 0, zzarrVarArr, i9, i10);
            System.arraycopy(this.zzh, 0, zzapgVarArr, i9, i10);
            System.arraycopy(this.zzb, 0, iArr, i9, i10);
            this.zzc = jArr3;
            this.zzf = jArr4;
            this.zze = iArr2;
            this.zzd = iArr3;
            this.zzg = zzarrVarArr;
            this.zzh = zzapgVarArr;
            this.zzb = iArr;
            this.zzk = 0;
            int i11 = this.zza;
            this.zzl = i11;
            this.zzi = i11;
            this.zza = i7;
        }
    }

    public final void zzi(long j) {
        synchronized (this) {
            this.zzn = Math.max(this.zzn, j);
        }
    }

    public final void zzj() {
        this.zzm = Long.MIN_VALUE;
        this.zzn = Long.MIN_VALUE;
    }

    public final boolean zzk(zzapg zzapgVar) {
        synchronized (this) {
            if (zzapgVar == null) {
                this.zzp = true;
                return false;
            }
            this.zzp = false;
            if (zzaxb.zzo(zzapgVar, this.zzq)) {
                return false;
            }
            this.zzq = zzapgVar;
            return true;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this) {
            z = this.zzi != 0;
        }
        return z;
    }
}
