package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznk.class */
final class zznk {
    private int length;
    private int zzbfs;
    private int zzbft;
    private int zzbfu;
    private zzht zzbfz;
    private int zzbfo = 1000;
    private int[] zzbfp = new int[1000];
    private long[] zzaov = new long[1000];
    private long[] zzaox = new long[1000];
    private int[] zzayl = new int[1000];
    private int[] zzaou = new int[1000];
    private zzkk[] zzbfq = new zzkk[1000];
    private zzht[] zzbfr = new zzht[1000];
    private long zzbfv = Long.MIN_VALUE;
    private long zzbfw = Long.MIN_VALUE;
    private boolean zzbfy = true;
    private boolean zzbfx = true;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41 */
    public final int zza(zzhv zzhvVar, zzjp zzjpVar, boolean z, boolean z2, zzht zzhtVar, zznj zznjVar) {
        synchronized (this) {
            if (!zzie()) {
                if (z2) {
                    zzjpVar.setFlags(4);
                    return -4;
                }
                zzht zzhtVar2 = this.zzbfz;
                if (zzhtVar2 == null || (!z && zzhtVar2 == zzhtVar)) {
                    return -3;
                }
                zzhvVar.zzahz = zzhtVar2;
                return -5;
            }
            if (!z && this.zzbfr[this.zzbft] == zzhtVar) {
                if (zzjpVar.zzdr == null) {
                    return -3;
                }
                zzjpVar.zzaol = this.zzaox[this.zzbft];
                zzjpVar.setFlags(this.zzayl[this.zzbft]);
                zznjVar.size = this.zzaou[this.zzbft];
                zznjVar.zzawv = this.zzaov[this.zzbft];
                zznjVar.zzarp = this.zzbfq[this.zzbft];
                this.zzbfv = Math.max(this.zzbfv, zzjpVar.zzaol);
                int i = this.length - 1;
                this.length = i;
                int i2 = this.zzbft + 1;
                this.zzbft = i2;
                this.zzbfs++;
                if (i2 == this.zzbfo) {
                    this.zzbft = 0;
                }
                zznjVar.zzbfn = i > 0 ? this.zzaov[this.zzbft] : zznjVar.zzawv + zznjVar.size;
                return -4;
            }
            zzhvVar.zzahz = this.zzbfr[this.zzbft];
            return -5;
        }
    }

    public final void zza(long j, int i, long j2, int i2, zzkk zzkkVar) {
        synchronized (this) {
            if (this.zzbfx) {
                if ((i & 1) == 0) {
                    return;
                }
                this.zzbfx = false;
            }
            zzpg.checkState(!this.zzbfy);
            zzei(j);
            long[] jArr = this.zzaox;
            int i3 = this.zzbfu;
            jArr[i3] = j;
            long[] jArr2 = this.zzaov;
            jArr2[i3] = j2;
            this.zzaou[i3] = i2;
            this.zzayl[i3] = i;
            this.zzbfq[i3] = zzkkVar;
            this.zzbfr[i3] = this.zzbfz;
            this.zzbfp[i3] = 0;
            int i4 = this.length + 1;
            this.length = i4;
            int i5 = this.zzbfo;
            if (i4 != i5) {
                int i6 = i3 + 1;
                this.zzbfu = i6;
                if (i6 == i5) {
                    this.zzbfu = 0;
                }
                return;
            }
            int i7 = i5 + 1000;
            int[] iArr = new int[i7];
            long[] jArr3 = new long[i7];
            long[] jArr4 = new long[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            zzkk[] zzkkVarArr = new zzkk[i7];
            zzht[] zzhtVarArr = new zzht[i7];
            int i8 = this.zzbft;
            int i9 = i5 - i8;
            System.arraycopy(jArr2, i8, jArr3, 0, i9);
            System.arraycopy(this.zzaox, this.zzbft, jArr4, 0, i9);
            System.arraycopy(this.zzayl, this.zzbft, iArr2, 0, i9);
            System.arraycopy(this.zzaou, this.zzbft, iArr3, 0, i9);
            System.arraycopy(this.zzbfq, this.zzbft, zzkkVarArr, 0, i9);
            System.arraycopy(this.zzbfr, this.zzbft, zzhtVarArr, 0, i9);
            System.arraycopy(this.zzbfp, this.zzbft, iArr, 0, i9);
            int i10 = this.zzbft;
            System.arraycopy(this.zzaov, 0, jArr3, i9, i10);
            System.arraycopy(this.zzaox, 0, jArr4, i9, i10);
            System.arraycopy(this.zzayl, 0, iArr2, i9, i10);
            System.arraycopy(this.zzaou, 0, iArr3, i9, i10);
            System.arraycopy(this.zzbfq, 0, zzkkVarArr, i9, i10);
            System.arraycopy(this.zzbfr, 0, zzhtVarArr, i9, i10);
            System.arraycopy(this.zzbfp, 0, iArr, i9, i10);
            this.zzaov = jArr3;
            this.zzaox = jArr4;
            this.zzayl = iArr2;
            this.zzaou = iArr3;
            this.zzbfq = zzkkVarArr;
            this.zzbfr = zzhtVarArr;
            this.zzbfp = iArr;
            this.zzbft = 0;
            int i11 = this.zzbfo;
            this.zzbfu = i11;
            this.length = i11;
            this.zzbfo = i7;
        }
    }

    public final long zzd(long j, boolean z) {
        synchronized (this) {
            if (zzie()) {
                long[] jArr = this.zzaox;
                int i = this.zzbft;
                if (j >= jArr[i]) {
                    if (j > this.zzbfw && !z) {
                        return -1L;
                    }
                    int i2 = 0;
                    int i3 = -1;
                    while (i != this.zzbfu && this.zzaox[i] <= j) {
                        if ((this.zzayl[i] & 1) != 0) {
                            i3 = i2;
                        }
                        i = (i + 1) % this.zzbfo;
                        i2++;
                    }
                    if (i3 == -1) {
                        return -1L;
                    }
                    int i4 = (this.zzbft + i3) % this.zzbfo;
                    this.zzbft = i4;
                    this.zzbfs += i3;
                    this.length -= i3;
                    return this.zzaov[i4];
                }
            }
            return -1L;
        }
    }

    public final void zzei(long j) {
        synchronized (this) {
            this.zzbfw = Math.max(this.zzbfw, j);
        }
    }

    public final boolean zzg(zzht zzhtVar) {
        synchronized (this) {
            if (zzhtVar == null) {
                this.zzbfy = true;
                return false;
            }
            this.zzbfy = false;
            if (zzpt.zza(zzhtVar, this.zzbfz)) {
                return false;
            }
            this.zzbfz = zzhtVar;
            return true;
        }
    }

    public final long zzhv() {
        long max;
        synchronized (this) {
            max = Math.max(this.zzbfv, this.zzbfw);
        }
        return max;
    }

    public final void zzib() {
        this.zzbfs = 0;
        this.zzbft = 0;
        this.zzbfu = 0;
        this.length = 0;
        this.zzbfx = true;
    }

    public final void zzic() {
        this.zzbfv = Long.MIN_VALUE;
        this.zzbfw = Long.MIN_VALUE;
    }

    public final int zzid() {
        return this.zzbfs + this.length;
    }

    public final boolean zzie() {
        boolean z;
        synchronized (this) {
            z = this.length != 0;
        }
        return z;
    }

    public final zzht zzif() {
        synchronized (this) {
            if (this.zzbfy) {
                return null;
            }
            return this.zzbfz;
        }
    }

    public final long zzig() {
        synchronized (this) {
            if (!zzie()) {
                return -1L;
            }
            int i = this.zzbft;
            int i2 = this.length;
            int i3 = this.zzbfo;
            int i4 = ((i + i2) - 1) % i3;
            this.zzbft = (i + i2) % i3;
            this.zzbfs += i2;
            this.length = 0;
            return this.zzaov[i4] + this.zzaou[i4];
        }
    }
}
