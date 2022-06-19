package com.google.android.gms.internal.ads;

import android.os.Looper;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzit.class */
public final class zzit implements zzox {
    private zzafv zzA;
    private boolean zzB;
    private boolean zzC;
    private zzfg zzD;
    private final zzin zza;
    private final zzff zzd;
    private final zzfa zze;
    private final Looper zzf;
    private zzis zzg;
    private zzafv zzh;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private boolean zzw;
    private zzafv zzz;
    private final zziq zzb = new zziq();
    private int zzi = 1000;
    private int[] zzj = new int[1000];
    private long[] zzk = new long[1000];
    private long[] zzn = new long[1000];
    private int[] zzm = new int[1000];
    private int[] zzl = new int[1000];
    private zzow[] zzo = new zzow[1000];
    private final zzja<zzir> zzc = new zzja<>(zzio.zza);
    private long zzt = Long.MIN_VALUE;
    private long zzu = Long.MIN_VALUE;
    private long zzv = Long.MIN_VALUE;
    private boolean zzy = true;
    private boolean zzx = true;

    public zzit(zzko zzkoVar, Looper looper, zzff zzffVar, zzfa zzfaVar, byte[] bArr) {
        this.zzf = looper;
        this.zzd = zzffVar;
        this.zze = zzfaVar;
        this.zza = new zzin(zzkoVar, null);
    }

    private final int zzA(zzafw zzafwVar, zzaf zzafVar, boolean z, boolean z2, zziq zziqVar) {
        synchronized (this) {
            zzafVar.zzc = false;
            if (!zzG()) {
                if (!z2 && !this.zzw) {
                    zzafv zzafvVar = this.zzA;
                    if (zzafvVar == null || (!z && zzafvVar == this.zzh)) {
                        return -3;
                    }
                    zzH(zzafvVar, zzafwVar);
                    return -5;
                }
                zzafVar.zzf(4);
                return -4;
            }
            zzafv zzafvVar2 = this.zzc.zza(this.zzq + this.zzs).zza;
            if (!z && zzafvVar2 == this.zzh) {
                int zzL = zzL(this.zzs);
                if (!zzI(zzL)) {
                    zzafVar.zzc = true;
                    return -3;
                }
                zzafVar.zzf(this.zzm[zzL]);
                long j = this.zzn[zzL];
                zzafVar.zzd = j;
                if (j < this.zzt) {
                    zzafVar.zzg(Integer.MIN_VALUE);
                }
                zziqVar.zza = this.zzl[zzL];
                zziqVar.zzb = this.zzk[zzL];
                zziqVar.zzc = this.zzo[zzL];
                return -4;
            }
            zzH(zzafvVar2, zzafwVar);
            return -5;
        }
    }

    private final boolean zzB(zzafv zzafvVar) {
        synchronized (this) {
            this.zzy = false;
            if (zzamq.zzc(zzafvVar, this.zzA)) {
                return false;
            }
            if (this.zzc.zzf() || !this.zzc.zzc().zza.equals(zzafvVar)) {
                this.zzA = zzafvVar;
            } else {
                this.zzA = this.zzc.zzc().zza;
            }
            zzafv zzafvVar2 = this.zzA;
            this.zzB = zzalt.zzc(zzafvVar2.zzl, zzafvVar2.zzi);
            this.zzC = false;
            return true;
        }
    }

    private final long zzC(long j, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.zzp;
            if (i != 0) {
                long[] jArr = this.zzn;
                int i2 = this.zzr;
                if (j >= jArr[i2]) {
                    int i3 = i;
                    if (z2) {
                        int i4 = this.zzs;
                        i3 = i;
                        if (i4 != i) {
                            i3 = i4 + 1;
                        }
                    }
                    int zzJ = zzJ(i2, i3, j, false);
                    if (zzJ == -1) {
                        return -1L;
                    }
                    return zzK(zzJ);
                }
            }
            return -1L;
        }
    }

    private final long zzD() {
        synchronized (this) {
            int i = this.zzp;
            if (i == 0) {
                return -1L;
            }
            return zzK(i);
        }
    }

    private final void zzE() {
        if (this.zzD != null) {
            this.zzD = null;
            this.zzh = null;
        }
    }

    private final void zzF(long j, int i, long j2, int i2, zzow zzowVar) {
        synchronized (this) {
            int i3 = this.zzp;
            if (i3 > 0) {
                int zzL = zzL(i3 - 1);
                zzakt.zza(this.zzk[zzL] + ((long) this.zzl[zzL]) <= j2);
            }
            this.zzw = (536870912 & i) != 0;
            this.zzv = Math.max(this.zzv, j);
            int zzL2 = zzL(this.zzp);
            this.zzn[zzL2] = j;
            this.zzk[zzL2] = j2;
            this.zzl[zzL2] = i2;
            this.zzm[zzL2] = i;
            this.zzo[zzL2] = zzowVar;
            this.zzj[zzL2] = 0;
            if (this.zzc.zzf() || !this.zzc.zzc().zza.equals(this.zzA)) {
                zzfe zzfeVar = zzfe.zzb;
                zzja<zzir> zzjaVar = this.zzc;
                int i4 = this.zzq;
                int i5 = this.zzp;
                zzafv zzafvVar = this.zzA;
                Objects.requireNonNull(zzafvVar);
                zzjaVar.zzb(i4 + i5, new zzir(zzafvVar, zzfeVar, null));
            }
            int i6 = this.zzp + 1;
            this.zzp = i6;
            int i7 = this.zzi;
            if (i6 == i7) {
                int i8 = i7 + 1000;
                int[] iArr = new int[i8];
                long[] jArr = new long[i8];
                long[] jArr2 = new long[i8];
                int[] iArr2 = new int[i8];
                int[] iArr3 = new int[i8];
                zzow[] zzowVarArr = new zzow[i8];
                int i9 = this.zzr;
                int i10 = i7 - i9;
                System.arraycopy(this.zzk, i9, jArr, 0, i10);
                System.arraycopy(this.zzn, this.zzr, jArr2, 0, i10);
                System.arraycopy(this.zzm, this.zzr, iArr2, 0, i10);
                System.arraycopy(this.zzl, this.zzr, iArr3, 0, i10);
                System.arraycopy(this.zzo, this.zzr, zzowVarArr, 0, i10);
                System.arraycopy(this.zzj, this.zzr, iArr, 0, i10);
                int i11 = this.zzr;
                System.arraycopy(this.zzk, 0, jArr, i10, i11);
                System.arraycopy(this.zzn, 0, jArr2, i10, i11);
                System.arraycopy(this.zzm, 0, iArr2, i10, i11);
                System.arraycopy(this.zzl, 0, iArr3, i10, i11);
                System.arraycopy(this.zzo, 0, zzowVarArr, i10, i11);
                System.arraycopy(this.zzj, 0, iArr, i10, i11);
                this.zzk = jArr;
                this.zzn = jArr2;
                this.zzm = iArr2;
                this.zzl = iArr3;
                this.zzo = zzowVarArr;
                this.zzj = iArr;
                this.zzr = 0;
                this.zzi = i8;
            }
        }
    }

    private final boolean zzG() {
        return this.zzs != this.zzp;
    }

    private final void zzH(zzafv zzafvVar, zzafw zzafwVar) {
        zzafv zzafvVar2 = this.zzh;
        zzn zznVar = zzafvVar2 == null ? null : zzafvVar2.zzo;
        this.zzh = zzafvVar;
        zzn zznVar2 = zzafvVar.zzo;
        zzafwVar.zza = zzafvVar.zzb(this.zzd.zza(zzafvVar));
        zzafwVar.zzb = this.zzD;
        if (zzafvVar2 == null || !zzamq.zzc(zznVar, zznVar2)) {
            zzfg zzfgVar = zzafvVar.zzo == null ? null : new zzfg(new zzey(new zzfi(1), 6001));
            this.zzD = zzfgVar;
            zzafwVar.zzb = zzfgVar;
        }
    }

    private final boolean zzI(int i) {
        boolean z = false;
        if (this.zzD == null) {
            z = true;
        } else if ((this.zzm[i] & 1073741824) == 0) {
            return false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        if ((r5.zzm[r13] & 1) != 0) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzJ(int r6, int r7, long r8, boolean r10) {
        /*
            r5 = this;
            r0 = -1
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r6
            r13 = r0
            r0 = r12
            r6 = r0
        Lc:
            r0 = r11
            r12 = r0
            r0 = r6
            r1 = r7
            if (r0 >= r1) goto L71
            r0 = r5
            long[] r0 = r0.zzn
            r1 = r13
            r0 = r0[r1]
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r14 = r0
            r0 = r11
            r12 = r0
            r0 = r14
            if (r0 > 0) goto L71
            r0 = r10
            if (r0 == 0) goto L3e
            r0 = r11
            r12 = r0
            r0 = r5
            int[] r0 = r0.zzm
            r1 = r13
            r0 = r0[r1]
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L51
        L3e:
            r0 = r6
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r14
            if (r0 != 0) goto L51
            r0 = r11
            r12 = r0
            goto L71
        L51:
            r0 = r13
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = r5
            int r1 = r1.zzi
            if (r0 != r1) goto L67
            r0 = 0
            r13 = r0
        L67:
            int r6 = r6 + 1
            r0 = r12
            r11 = r0
            goto Lc
        L71:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzit.zzJ(int, int, long, boolean):int");
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    private final long zzK(int i) {
        int i2;
        long j = this.zzu;
        char c = 0;
        if (i != 0) {
            int zzL = zzL(i - 1);
            int i3 = 0;
            while (true) {
                char c2 = c;
                c = c2;
                if (i3 >= i) {
                    break;
                }
                c = Math.max((long) c2, this.zzn[zzL]);
                if ((this.zzm[zzL] & 1) != 0) {
                    break;
                }
                int i4 = zzL - 1;
                zzL = i4;
                if (i4 == -1) {
                    zzL = this.zzi - 1;
                }
                i3++;
            }
        }
        this.zzu = Math.max(j, (long) c);
        this.zzp -= i;
        int i5 = this.zzq + i;
        this.zzq = i5;
        int i6 = this.zzr + i;
        this.zzr = i6;
        int i7 = this.zzi;
        if (i6 >= i7) {
            this.zzr = i6 - i7;
        }
        int i8 = this.zzs - i;
        this.zzs = i8;
        if (i8 < 0) {
            this.zzs = 0;
        }
        this.zzc.zzd(i5);
        if (this.zzp == 0) {
            int i9 = this.zzr;
            int i10 = i9;
            if (i9 == 0) {
                i10 = this.zzi;
            }
            return this.zzk[i10 - 1] + this.zzl[i2];
        }
        return this.zzk[this.zzr];
    }

    private final int zzL(int i) {
        int i2 = this.zzr + i;
        int i3 = this.zzi;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private final void zzz() {
        synchronized (this) {
            this.zzs = 0;
            this.zza.zzb();
        }
    }

    public final void zza() {
        zzb(true);
        zzE();
    }

    public final void zzb(boolean z) {
        this.zza.zza();
        this.zzp = 0;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzx = true;
        this.zzt = Long.MIN_VALUE;
        this.zzu = Long.MIN_VALUE;
        this.zzv = Long.MIN_VALUE;
        this.zzw = false;
        this.zzc.zze();
        if (z) {
            this.zzz = null;
            this.zzA = null;
            this.zzy = true;
        }
    }

    public final void zzc(long j) {
        this.zzt = j;
    }

    public final int zzd() {
        return this.zzq + this.zzp;
    }

    public final void zze() {
        zzq();
        zzE();
    }

    public final void zzf() throws IOException {
        zzfg zzfgVar = this.zzD;
        if (zzfgVar == null) {
            return;
        }
        throw zzfgVar.zza();
    }

    public final int zzg() {
        return this.zzq + this.zzs;
    }

    public final zzafv zzh() {
        synchronized (this) {
            if (this.zzy) {
                return null;
            }
            return this.zzA;
        }
    }

    public final long zzi() {
        long j;
        synchronized (this) {
            j = this.zzv;
        }
        return j;
    }

    public final boolean zzj() {
        boolean z;
        synchronized (this) {
            z = this.zzw;
        }
        return z;
    }

    public final boolean zzk(boolean z) {
        synchronized (this) {
            if (zzG()) {
                if (this.zzc.zza(this.zzq + this.zzs).zza != this.zzh) {
                    return true;
                }
                return zzI(zzL(this.zzs));
            }
            boolean z2 = true;
            if (!z) {
                z2 = true;
                if (!this.zzw) {
                    zzafv zzafvVar = this.zzA;
                    if (zzafvVar == null) {
                        z2 = false;
                    } else if (zzafvVar == this.zzh) {
                        return false;
                    } else {
                        z2 = true;
                    }
                }
            }
            return z2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
        if (r0 != 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzl(com.google.android.gms.internal.ads.zzafw r8, com.google.android.gms.internal.ads.zzaf r9, int r10, boolean r11) {
        /*
            r7 = this;
            r0 = r10
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto Lc
            r0 = 1
            r12 = r0
            goto Lf
        Lc:
            r0 = 0
            r12 = r0
        Lf:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r12
            r4 = r11
            r5 = r7
            com.google.android.gms.internal.ads.zziq r5 = r5.zzb
            int r0 = r0.zzA(r1, r2, r3, r4, r5)
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            r1 = -4
            if (r0 != r1) goto L78
            r0 = r9
            boolean r0 = r0.zzc()
            if (r0 != 0) goto L74
            r0 = r10
            r1 = 1
            r0 = r0 & r1
            r14 = r0
            r0 = r10
            r1 = 4
            r0 = r0 & r1
            if (r0 != 0) goto L5f
            r0 = r14
            if (r0 == 0) goto L50
            r0 = r7
            com.google.android.gms.internal.ads.zzin r0 = r0.zza
            r1 = r9
            r2 = r7
            com.google.android.gms.internal.ads.zziq r2 = r2.zzb
            r0.zzd(r1, r2)
            goto L74
        L50:
            r0 = r7
            com.google.android.gms.internal.ads.zzin r0 = r0.zza
            r1 = r9
            r2 = r7
            com.google.android.gms.internal.ads.zziq r2 = r2.zzb
            r0.zzc(r1, r2)
            goto L67
        L5f:
            r0 = r14
            if (r0 == 0) goto L67
            goto L74
        L67:
            r0 = r7
            r1 = r7
            int r1 = r1.zzs
            r2 = 1
            int r1 = r1 + r2
            r0.zzs = r1
            r0 = -4
            return r0
        L74:
            r0 = -4
            r14 = r0
        L78:
            r0 = r14
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzit.zzl(com.google.android.gms.internal.ads.zzafw, com.google.android.gms.internal.ads.zzaf, int, boolean):int");
    }

    public final boolean zzm(long j, boolean z) {
        synchronized (this) {
            zzz();
            int zzL = zzL(this.zzs);
            if (!zzG() || j < this.zzn[zzL] || (j > this.zzv && !z)) {
                return false;
            }
            int zzJ = zzJ(zzL, this.zzp - this.zzs, j, true);
            if (zzJ == -1) {
                return false;
            }
            this.zzt = j;
            this.zzs += zzJ;
            return true;
        }
    }

    public final int zzn(long j, boolean z) {
        synchronized (this) {
            int zzL = zzL(this.zzs);
            if (zzG() && j >= this.zzn[zzL]) {
                if (j > this.zzv && z) {
                    return this.zzp - this.zzs;
                }
                int zzJ = zzJ(zzL, this.zzp - this.zzs, j, true);
                if (zzJ != -1) {
                    return zzJ;
                }
                return 0;
            }
            return 0;
        }
    }

    public final void zzo(int i) {
        synchronized (this) {
            boolean z = false;
            if (i >= 0) {
                z = false;
                if (this.zzs + i <= this.zzp) {
                    z = true;
                }
            }
            zzakt.zza(z);
            this.zzs += i;
        }
    }

    public final void zzp(long j, boolean z, boolean z2) {
        this.zza.zze(zzC(j, false, z2));
    }

    public final void zzq() {
        this.zza.zze(zzD());
    }

    public final void zzr(zzis zzisVar) {
        this.zzg = zzisVar;
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzs(zzafv zzafvVar) {
        this.zzz = zzafvVar;
        boolean zzB = zzB(zzafvVar);
        zzis zzisVar = this.zzg;
        if (zzisVar == null || !zzB) {
            return;
        }
        zzisVar.zzF(zzafvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final int zzt(zzah zzahVar, int i, boolean z, int i2) throws IOException {
        return this.zza.zzg(zzahVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzu(zzamf zzamfVar, int i, int i2) {
        this.zza.zzh(zzamfVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzv(long j, int i, int i2, int i3, zzow zzowVar) {
        int i4 = i & 1;
        if (this.zzx) {
            if (i4 == 0) {
                return;
            }
            this.zzx = false;
        }
        int i5 = i;
        if (this.zzB) {
            if (j < this.zzt) {
                return;
            }
            i5 = i;
            if (i4 == 0) {
                if (!this.zzC) {
                    String valueOf = String.valueOf(this.zzA);
                    valueOf.length();
                    "Overriding unexpected non-sync sample for format: ".concat(valueOf);
                    this.zzC = true;
                }
                i5 = i | 1;
            }
        }
        zzF(j, i5, (this.zza.zzf() - i2) - i3, i2, zzowVar);
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final int zzx(zzah zzahVar, int i, boolean z) throws IOException {
        return zzov.zza(this, zzahVar, i, true);
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzy(zzamf zzamfVar, int i) {
        zzov.zzb(this, zzamfVar, i);
    }
}
