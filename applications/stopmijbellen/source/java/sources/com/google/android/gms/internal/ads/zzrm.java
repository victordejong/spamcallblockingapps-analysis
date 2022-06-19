package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.util.Log;
import com.facebook.ads.AdError;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrm.class */
public final class zzrm implements zzxt {
    private zzab zzA;
    private boolean zzB;
    private boolean zzC;
    private zznl zzD;
    private final zzrg zza;
    private final zznk zzd;
    private final zzne zze;
    private final Looper zzf;
    private zzrl zzg;
    private zzab zzh;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private boolean zzw;
    private zzab zzz;
    private final zzri zzb = new zzri();
    private int zzi = 1000;
    private int[] zzj = new int[1000];
    private long[] zzk = new long[1000];
    private long[] zzn = new long[1000];
    private int[] zzm = new int[1000];
    private int[] zzl = new int[1000];
    private zzxs[] zzo = new zzxs[1000];
    private final zzrt<zzrk> zzc = new zzrt<>(zzrh.zza);
    private long zzt = Long.MIN_VALUE;
    private long zzu = Long.MIN_VALUE;
    private long zzv = Long.MIN_VALUE;
    private boolean zzy = true;
    private boolean zzx = true;

    public zzrm(zztk zztkVar, Looper looper, zznk zznkVar, zzne zzneVar, byte[] bArr) {
        this.zzf = looper;
        this.zzd = zznkVar;
        this.zze = zzneVar;
        this.zza = new zzrg(zztkVar, null);
    }

    private final int zzA(int i) {
        int i2 = this.zzr + i;
        int i3 = this.zzi;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private final int zzB(zzhr zzhrVar, zzda zzdaVar, boolean z, boolean z2, zzri zzriVar) {
        synchronized (this) {
            zzdaVar.zzc = false;
            if (!zzJ()) {
                if (!z2 && !this.zzw) {
                    zzab zzabVar = this.zzA;
                    if (zzabVar == null || (!z && zzabVar == this.zzh)) {
                        return -3;
                    }
                    zzG(zzabVar, zzhrVar);
                    return -5;
                }
                zzdaVar.zzc(4);
                return -4;
            }
            zzab zzabVar2 = this.zzc.zza(this.zzq + this.zzs).zza;
            if (!z && zzabVar2 == this.zzh) {
                int zzA = zzA(this.zzs);
                if (!zzK(zzA)) {
                    zzdaVar.zzc = true;
                    return -3;
                }
                zzdaVar.zzc(this.zzm[zzA]);
                long j = this.zzn[zzA];
                zzdaVar.zzd = j;
                if (j < this.zzt) {
                    zzdaVar.zza(Integer.MIN_VALUE);
                }
                zzriVar.zza = this.zzl[zzA];
                zzriVar.zzb = this.zzk[zzA];
                zzriVar.zzc = this.zzo[zzA];
                return -4;
            }
            zzG(zzabVar2, zzhrVar);
            return -5;
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
                    int zzz = zzz(i2, i3, j, false);
                    if (zzz == -1) {
                        return -1L;
                    }
                    return zzE(zzz);
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
            return zzE(i);
        }
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    private final long zzE(int i) {
        int i2;
        long j = this.zzu;
        char c = 0;
        if (i != 0) {
            int zzA = zzA(i - 1);
            int i3 = 0;
            while (true) {
                char c2 = c;
                c = c2;
                if (i3 >= i) {
                    break;
                }
                c = Math.max((long) c2, this.zzn[zzA]);
                if ((this.zzm[zzA] & 1) != 0) {
                    break;
                }
                int i4 = zzA - 1;
                zzA = i4;
                if (i4 == -1) {
                    zzA = this.zzi - 1;
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
        this.zzc.zze(i5);
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

    private final void zzF(long j, int i, long j2, int i2, zzxs zzxsVar) {
        synchronized (this) {
            int i3 = this.zzp;
            if (i3 > 0) {
                int zzA = zzA(i3 - 1);
                zzdy.zzd(this.zzk[zzA] + ((long) this.zzl[zzA]) <= j2);
            }
            this.zzw = (536870912 & i) != 0;
            this.zzv = Math.max(this.zzv, j);
            int zzA2 = zzA(this.zzp);
            this.zzn[zzA2] = j;
            this.zzk[zzA2] = j2;
            this.zzl[zzA2] = i2;
            this.zzm[zzA2] = i;
            this.zzo[zzA2] = zzxsVar;
            this.zzj[zzA2] = 0;
            if (this.zzc.zzf() || !this.zzc.zzb().zza.equals(this.zzA)) {
                zznj zznjVar = zznj.zzb;
                zzrt<zzrk> zzrtVar = this.zzc;
                int i4 = this.zzq;
                int i5 = this.zzp;
                zzab zzabVar = this.zzA;
                Objects.requireNonNull(zzabVar);
                zzrtVar.zzc(i4 + i5, new zzrk(zzabVar, zznjVar, null));
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
                zzxs[] zzxsVarArr = new zzxs[i8];
                int i9 = this.zzr;
                int i10 = i7 - i9;
                System.arraycopy(this.zzk, i9, jArr, 0, i10);
                System.arraycopy(this.zzn, this.zzr, jArr2, 0, i10);
                System.arraycopy(this.zzm, this.zzr, iArr2, 0, i10);
                System.arraycopy(this.zzl, this.zzr, iArr3, 0, i10);
                System.arraycopy(this.zzo, this.zzr, zzxsVarArr, 0, i10);
                System.arraycopy(this.zzj, this.zzr, iArr, 0, i10);
                int i11 = this.zzr;
                System.arraycopy(this.zzk, 0, jArr, i10, i11);
                System.arraycopy(this.zzn, 0, jArr2, i10, i11);
                System.arraycopy(this.zzm, 0, iArr2, i10, i11);
                System.arraycopy(this.zzl, 0, iArr3, i10, i11);
                System.arraycopy(this.zzo, 0, zzxsVarArr, i10, i11);
                System.arraycopy(this.zzj, 0, iArr, i10, i11);
                this.zzk = jArr;
                this.zzn = jArr2;
                this.zzm = iArr2;
                this.zzl = iArr3;
                this.zzo = zzxsVarArr;
                this.zzj = iArr;
                this.zzr = 0;
                this.zzi = i8;
            }
        }
    }

    private final void zzG(zzab zzabVar, zzhr zzhrVar) {
        zzab zzabVar2 = this.zzh;
        zzs zzsVar = zzabVar2 == null ? null : zzabVar2.zzp;
        this.zzh = zzabVar;
        zzs zzsVar2 = zzabVar.zzp;
        zzhrVar.zza = zzabVar.zzc(this.zzd.zza(zzabVar));
        zzhrVar.zzb = this.zzD;
        if (zzabVar2 == null || !zzfn.zzP(zzsVar, zzsVar2)) {
            zznl zznlVar = zzabVar.zzp == null ? null : new zznl(new zznc(new zznn(1), AdError.MEDIAVIEW_MISSING_ERROR_CODE));
            this.zzD = zznlVar;
            zzhrVar.zzb = zznlVar;
        }
    }

    private final void zzH() {
        if (this.zzD != null) {
            this.zzD = null;
            this.zzh = null;
        }
    }

    private final void zzI() {
        synchronized (this) {
            this.zzs = 0;
            this.zza.zzg();
        }
    }

    private final boolean zzJ() {
        return this.zzs != this.zzp;
    }

    private final boolean zzK(int i) {
        boolean z = false;
        if (this.zzD == null) {
            z = true;
        } else if ((this.zzm[i] & 1073741824) == 0) {
            return false;
        }
        return z;
    }

    private final boolean zzL(zzab zzabVar) {
        synchronized (this) {
            this.zzy = false;
            if (zzfn.zzP(zzabVar, this.zzA)) {
                return false;
            }
            if (this.zzc.zzf() || !this.zzc.zzb().zza.equals(zzabVar)) {
                this.zzA = zzabVar;
            } else {
                this.zzA = this.zzc.zzb().zza;
            }
            zzab zzabVar2 = this.zzA;
            this.zzB = zzbi.zzf(zzabVar2.zzm, zzabVar2.zzj);
            this.zzC = false;
            return true;
        }
    }

    public static /* synthetic */ void zzl(zzrk zzrkVar) {
        zznj zznjVar = zzrkVar.zzb;
        int i = zzni.zza;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        if ((r5.zzm[r13] & 1) != 0) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzz(int r6, int r7, long r8, boolean r10) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrm.zzz(int, int, long, boolean):int");
    }

    public final int zza() {
        return this.zzq + this.zzs;
    }

    public final int zzb(long j, boolean z) {
        synchronized (this) {
            int zzA = zzA(this.zzs);
            if (zzJ() && j >= this.zzn[zzA]) {
                if (j > this.zzv && z) {
                    return this.zzp - this.zzs;
                }
                int zzz = zzz(zzA, this.zzp - this.zzs, j, true);
                if (zzz != -1) {
                    return zzz;
                }
                return 0;
            }
            return 0;
        }
    }

    public final int zzc() {
        return this.zzq + this.zzp;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
        if (r0 != 0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzd(com.google.android.gms.internal.ads.zzhr r8, com.google.android.gms.internal.ads.zzda r9, int r10, boolean r11) {
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
            com.google.android.gms.internal.ads.zzri r5 = r5.zzb
            int r0 = r0.zzB(r1, r2, r3, r4, r5)
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            r1 = -4
            if (r0 != r1) goto L78
            r0 = r9
            boolean r0 = r0.zzg()
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
            com.google.android.gms.internal.ads.zzrg r0 = r0.zza
            r1 = r9
            r2 = r7
            com.google.android.gms.internal.ads.zzri r2 = r2.zzb
            r0.zzd(r1, r2)
            goto L74
        L50:
            r0 = r7
            com.google.android.gms.internal.ads.zzrg r0 = r0.zza
            r1 = r9
            r2 = r7
            com.google.android.gms.internal.ads.zzri r2 = r2.zzb
            r0.zze(r1, r2)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrm.zzd(com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzda, int, boolean):int");
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final /* synthetic */ int zze(zzdg zzdgVar, int i, boolean z) {
        return zzxr.zza(this, zzdgVar, i, true);
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final int zzf(zzdg zzdgVar, int i, boolean z, int i2) throws IOException {
        return this.zza.zza(zzdgVar, i, z);
    }

    public final long zzg() {
        long j;
        synchronized (this) {
            j = this.zzv;
        }
        return j;
    }

    public final zzab zzh() {
        synchronized (this) {
            if (this.zzy) {
                return null;
            }
            return this.zzA;
        }
    }

    public final void zzi(long j, boolean z, boolean z2) {
        this.zza.zzc(zzC(j, false, z2));
    }

    public final void zzj() {
        this.zza.zzc(zzD());
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final void zzk(zzab zzabVar) {
        this.zzz = zzabVar;
        boolean zzL = zzL(zzabVar);
        zzrl zzrlVar = this.zzg;
        if (zzrlVar == null || !zzL) {
            return;
        }
        zzrlVar.zzJ(zzabVar);
    }

    public final void zzm() throws IOException {
        zznl zznlVar = this.zzD;
        if (zznlVar == null) {
            return;
        }
        throw zznlVar.zza();
    }

    public final void zzn() {
        zzj();
        zzH();
    }

    public final void zzo() {
        zzp(true);
        zzH();
    }

    public final void zzp(boolean z) {
        this.zza.zzf();
        this.zzp = 0;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzx = true;
        this.zzt = Long.MIN_VALUE;
        this.zzu = Long.MIN_VALUE;
        this.zzv = Long.MIN_VALUE;
        this.zzw = false;
        this.zzc.zzd();
        if (z) {
            this.zzz = null;
            this.zzA = null;
            this.zzy = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final /* synthetic */ void zzq(zzfd zzfdVar, int i) {
        zzxr.zzb(this, zzfdVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final void zzr(zzfd zzfdVar, int i, int i2) {
        this.zza.zzh(zzfdVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final void zzs(long j, int i, int i2, int i3, zzxs zzxsVar) {
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
                    Log.w("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(this.zzA)));
                    this.zzC = true;
                }
                i5 = i | 1;
            }
        }
        zzF(j, i5, (this.zza.zzb() - i2) - i3, i2, zzxsVar);
    }

    public final void zzt(long j) {
        this.zzt = j;
    }

    public final void zzu(zzrl zzrlVar) {
        this.zzg = zzrlVar;
    }

    public final void zzv(int i) {
        synchronized (this) {
            boolean z = false;
            if (i >= 0) {
                z = false;
                if (this.zzs + i <= this.zzp) {
                    z = true;
                }
            }
            zzdy.zzd(z);
            this.zzs += i;
        }
    }

    public final boolean zzw() {
        boolean z;
        synchronized (this) {
            z = this.zzw;
        }
        return z;
    }

    public final boolean zzx(boolean z) {
        synchronized (this) {
            if (zzJ()) {
                if (this.zzc.zza(this.zzq + this.zzs).zza != this.zzh) {
                    return true;
                }
                return zzK(zzA(this.zzs));
            }
            boolean z2 = true;
            if (!z) {
                z2 = true;
                if (!this.zzw) {
                    zzab zzabVar = this.zzA;
                    if (zzabVar == null) {
                        z2 = false;
                    } else if (zzabVar == this.zzh) {
                        return false;
                    } else {
                        z2 = true;
                    }
                }
            }
            return z2;
        }
    }

    public final boolean zzy(long j, boolean z) {
        synchronized (this) {
            zzI();
            int zzA = zzA(this.zzs);
            if (!zzJ() || j < this.zzn[zzA] || (j > this.zzv && !z)) {
                return false;
            }
            int zzz = zzz(zzA, this.zzp - this.zzs, j, true);
            if (zzz == -1) {
                return false;
            }
            this.zzt = j;
            this.zzs += zzz;
            return true;
        }
    }
}
