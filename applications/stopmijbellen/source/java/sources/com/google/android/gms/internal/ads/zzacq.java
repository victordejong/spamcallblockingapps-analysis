package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacq.class */
public final class zzacq implements zzacx {
    private final zzacw zza;
    private final long zzb;
    private final long zzc;
    private final zzadc zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;

    public zzacq(zzadc zzadcVar, long j, long j2, long j3, long j4, boolean z) {
        zzdy.zzd(j >= 0 && j2 > j);
        this.zzd = zzadcVar;
        this.zzb = j;
        this.zzc = j2;
        if (j3 == j2 - j || z) {
            this.zzf = j4;
            this.zze = 4;
        } else {
            this.zze = 0;
        }
        this.zza = new zzacw();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0149  */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /* JADX WARN: Type inference failed for: r0v154 */
    /* JADX WARN: Type inference failed for: r0v155 */
    /* JADX WARN: Type inference failed for: r0v24 */
    @Override // com.google.android.gms.internal.ads.zzacx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzd(com.google.android.gms.internal.ads.zzwq r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacq.zzd(com.google.android.gms.internal.ads.zzwq):long");
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final /* bridge */ /* synthetic */ zzxp zze() {
        if (this.zzf != 0) {
            return new zzacp(this, null);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final void zzg(long j) {
        this.zzh = zzfn.zzo(j, 0L, this.zzf - 1);
        this.zze = 2;
        this.zzi = this.zzb;
        this.zzj = this.zzc;
        this.zzk = 0L;
        this.zzl = this.zzf;
    }
}
