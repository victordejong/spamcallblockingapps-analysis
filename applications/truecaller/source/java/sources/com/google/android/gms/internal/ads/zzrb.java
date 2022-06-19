package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrb.class */
public final class zzrb implements zzqz {
    private final int zza;
    private final int zzb;
    private final zzamf zzc;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
        if ((r0 % r0) != 0) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzrb(com.google.android.gms.internal.ads.zzqw r4, com.google.android.gms.internal.ads.zzafv r5) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r4
            com.google.android.gms.internal.ads.zzamf r0 = r0.zza
            r4 = r0
            r0 = r3
            r1 = r4
            r0.zzc = r1
            r0 = r4
            r1 = 12
            r0.zzh(r1)
            r0 = r4
            int r0 = r0.zzB()
            r6 = r0
            r0 = r6
            r7 = r0
            java.lang.String r0 = "audio/raw"
            r1 = r5
            java.lang.String r1 = r1.zzl
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L47
            r0 = r5
            int r0 = r0.zzA
            r1 = r5
            int r1 = r1.zzy
            int r0 = com.google.android.gms.internal.ads.zzamq.zzS(r0, r1)
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L43
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = r8
            int r0 = r0 % r1
            if (r0 == 0) goto L47
        L43:
            r0 = r8
            r7 = r0
        L47:
            r0 = r7
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L53
            r0 = -1
            r8 = r0
        L53:
            r0 = r3
            r1 = r8
            r0.zza = r1
            r0 = r3
            r1 = r4
            int r1 = r1.zzB()
            r0.zzb = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrb.<init>(com.google.android.gms.internal.ads.zzqw, com.google.android.gms.internal.ads.zzafv):void");
    }

    @Override // com.google.android.gms.internal.ads.zzqz
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzqz
    public final int zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzqz
    public final int zzc() {
        int i = this.zza;
        int i2 = i;
        if (i == -1) {
            i2 = this.zzc.zzB();
        }
        return i2;
    }
}
