package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadg.class */
public final class zzadg implements zzwp {
    public static final zzww zza = zzadf.zza;
    private final zzadh zzb = new zzadh(null);
    private final zzfd zzc = new zzfd(2786);
    private boolean zzd;

    @Override // com.google.android.gms.internal.ads.zzwp
    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        int zzg = zzwqVar.zzg(this.zzc.zzH(), 0, 2786);
        if (zzg == -1) {
            return -1;
        }
        this.zzc.zzF(0);
        this.zzc.zzE(zzg);
        if (!this.zzd) {
            this.zzb.zzd(0L, 4);
            this.zzd = true;
        }
        this.zzb.zza(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzb.zzb(zzwsVar, new zzafd(Integer.MIN_VALUE, 0, 1));
        zzwsVar.zzB();
        zzwsVar.zzL(new zzxo(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        this.zzd = false;
        this.zzb.zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0079, code lost:
        if ((r12 - r9) >= 8192) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0088, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0069, code lost:
        r7.zzj();
        r12 = r12 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzd(com.google.android.gms.internal.ads.zzwq r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadg.zzd(com.google.android.gms.internal.ads.zzwq):boolean");
    }
}
