package com.google.android.gms.internal.ads;

import android.util.Pair;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabd.class */
final class zzabd implements zzabi {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    private zzabd(long[] jArr, long[] jArr2, long j) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j == -9223372036854775807L ? zzk.zzc(jArr2[jArr2.length - 1]) : j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long[]] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    public static zzabd zza(long j, zzzy zzzyVar, long j2) {
        int length = zzzyVar.zzd.length;
        int i = length + 1;
        ?? r0 = new long[i];
        long[] jArr = new long[i];
        r0[0] = j;
        boolean z = false;
        jArr[0] = 0;
        int i2 = 1;
        ?? r7 = j;
        while (i2 <= length) {
            int i3 = i2 - 1;
            ?? r72 = r7 + zzzyVar.zzb + zzzyVar.zzd[i3];
            char c = z ? 1 : 0;
            boolean z2 = z ? 1 : 0;
            boolean z3 = c + zzzyVar.zzc + zzzyVar.zze[i3];
            r0[i2] = r72;
            long j3 = z3 ? 1 : 0;
            long j4 = z3 ? 1 : 0;
            jArr[i2] = j3;
            i2++;
            r7 = r72;
            z = z3;
        }
        return new zzabd(r0, jArr, j2);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    private static Pair<Long, Long> zzd(long j, long[] jArr, long[] jArr2) {
        int zzd = zzfn.zzd(jArr, j, true, true);
        long j2 = jArr[zzd];
        long j3 = jArr2[zzd];
        int i = zzd + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? (char) 0 : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final long zzb() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final long zzc(long j) {
        return zzk.zzc(((Long) zzd(j, this.zza, this.zzb).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        Pair<Long, Long> zzd = zzd(zzk.zzd(zzfn.zzo(j, 0L, this.zzc)), this.zzb, this.zza);
        zzxq zzxqVar = new zzxq(zzk.zzc(((Long) zzd.first).longValue()), ((Long) zzd.second).longValue());
        return new zzxn(zzxqVar, zzxqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return true;
    }
}
