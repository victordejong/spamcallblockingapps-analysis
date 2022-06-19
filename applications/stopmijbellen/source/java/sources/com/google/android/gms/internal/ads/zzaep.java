package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaep.class */
public final class zzaep implements zzwp {
    public static final zzww zza = zzaen.zza;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private long zzi;
    private zzael zzj;
    private zzws zzk;
    private boolean zzl;
    private final zzfk zzb = new zzfk(0);
    private final zzfd zzd = new zzfd(4096);
    private final SparseArray<zzaeo> zzc = new SparseArray<>();
    private final zzaem zze = new zzaem();

    /* JADX WARN: Removed duplicated region for block: B:63:0x0245  */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzwq r9, com.google.android.gms.internal.ads.zzxm r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 817
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaep.zza(com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzxm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzk = zzwsVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r0 != r8) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005a A[LOOP:0: B:14:0x004e->B:16:0x005a, LOOP_END] */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(long r6, long r8) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.zzfk r0 = r0.zzb
            long r0 = r0.zze()
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L2a
            r0 = r5
            com.google.android.gms.internal.ads.zzfk r0 = r0.zzb
            long r0 = r0.zzc()
            r6 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L32
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L32
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L32
        L2a:
            r0 = r5
            com.google.android.gms.internal.ads.zzfk r0 = r0.zzb
            r1 = r8
            r0.zzf(r1)
        L32:
            r0 = r5
            com.google.android.gms.internal.ads.zzael r0 = r0.zzj
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L4e
            r0 = r10
            r1 = r8
            r0.zzd(r1)
            r0 = r11
            r12 = r0
        L4e:
            r0 = r12
            r1 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zzaeo> r1 = r1.zzc
            int r1 = r1.size()
            if (r0 >= r1) goto L6f
            r0 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zzaeo> r0 = r0.zzc
            r1 = r12
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.gms.internal.ads.zzaeo r0 = (com.google.android.gms.internal.ads.zzaeo) r0
            r0.zzb()
            int r12 = r12 + 1
            goto L4e
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaep.zzc(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        byte[] bArr = new byte[14];
        zzwk zzwkVar = (zzwk) zzwqVar;
        zzwkVar.zzm(bArr, 0, 14, false);
        if ((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) == 442 && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            zzwkVar.zzl(bArr[13] & 7, false);
            zzwkVar.zzm(bArr, 0, 3, false);
            return ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255)) == 1;
        }
        return false;
    }
}
