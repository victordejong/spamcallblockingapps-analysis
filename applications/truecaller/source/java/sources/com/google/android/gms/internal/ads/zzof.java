package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzof.class */
public final class zzof implements zzot {
    private final zzoh zza;
    private final long zzb;

    public zzof(zzoh zzohVar, long j) {
        this.zza = zzohVar;
        this.zzb = j;
    }

    private final zzou zza(long j, long j2) {
        return new zzou((j * 1000000) / this.zza.zze, this.zzb + j2);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v9, types: [long[]] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [long] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.internal.ads.zzof] */
    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        zzakt.zze(this.zza.zzk);
        zzoh zzohVar = this.zza;
        zzog zzogVar = zzohVar.zzk;
        ?? r0 = zzogVar.zza;
        ?? r02 = zzogVar.zzb;
        int zzD = zzamq.zzD(r0, zzohVar.zzb(j), true, false);
        ?? r16 = false;
        ?? r18 = zzD == -1 ? (char) 0 : r0[zzD];
        if (zzD != -1) {
            r16 = r02[zzD];
        }
        zzou zza = zza(r18, r16 == true ? 1L : 0L);
        if (zza.zzb == j || zzD == r0.length - 1) {
            return new zzor(zza, zza);
        }
        int i = zzD + 1;
        return new zzor(zza, zza(r0[i], r02[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zza.zza();
    }
}
