package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzin.class */
public final class zzin {
    private final zzamf zza = new zzamf(32);
    private zzim zzb;
    private zzim zzc;
    private zzim zzd;
    private long zze;
    private final zzko zzf;

    public zzin(zzko zzkoVar, byte[] bArr) {
        this.zzf = zzkoVar;
        zzim zzimVar = new zzim(0L, 65536);
        this.zzb = zzimVar;
        this.zzc = zzimVar;
        this.zzd = zzimVar;
    }

    private final int zzi(int i) {
        zzim zzimVar = this.zzd;
        if (!zzimVar.zzc) {
            zzkb zzc = this.zzf.zzc();
            zzim zzimVar2 = new zzim(this.zzd.zzb, 65536);
            zzimVar.zzd = zzc;
            zzimVar.zze = zzimVar2;
            zzimVar.zzc = true;
        }
        return Math.min(i, (int) (this.zzd.zzb - this.zze));
    }

    private final void zzj(int i) {
        long j = this.zze + i;
        this.zze = j;
        zzim zzimVar = this.zzd;
        if (j == zzimVar.zzb) {
            this.zzd = zzimVar.zze;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00c1, code lost:
        if (r0.length < r16) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00df, code lost:
        if (r0.length < r16) goto L20;
     */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzim zzk(com.google.android.gms.internal.ads.zzim r10, com.google.android.gms.internal.ads.zzaf r11, com.google.android.gms.internal.ads.zziq r12, com.google.android.gms.internal.ads.zzamf r13) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzin.zzk(com.google.android.gms.internal.ads.zzim, com.google.android.gms.internal.ads.zzaf, com.google.android.gms.internal.ads.zziq, com.google.android.gms.internal.ads.zzamf):com.google.android.gms.internal.ads.zzim");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    private static zzim zzl(zzim zzimVar, long j, ByteBuffer byteBuffer, int i) {
        zzim zzn = zzn(zzimVar, j);
        while (i > 0) {
            int min = Math.min(i, (int) (zzn.zzb - j));
            byteBuffer.put(zzn.zzd.zza, zzn.zza(j), min);
            int i2 = i - min;
            ?? r0 = j + min;
            j = r0;
            i = i2;
            if (r0 == zzn.zzb) {
                zzn = zzn.zze;
                j = r0;
                i = i2;
            }
        }
        return zzn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    private static zzim zzm(zzim zzimVar, long j, byte[] bArr, int i) {
        zzim zzn = zzn(zzimVar, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (zzn.zzb - j));
            System.arraycopy(zzn.zzd.zza, zzn.zza(j), bArr, i - i2, min);
            int i3 = i2 - min;
            ?? r0 = j + min;
            i2 = i3;
            j = r0;
            if (r0 == zzn.zzb) {
                zzn = zzn.zze;
                i2 = i3;
                j = r0;
            }
        }
        return zzn;
    }

    private static zzim zzn(zzim zzimVar, long j) {
        while (j >= zzimVar.zzb) {
            zzimVar = zzimVar.zze;
        }
        return zzimVar;
    }

    public final void zza() {
        zzim zzimVar = this.zzb;
        if (zzimVar.zzc) {
            zzim zzimVar2 = this.zzd;
            int i = (((int) (zzimVar2.zza - zzimVar.zza)) / 65536) + (zzimVar2.zzc ? 1 : 0);
            zzkb[] zzkbVarArr = new zzkb[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzkbVarArr[i2] = zzimVar.zzd;
                zzimVar = zzimVar.zzb();
            }
            this.zzf.zze(zzkbVarArr);
        }
        zzim zzimVar3 = new zzim(0L, 65536);
        this.zzb = zzimVar3;
        this.zzc = zzimVar3;
        this.zzd = zzimVar3;
        this.zze = 0L;
        this.zzf.zzf();
    }

    public final void zzb() {
        this.zzc = this.zzb;
    }

    public final void zzc(zzaf zzafVar, zziq zziqVar) {
        this.zzc = zzk(this.zzc, zzafVar, zziqVar, this.zza);
    }

    public final void zzd(zzaf zzafVar, zziq zziqVar) {
        zzk(this.zzc, zzafVar, zziqVar, this.zza);
    }

    public final void zze(long j) {
        zzim zzimVar;
        if (j != -1) {
            while (true) {
                zzimVar = this.zzb;
                if (j < zzimVar.zzb) {
                    break;
                }
                this.zzf.zzd(zzimVar.zzd);
                this.zzb = this.zzb.zzb();
            }
            if (this.zzc.zza >= zzimVar.zza) {
                return;
            }
            this.zzc = zzimVar;
        }
    }

    public final long zzf() {
        return this.zze;
    }

    public final int zzg(zzah zzahVar, int i, boolean z) throws IOException {
        int zzi = zzi(i);
        zzim zzimVar = this.zzd;
        int zzg = zzahVar.zzg(zzimVar.zzd.zza, zzimVar.zza(this.zze), zzi);
        if (zzg != -1) {
            zzj(zzg);
            return zzg;
        } else if (!z) {
            throw new EOFException();
        } else {
            return -1;
        }
    }

    public final void zzh(zzamf zzamfVar, int i) {
        while (i > 0) {
            int zzi = zzi(i);
            zzim zzimVar = this.zzd;
            zzamfVar.zzm(zzimVar.zzd.zza, zzimVar.zza(this.zze), zzi);
            i -= zzi;
            zzj(zzi);
        }
    }
}
