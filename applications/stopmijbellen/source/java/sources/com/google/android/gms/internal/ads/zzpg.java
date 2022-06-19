package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpg.class */
public final class zzpg implements zzpy, zzpx {
    public final zzpy zza;
    public long zzb;
    private zzpx zzc;
    private zzpf[] zzd = new zzpf[0];
    private long zze = 0;

    public zzpg(zzpy zzpyVar, boolean z, long j, long j2) {
        this.zza = zzpyVar;
        this.zzb = j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
        if (r0 != r10.zzg) goto L12;
     */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(long r8, com.google.android.gms.internal.ads.zzio r10) {
        /*
            r7 = this;
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6f
            r0 = r10
            long r0 = r0.zzf
            r1 = 0
            r2 = r8
            long r0 = com.google.android.gms.internal.ads.zzfn.zzo(r0, r1, r2)
            r11 = r0
            r0 = r10
            long r0 = r0.zzg
            r13 = r0
            r0 = r7
            long r0 = r0.zzb
            r15 = r0
            r0 = r15
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L2e
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r15 = r0
            goto L34
        L2e:
            r0 = r15
            r1 = r8
            long r0 = r0 - r1
            r15 = r0
        L34:
            r0 = r13
            r1 = 0
            r2 = r15
            long r0 = com.google.android.gms.internal.ads.zzfn.zzo(r0, r1, r2)
            r15 = r0
            r0 = r11
            r1 = r10
            long r1 = r1.zzf
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L55
            r0 = r10
            r17 = r0
            r0 = r15
            r1 = r10
            long r1 = r1.zzg
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L62
        L55:
            com.google.android.gms.internal.ads.zzio r0 = new com.google.android.gms.internal.ads.zzio
            r1 = r0
            r2 = r11
            r3 = r15
            r1.<init>(r2, r3)
            r17 = r0
        L62:
            r0 = r7
            com.google.android.gms.internal.ads.zzpy r0 = r0.zza
            r1 = r8
            r2 = r17
            long r0 = r0.zza(r1, r2)
            return r0
        L6f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpg.zza(long, com.google.android.gms.internal.ads.zzio):long");
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzb() {
        long zzb = this.zza.zzb();
        if (zzb != Long.MIN_VALUE) {
            long j = this.zzb;
            if (j != Long.MIN_VALUE && zzb >= j) {
                return Long.MIN_VALUE;
            }
            return zzb;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzc() {
        long zzc = this.zza.zzc();
        if (zzc != Long.MIN_VALUE) {
            long j = this.zzb;
            if (j != Long.MIN_VALUE && zzc >= j) {
                return Long.MIN_VALUE;
            }
            return zzc;
        }
        return Long.MIN_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
        if (r0 <= r0) goto L21;
     */
    @Override // com.google.android.gms.internal.ads.zzpy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzd() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.zzp()
            if (r0 == 0) goto L24
            r0 = r5
            long r0 = r0.zze
            r6 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zze = r1
            r0 = r5
            long r0 = r0.zzd()
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L22
            r0 = r8
            return r0
        L22:
            r0 = r6
            return r0
        L24:
            r0 = r5
            com.google.android.gms.internal.ads.zzpy r0 = r0.zza
            long r0 = r0.zzd()
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3a
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L3a:
            r0 = 0
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L49
            r0 = 1
            r11 = r0
            goto L4c
        L49:
            r0 = 0
            r11 = r0
        L4c:
            r0 = r11
            com.google.android.gms.internal.ads.zzdy.zzf(r0)
            r0 = r5
            long r0 = r0.zzb
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L68
            r0 = r10
            r11 = r0
            r0 = r8
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6b
        L68:
            r0 = 1
            r11 = r0
        L6b:
            r0 = r11
            com.google.android.gms.internal.ads.zzdy.zzf(r0)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpg.zzd():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0066, code lost:
        if (r0 <= r0) goto L17;
     */
    @Override // com.google.android.gms.internal.ads.zzpy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zze(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zze = r1
            r0 = r5
            com.google.android.gms.internal.ads.zzpf[] r0 = r0.zzd
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L16:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L33
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2d
            r0 = r12
            r0.zzc()
        L2d:
            int r11 = r11 + 1
            goto L16
        L33:
            r0 = r5
            com.google.android.gms.internal.ads.zzpy r0 = r0.zza
            r1 = r6
            long r0 = r0.zze(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L69
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L6c
            r0 = r5
            long r0 = r0.zzb
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L69
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6c
        L69:
            r0 = 1
            r15 = r0
        L6c:
            r0 = r15
            com.google.android.gms.internal.ads.zzdy.zzf(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpg.zze(long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final zzch zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final /* bridge */ /* synthetic */ void zzg(zzpy zzpyVar) {
        zzpx zzpxVar = this.zzc;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzh(long j, boolean z) {
        this.zza.zzh(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zzi(zzpy zzpyVar) {
        zzpx zzpxVar = this.zzc;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzj() throws IOException {
        this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzk(zzpx zzpxVar, long j) {
        this.zzc = zzpxVar;
        this.zza.zzk(this, j);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final void zzl(long j) {
        this.zza.zzl(j);
    }

    public final void zzm(long j, long j2) {
        this.zzb = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzn(long j) {
        return this.zza.zzn(j);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzo() {
        return this.zza.zzo();
    }

    public final boolean zzp() {
        return this.zze != -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzq(zzsb[] zzsbVarArr, boolean[] zArr, zzrn[] zzrnVarArr, boolean[] zArr2, long j) {
        int length = zzrnVarArr.length;
        this.zzd = new zzpf[length];
        zzrn[] zzrnVarArr2 = new zzrn[length];
        int i = 0;
        while (true) {
            zzrn zzrnVar = null;
            if (i >= zzrnVarArr.length) {
                break;
            }
            zzpf[] zzpfVarArr = this.zzd;
            zzpf zzpfVar = (zzpf) zzrnVarArr[i];
            zzpfVarArr[i] = zzpfVar;
            if (zzpfVar != null) {
                zzrnVar = zzpfVar.zza;
            }
            zzrnVarArr2[i] = zzrnVar;
            i++;
        }
        long zzq = this.zza.zzq(zzsbVarArr, zArr, zzrnVarArr2, zArr2, j);
        this.zze = -9223372036854775807L;
        boolean z = true;
        if (zzq != j) {
            if (zzq >= 0) {
                long j2 = this.zzb;
                z = true;
                if (j2 != Long.MIN_VALUE) {
                    if (zzq <= j2) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        zzdy.zzf(z);
        for (int i2 = 0; i2 < zzrnVarArr.length; i2++) {
            zzrn zzrnVar2 = zzrnVarArr2[i2];
            if (zzrnVar2 == null) {
                this.zzd[i2] = null;
            } else {
                zzpf[] zzpfVarArr2 = this.zzd;
                zzpf zzpfVar2 = zzpfVarArr2[i2];
                if (zzpfVar2 == null || zzpfVar2.zza != zzrnVar2) {
                    zzpfVarArr2[i2] = new zzpf(this, zzrnVar2);
                }
            }
            zzrnVarArr[i2] = this.zzd[i2];
        }
        return zzq;
    }
}
