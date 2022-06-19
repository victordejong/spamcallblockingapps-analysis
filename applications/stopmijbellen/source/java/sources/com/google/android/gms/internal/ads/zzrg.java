package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrg.class */
final class zzrg {
    private final zzfd zza = new zzfd(32);
    private zzrf zzb;
    private zzrf zzc;
    private zzrf zzd;
    private long zze;
    private final zztk zzf;

    public zzrg(zztk zztkVar, byte[] bArr) {
        this.zzf = zztkVar;
        zzrf zzrfVar = new zzrf(0L, 65536);
        this.zzb = zzrfVar;
        this.zzc = zzrfVar;
        this.zzd = zzrfVar;
    }

    private final int zzi(int i) {
        zzrf zzrfVar = this.zzd;
        if (!zzrfVar.zzc) {
            zzsx zzb = this.zzf.zzb();
            zzrf zzrfVar2 = new zzrf(this.zzd.zzb, 65536);
            zzrfVar.zzd = zzb;
            zzrfVar.zze = zzrfVar2;
            zzrfVar.zzc = true;
        }
        return Math.min(i, (int) (this.zzd.zzb - this.zze));
    }

    private static zzrf zzj(zzrf zzrfVar, long j) {
        while (j >= zzrfVar.zzb) {
            zzrfVar = zzrfVar.zze;
        }
        return zzrfVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    private static zzrf zzk(zzrf zzrfVar, long j, ByteBuffer byteBuffer, int i) {
        zzrf zzj = zzj(zzrfVar, j);
        while (i > 0) {
            int min = Math.min(i, (int) (zzj.zzb - j));
            byteBuffer.put(zzj.zzd.zza, zzj.zza(j), min);
            int i2 = i - min;
            ?? r0 = j + min;
            j = r0;
            i = i2;
            if (r0 == zzj.zzb) {
                zzj = zzj.zze;
                j = r0;
                i = i2;
            }
        }
        return zzj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    private static zzrf zzl(zzrf zzrfVar, long j, byte[] bArr, int i) {
        zzrf zzj = zzj(zzrfVar, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (zzj.zzb - j));
            System.arraycopy(zzj.zzd.zza, zzj.zza(j), bArr, i - i2, min);
            int i3 = i2 - min;
            ?? r0 = j + min;
            i2 = i3;
            j = r0;
            if (r0 == zzj.zzb) {
                zzj = zzj.zze;
                i2 = i3;
                j = r0;
            }
        }
        return zzj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00bb, code lost:
        if (r0.length < r18) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d9, code lost:
        if (r0.length < r18) goto L21;
     */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzrf zzm(com.google.android.gms.internal.ads.zzrf r10, com.google.android.gms.internal.ads.zzda r11, com.google.android.gms.internal.ads.zzri r12, com.google.android.gms.internal.ads.zzfd r13) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrg.zzm(com.google.android.gms.internal.ads.zzrf, com.google.android.gms.internal.ads.zzda, com.google.android.gms.internal.ads.zzri, com.google.android.gms.internal.ads.zzfd):com.google.android.gms.internal.ads.zzrf");
    }

    private final void zzn(int i) {
        long j = this.zze + i;
        this.zze = j;
        zzrf zzrfVar = this.zzd;
        if (j == zzrfVar.zzb) {
            this.zzd = zzrfVar.zze;
        }
    }

    public final int zza(zzdg zzdgVar, int i, boolean z) throws IOException {
        int zzi = zzi(i);
        zzrf zzrfVar = this.zzd;
        int zzg = zzdgVar.zzg(zzrfVar.zzd.zza, zzrfVar.zza(this.zze), zzi);
        if (zzg != -1) {
            zzn(zzg);
            return zzg;
        } else if (!z) {
            throw new EOFException();
        } else {
            return -1;
        }
    }

    public final long zzb() {
        return this.zze;
    }

    public final void zzc(long j) {
        zzrf zzrfVar;
        if (j != -1) {
            while (true) {
                zzrfVar = this.zzb;
                if (j < zzrfVar.zzb) {
                    break;
                }
                this.zzf.zzc(zzrfVar.zzd);
                this.zzb = this.zzb.zzb();
            }
            if (this.zzc.zza >= zzrfVar.zza) {
                return;
            }
            this.zzc = zzrfVar;
        }
    }

    public final void zzd(zzda zzdaVar, zzri zzriVar) {
        zzm(this.zzc, zzdaVar, zzriVar, this.zza);
    }

    public final void zze(zzda zzdaVar, zzri zzriVar) {
        this.zzc = zzm(this.zzc, zzdaVar, zzriVar, this.zza);
    }

    public final void zzf() {
        zzrf zzrfVar = this.zzb;
        if (zzrfVar.zzc) {
            zzrf zzrfVar2 = this.zzd;
            int i = (((int) (zzrfVar2.zza - zzrfVar.zza)) / 65536) + (zzrfVar2.zzc ? 1 : 0);
            zzsx[] zzsxVarArr = new zzsx[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzsxVarArr[i2] = zzrfVar.zzd;
                zzrfVar = zzrfVar.zzb();
            }
            this.zzf.zzd(zzsxVarArr);
        }
        zzrf zzrfVar3 = new zzrf(0L, 65536);
        this.zzb = zzrfVar3;
        this.zzc = zzrfVar3;
        this.zzd = zzrfVar3;
        this.zze = 0L;
        this.zzf.zzg();
    }

    public final void zzg() {
        this.zzc = this.zzb;
    }

    public final void zzh(zzfd zzfdVar, int i) {
        while (i > 0) {
            int zzi = zzi(i);
            zzrf zzrfVar = this.zzd;
            zzfdVar.zzB(zzrfVar.zzd.zza, zzrfVar.zza(this.zze), zzi);
            i -= zzi;
            zzn(zzi);
        }
    }
}
