package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxb.class */
public final class zzxb implements zzxp {
    private final zzxd zza;
    private final long zzb;

    public zzxb(zzxd zzxdVar, long j) {
        this.zza = zzxdVar;
        this.zzb = j;
    }

    private final zzxq zza(long j, long j2) {
        return new zzxq((j * 1000000) / this.zza.zze, this.zzb + j2);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zza.zza();
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
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.internal.ads.zzxb] */
    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        zzdy.zzb(this.zza.zzk);
        zzxd zzxdVar = this.zza;
        zzxc zzxcVar = zzxdVar.zzk;
        ?? r0 = zzxcVar.zza;
        ?? r02 = zzxcVar.zzb;
        int zzd = zzfn.zzd(r0, zzxdVar.zzb(j), true, false);
        ?? r16 = false;
        ?? r18 = zzd == -1 ? (char) 0 : r0[zzd];
        if (zzd != -1) {
            r16 = r02[zzd];
        }
        zzxq zza = zza(r18, r16 == true ? 1L : 0L);
        if (zza.zzb == j || zzd == r0.length - 1) {
            return new zzxn(zza, zza);
        }
        int i = zzd + 1;
        return new zzxn(zza, zza(r0[i], r02[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return true;
    }
}
