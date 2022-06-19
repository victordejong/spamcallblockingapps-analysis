package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzid.class */
public abstract class zzid {
    public static final zzid zzaig = new zzic();

    public final boolean isEmpty() {
        return zzff() == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if ((zzff() - 1) == 0) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(int r6, com.google.android.gms.internal.ads.zzif r7, com.google.android.gms.internal.ads.zzie r8, int r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = 0
            com.google.android.gms.internal.ads.zzif r0 = r0.zza(r1, r2, r3)
            r0 = r5
            r1 = 0
            r2 = r8
            r3 = 0
            com.google.android.gms.internal.ads.zzie r0 = r0.zza(r1, r2, r3)
            r0 = 1
            r10 = r0
            r0 = r6
            if (r0 != 0) goto L63
            r0 = r9
            if (r0 == 0) goto L44
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L3f
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L37
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.zzff()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L52
            goto L3f
        L37:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r1.<init>()
            throw r0
        L3f:
            r0 = 0
            r6 = r0
            goto L52
        L44:
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.zzff()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L52
            r0 = -1
            r6 = r0
        L52:
            r0 = r6
            r1 = -1
            if (r0 != r1) goto L59
            r0 = -1
            return r0
        L59:
            r0 = r5
            r1 = r6
            r2 = r8
            r3 = 0
            com.google.android.gms.internal.ads.zzie r0 = r0.zza(r1, r2, r3)
            r0 = 0
            return r0
        L63:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzid.zza(int, com.google.android.gms.internal.ads.zzif, com.google.android.gms.internal.ads.zzie, int):int");
    }

    public final zzie zza(int i, zzie zzieVar, boolean z) {
        return zza(i, zzieVar, false, 0L);
    }

    public abstract zzie zza(int i, zzie zzieVar, boolean z, long j);

    public abstract zzif zza(int i, zzif zzifVar, boolean z);

    public abstract int zzc(Object obj);

    public abstract int zzff();

    public abstract int zzfg();
}
