package com.google.android.gms.internal.ads;

import android.util.Pair;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pt3.class */
final class pt3 implements ut3 {

    /* renamed from: a */
    private final long[] f28136a;

    /* renamed from: b */
    private final long[] f28137b;

    /* renamed from: c */
    private final long f28138c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    private pt3(long[] jArr, long[] jArr2, long j) {
        this.f28136a = jArr;
        this.f28137b = jArr2;
        this.f28138c = j == -9223372036854775807L ? C7130x2.m9368b(jArr2[jArr2.length - 1]) : j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* renamed from: e */
    public static pt3 m12152e(long j, zzakb zzakbVar, long j2) {
        int length = zzakbVar.f33527h.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        jArr2[0] = 0;
        int i2 = 1;
        boolean z = j;
        boolean z2 = false;
        while (i2 <= length) {
            int i3 = i2 - 1;
            char c = z == true ? 1 : 0;
            boolean z3 = z == true ? 1 : 0;
            boolean z4 = c + zzakbVar.f33525f + zzakbVar.f33527h[i3];
            char c2 = z2 ? 1 : 0;
            boolean z5 = z2 ? 1 : 0;
            boolean z6 = c2 + zzakbVar.f33526g + zzakbVar.f33528i[i3];
            long j3 = z4 ? 1 : 0;
            long j4 = z4 ? 1 : 0;
            jArr[i2] = j3;
            long j5 = z6 ? 1 : 0;
            long j6 = z6 ? 1 : 0;
            jArr2[i2] = j5;
            i2++;
            z2 = z6;
            z = z4;
        }
        return new pt3(jArr, jArr2, j2);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* renamed from: f */
    private static Pair<Long, Long> m12151f(long j, long[] jArr, long[] jArr2) {
        int m9695d = C7101wa.m9695d(jArr, j, true, true);
        long j2 = jArr[m9695d];
        long j3 = jArr2[m9695d];
        int i = m9695d + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? (char) 0 : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        Pair<Long, Long> m12151f = m12151f(C7130x2.m9369a(C7101wa.m9694d0(j, 0L, this.f28138c)), this.f28137b, this.f28136a);
        vr3 vr3Var = new vr3(C7130x2.m9368b(((Long) m12151f.first).longValue()), ((Long) m12151f.second).longValue());
        return new sr3(vr3Var, vr3Var);
    }

    @Override // com.google.android.gms.internal.ads.ut3
    /* renamed from: c */
    public final long mo9459c() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.ut3
    /* renamed from: d */
    public final long mo9458d(long j) {
        return C7130x2.m9368b(((Long) m12151f(j, this.f28136a, this.f28137b).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f28138c;
    }
}
