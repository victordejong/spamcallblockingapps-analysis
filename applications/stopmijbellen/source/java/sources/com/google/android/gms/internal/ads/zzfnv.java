package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfnv.class */
public final class zzfnv {
    private final zzaoi zza;
    private final File zzb;
    private final File zzc;
    private final File zzd;
    private byte[] zze;

    public zzfnv(zzaoi zzaoiVar, File file, File file2, File file3) {
        this.zza = zzaoiVar;
        this.zzb = file;
        this.zzc = file3;
        this.zzd = file2;
    }

    public final zzaoi zza() {
        return this.zza;
    }

    public final File zzb() {
        return this.zzc;
    }

    public final File zzc() {
        return this.zzb;
    }

    public final boolean zzd(long j) {
        return this.zza.zzc() - (System.currentTimeMillis() / 1000) < 3600;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] zze() {
        /*
            r3 = this;
            r0 = r3
            byte[] r0 = r0.zze
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L49
            r0 = r3
            java.io.File r0 = r0.zzd
            r6 = r0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L3b
            r4 = r0
            r0 = r4
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L3b
            r0 = r4
            com.google.android.gms.internal.ads.zzgjf r0 = com.google.android.gms.internal.ads.zzgjf.zzy(r0)     // Catch: java.lang.Throwable -> L2a java.io.IOException -> L5b
            byte[] r0 = r0.zzE()     // Catch: java.lang.Throwable -> L2a java.io.IOException -> L5b
            r5 = r0
            r0 = r4
            com.google.android.gms.common.util.IOUtils.closeQuietly(r0)
            r0 = r5
            r4 = r0
            goto L44
        L2a:
            r5 = move-exception
            r0 = r5
            r6 = r0
            r0 = r4
            r5 = r0
            goto L35
        L32:
            r4 = move-exception
            r0 = r4
            r6 = r0
        L35:
            r0 = r5
            com.google.android.gms.common.util.IOUtils.closeQuietly(r0)
            r0 = r6
            throw r0
        L3b:
            r4 = move-exception
            r0 = 0
            r4 = r0
        L3e:
            r0 = r4
            com.google.android.gms.common.util.IOUtils.closeQuietly(r0)
            r0 = 0
            r4 = r0
        L44:
            r0 = r3
            r1 = r4
            r0.zze = r1
        L49:
            r0 = r3
            byte[] r0 = r0.zze
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L54
            r0 = 0
            return r0
        L54:
            r0 = r4
            r1 = r4
            int r1 = r1.length
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            return r0
        L5b:
            r5 = move-exception
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfnv.zze():byte[]");
    }
}
