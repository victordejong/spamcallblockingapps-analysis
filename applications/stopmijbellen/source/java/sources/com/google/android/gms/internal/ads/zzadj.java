package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadj.class */
public final class zzadj implements zzwp {
    public static final zzww zza = zzadi.zza;
    private final zzadk zzb = new zzadk(null);
    private final zzfd zzc = new zzfd(16384);
    private boolean zzd;

    @Override // com.google.android.gms.internal.ads.zzwp
    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        int zzg = zzwqVar.zzg(this.zzc.zzH(), 0, 16384);
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x007b, code lost:
        r7.zzj();
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x008b, code lost:
        if ((r12 - r9) >= 8192) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x009a, code lost:
        return false;
     */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzd(com.google.android.gms.internal.ads.zzwq r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadj.zzd(com.google.android.gms.internal.ads.zzwq):boolean");
    }
}
