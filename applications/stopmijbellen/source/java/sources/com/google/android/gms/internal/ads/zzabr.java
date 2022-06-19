package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabr.class */
public final class zzabr implements zzabp {
    private final int zza;
    private final int zzb;
    private final zzfd zzc;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
        if ((r0 % r0) != 0) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzabr(com.google.android.gms.internal.ads.zzabm r8, com.google.android.gms.internal.ads.zzab r9) {
        /*
            r7 = this;
            r0 = r7
            r0.<init>()
            r0 = r8
            com.google.android.gms.internal.ads.zzfd r0 = r0.zza
            r8 = r0
            r0 = r7
            r1 = r8
            r0.zzc = r1
            r0 = r8
            r1 = 12
            r0.zzF(r1)
            r0 = r8
            int r0 = r0.zzn()
            r10 = r0
            r0 = r10
            r11 = r0
            java.lang.String r0 = "audio/raw"
            r1 = r9
            java.lang.String r1 = r1.zzm
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L59
            r0 = r9
            int r0 = r0.zzB
            r1 = r9
            int r1 = r1.zzz
            int r0 = com.google.android.gms.internal.ads.zzfn.zzm(r0, r1)
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L43
            r0 = r10
            r11 = r0
            r0 = r10
            r1 = r12
            int r0 = r0 % r1
            if (r0 == 0) goto L59
        L43:
            java.lang.String r0 = "AtomParsers"
            r1 = 88
            java.lang.String r2 = "Audio sample size mismatch. stsd sample size: "
            r3 = r12
            java.lang.String r4 = ", stsz sample size: "
            r5 = r10
            java.lang.String r1 = android.support.p012v4.media.C0082b.m8757e(r1, r2, r3, r4, r5)
            int r0 = android.util.Log.w(r0, r1)
            r0 = r12
            r11 = r0
        L59:
            r0 = r11
            r12 = r0
            r0 = r11
            if (r0 != 0) goto L65
            r0 = -1
            r12 = r0
        L65:
            r0 = r7
            r1 = r12
            r0.zza = r1
            r0 = r7
            r1 = r8
            int r1 = r1.zzn()
            r0.zzb = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabr.<init>(com.google.android.gms.internal.ads.zzabm, com.google.android.gms.internal.ads.zzab):void");
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final int zzc() {
        int i = this.zza;
        int i2 = i;
        if (i == -1) {
            i2 = this.zzc.zzn();
        }
        return i2;
    }
}
