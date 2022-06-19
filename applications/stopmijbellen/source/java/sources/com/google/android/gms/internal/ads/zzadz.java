package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadz.class */
final class zzadz {
    private final zzxt zza;
    private final zzfe zzd;
    private final byte[] zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private long zzl;
    private long zzm;
    private boolean zzn;
    private final SparseArray<zzet> zzb = new SparseArray<>();
    private final SparseArray<zzes> zzc = new SparseArray<>();
    private final zzady zzi = new zzady(null);
    private final zzady zzj = new zzady(null);
    private boolean zzk = false;

    public zzadz(zzxt zzxtVar, boolean z, boolean z2) {
        this.zza = zzxtVar;
        byte[] bArr = new byte[128];
        this.zze = bArr;
        this.zzd = new zzfe(bArr, 0, 0);
    }

    public final void zza(zzes zzesVar) {
        this.zzc.append(zzesVar.zza, zzesVar);
    }

    public final void zzb(zzet zzetVar) {
        this.zzb.append(zzetVar.zzd, zzetVar);
    }

    public final void zzc() {
        this.zzk = false;
    }

    public final void zzd(long j, int i, long j2) {
        this.zzf = i;
        this.zzh = j2;
        this.zzg = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0097, code lost:
        if (r0 == 1) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zze(long r10, int r12, boolean r13, boolean r14) {
        /*
            r9 = this;
            r0 = r9
            int r0 = r0.zzf
            r15 = r0
            r0 = 0
            r16 = r0
            r0 = r15
            r1 = 9
            if (r0 == r1) goto L13
            goto L77
        L13:
            r0 = r13
            if (r0 == 0) goto L5d
            r0 = r9
            boolean r0 = r0.zzk
            if (r0 == 0) goto L5d
            r0 = r9
            long r0 = r0.zzg
            r17 = r0
            r0 = r10
            r1 = r17
            long r0 = r0 - r1
            int r0 = (int) r0
            r15 = r0
            r0 = r9
            long r0 = r0.zzm
            r19 = r0
            r0 = r19
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L5d
            r0 = r9
            boolean r0 = r0.zzn
            r21 = r0
            r0 = r9
            long r0 = r0.zzl
            r10 = r0
            r0 = r9
            com.google.android.gms.internal.ads.zzxt r0 = r0.zza
            r1 = r19
            r2 = r21
            r3 = r17
            r4 = r10
            long r3 = r3 - r4
            int r3 = (int) r3
            r4 = r12
            r5 = r15
            int r4 = r4 + r5
            r5 = 0
            r0.zzs(r1, r2, r3, r4, r5)
        L5d:
            r0 = r9
            r1 = r9
            long r1 = r1.zzg
            r0.zzl = r1
            r0 = r9
            r1 = r9
            long r1 = r1.zzh
            r0.zzm = r1
            r0 = r9
            r1 = 0
            r0.zzn = r1
            r0 = r9
            r1 = 1
            r0.zzk = r1
        L77:
            r0 = r9
            boolean r0 = r0.zzn
            r13 = r0
            r0 = r9
            int r0 = r0.zzf
            r15 = r0
            r0 = r15
            r1 = 5
            if (r0 == r1) goto L9a
            r0 = r16
            r12 = r0
            r0 = r14
            if (r0 == 0) goto L9c
            r0 = r16
            r12 = r0
            r0 = r15
            r1 = 1
            if (r0 != r1) goto L9c
        L9a:
            r0 = 1
            r12 = r0
        L9c:
            r0 = r13
            r1 = r12
            r0 = r0 | r1
            r13 = r0
            r0 = r9
            r1 = r13
            r0.zzn = r1
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadz.zze(long, int, boolean, boolean):boolean");
    }
}
