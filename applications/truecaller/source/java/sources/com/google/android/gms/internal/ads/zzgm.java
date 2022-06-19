package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgm.class */
public final class zzgm implements zzhe, zzhd {
    public final zzhe zza;
    public long zzb;
    private zzhd zzc;
    private zzgl[] zzd = new zzgl[0];
    private long zze = 0;

    public zzgm(zzhe zzheVar, boolean z, long j, long j2) {
        this.zza = zzheVar;
        this.zzb = j2;
    }

    public final void zza(long j, long j2) {
        this.zzb = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzb(zzhd zzhdVar, long j) {
        this.zzc = zzhdVar;
        this.zza.zzb(this, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzc() throws IOException {
        this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final zzs zzd() {
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zze(long j, boolean z) {
        this.zza.zze(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final void zzf(long j) {
        this.zza.zzf(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
        if (r0 <= r0) goto L21;
     */
    @Override // com.google.android.gms.internal.ads.zzhe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzg() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.zzo()
            if (r0 == 0) goto L24
            r0 = r5
            long r0 = r0.zze
            r6 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zze = r1
            r0 = r5
            long r0 = r0.zzg()
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
            com.google.android.gms.internal.ads.zzhe r0 = r0.zza
            long r0 = r0.zzg()
            r6 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3a
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L3a:
            r0 = 0
            r10 = r0
            r0 = r6
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
            com.google.android.gms.internal.ads.zzakt.zzd(r0)
            r0 = r5
            long r0 = r0.zzb
            r8 = r0
            r0 = r8
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L68
            r0 = r10
            r11 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6b
        L68:
            r0 = 1
            r11 = r0
        L6b:
            r0 = r11
            com.google.android.gms.internal.ads.zzakt.zzd(r0)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgm.zzg():long");
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final long zzh() {
        long zzh = this.zza.zzh();
        if (zzh != Long.MIN_VALUE) {
            long j = this.zzb;
            if (j != Long.MIN_VALUE && zzh >= j) {
                return Long.MIN_VALUE;
            }
            return zzh;
        }
        return Long.MIN_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0066, code lost:
        if (r0 <= r0) goto L17;
     */
    @Override // com.google.android.gms.internal.ads.zzhe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzi(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zze = r1
            r0 = r5
            com.google.android.gms.internal.ads.zzgl[] r0 = r0.zzd
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
            r0.zza()
        L2d:
            int r11 = r11 + 1
            goto L16
        L33:
            r0 = r5
            com.google.android.gms.internal.ads.zzhe r0 = r0.zza
            r1 = r6
            long r0 = r0.zzi(r1)
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
            com.google.android.gms.internal.ads.zzakt.zzd(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgm.zzi(long):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
        if (r0 != r10.zzg) goto L12;
     */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzhe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzj(long r8, com.google.android.gms.internal.ads.zzahz r10) {
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
            long r0 = com.google.android.gms.internal.ads.zzamq.zzy(r0, r1, r2)
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
            long r0 = com.google.android.gms.internal.ads.zzamq.zzy(r0, r1, r2)
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
            com.google.android.gms.internal.ads.zzahz r0 = new com.google.android.gms.internal.ads.zzahz
            r1 = r0
            r2 = r11
            r3 = r15
            r1.<init>(r2, r3)
            r17 = r0
        L62:
            r0 = r7
            com.google.android.gms.internal.ads.zzhe r0 = r0.zza
            r1 = r8
            r2 = r17
            long r0 = r0.zzj(r1, r2)
            return r0
        L6f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgm.zzj(long, com.google.android.gms.internal.ads.zzahz):long");
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final long zzk() {
        long zzk = this.zza.zzk();
        if (zzk != Long.MIN_VALUE) {
            long j = this.zzb;
            if (j != Long.MIN_VALUE && zzk >= j) {
                return Long.MIN_VALUE;
            }
            return zzk;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final boolean zzl(long j) {
        return this.zza.zzl(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final boolean zzm() {
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzn(zzhe zzheVar) {
        zzhd zzhdVar = this.zzc;
        Objects.requireNonNull(zzhdVar);
        zzhdVar.zzn(this);
    }

    public final boolean zzo() {
        return this.zze != -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final /* bridge */ /* synthetic */ void zzp(zzhe zzheVar) {
        zzhd zzhdVar = this.zzc;
        Objects.requireNonNull(zzhdVar);
        zzhdVar.zzp(this);
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzq(zzjg[] zzjgVarArr, boolean[] zArr, zziu[] zziuVarArr, boolean[] zArr2, long j) {
        int length = zziuVarArr.length;
        this.zzd = new zzgl[length];
        zziu[] zziuVarArr2 = new zziu[length];
        int i = 0;
        while (true) {
            zziu zziuVar = null;
            if (i >= zziuVarArr.length) {
                break;
            }
            zzgl[] zzglVarArr = this.zzd;
            zzgl zzglVar = (zzgl) zziuVarArr[i];
            zzglVarArr[i] = zzglVar;
            if (zzglVar != null) {
                zziuVar = zzglVar.zza;
            }
            zziuVarArr2[i] = zziuVar;
            i++;
        }
        long zzq = this.zza.zzq(zzjgVarArr, zArr, zziuVarArr2, zArr2, j);
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
        zzakt.zzd(z);
        for (int i2 = 0; i2 < zziuVarArr.length; i2++) {
            zziu zziuVar2 = zziuVarArr2[i2];
            if (zziuVar2 == null) {
                this.zzd[i2] = null;
            } else {
                zzgl[] zzglVarArr2 = this.zzd;
                zzgl zzglVar2 = zzglVarArr2[i2];
                if (zzglVar2 == null || zzglVar2.zza != zziuVar2) {
                    zzglVarArr2[i2] = new zzgl(this, zziuVar2);
                }
            }
            zziuVarArr[i2] = this.zzd[i2];
        }
        return zzq;
    }
}
