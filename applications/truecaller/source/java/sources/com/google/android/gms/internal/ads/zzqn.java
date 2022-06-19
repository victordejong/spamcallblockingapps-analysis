package com.google.android.gms.internal.ads;

import android.util.Pair;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqn.class */
public final class zzqn implements zzqs {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    private zzqn(long[] jArr, long[] jArr2, long j) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j == -9223372036854775807L ? zzadx.zzb(jArr2[jArr2.length - 1]) : j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long[]] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    public static zzqn zza(long j, zzakb zzakbVar, long j2) {
        int length = zzakbVar.zzd.length;
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
            ?? r72 = r7 + zzakbVar.zzb + zzakbVar.zzd[i3];
            char c = z ? 1 : 0;
            boolean z2 = z ? 1 : 0;
            boolean z3 = c + zzakbVar.zzc + zzakbVar.zze[i3];
            r0[i2] = r72;
            long j3 = z3 ? 1 : 0;
            long j4 = z3 ? 1 : 0;
            jArr[i2] = j3;
            i2++;
            r7 = r72;
            z = z3;
        }
        return new zzqn(r0, jArr, j2);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    private static Pair<Long, Long> zzd(long j, long[] jArr, long[] jArr2) {
        int zzD = zzamq.zzD(jArr, j, true, true);
        long j2 = jArr[zzD];
        long j3 = jArr2[zzD];
        int i = zzD + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? (char) 0 : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.gms.internal.ads.zzqs
    public final long zzb(long j) {
        return zzadx.zzb(((Long) zzd(j, this.zza, this.zzb).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzqs
    public final long zzc() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        Pair<Long, Long> zzd = zzd(zzadx.zza(zzamq.zzy(j, 0L, this.zzc)), this.zzb, this.zza);
        zzou zzouVar = new zzou(zzadx.zzb(((Long) zzd.first).longValue()), ((Long) zzd.second).longValue());
        return new zzor(zzouVar, zzouVar);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zzc;
    }
}
