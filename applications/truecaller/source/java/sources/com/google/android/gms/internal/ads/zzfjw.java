package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjw.class */
public final class zzfjw {
    private final zzadi zza;
    private final File zzb;
    private final File zzc;
    private final File zzd;
    private byte[] zze;

    public zzfjw(zzadi zzadiVar, File file, File file2, File file3) {
        this.zza = zzadiVar;
        this.zzb = file;
        this.zzc = file3;
        this.zzd = file2;
    }

    public final zzadi zza() {
        return this.zza;
    }

    public final File zzb() {
        return this.zzb;
    }

    public final File zzc() {
        return this.zzc;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] zzd() {
        /*
            r3 = this;
            r0 = r3
            byte[] r0 = r0.zze
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L53
            r0 = r3
            java.io.File r0 = r0.zzd
            r6 = r0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L3f
            r4 = r0
            r0 = r4
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L3f
            r0 = r4
            com.google.android.gms.internal.ads.zzgex r0 = com.google.android.gms.internal.ads.zzgex.zzw(r0)     // Catch: java.lang.Throwable -> L2a java.io.IOException -> L65
            byte[] r0 = r0.zzz()     // Catch: java.lang.Throwable -> L2a java.io.IOException -> L65
            r6 = r0
            r0 = r4
            r0.close()     // Catch: java.io.IOException -> L69
            r0 = r6
            r4 = r0
            goto L4e
        L2a:
            r6 = move-exception
            r0 = r4
            r5 = r0
            r0 = r6
            r4 = r0
            goto L33
        L32:
            r4 = move-exception
        L33:
            r0 = r5
            if (r0 == 0) goto L3d
            r0 = r5
            r0.close()     // Catch: java.io.IOException -> L6f
        L3d:
            r0 = r4
            throw r0
        L3f:
            r4 = move-exception
            r0 = 0
            r4 = r0
        L42:
            r0 = r4
            if (r0 == 0) goto L4c
            r0 = r4
            r0.close()     // Catch: java.io.IOException -> L73
        L4c:
            r0 = 0
            r4 = r0
        L4e:
            r0 = r3
            r1 = r4
            r0.zze = r1
        L53:
            r0 = r3
            byte[] r0 = r0.zze
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L5e
            r0 = 0
            return r0
        L5e:
            r0 = r4
            r1 = r4
            int r1 = r1.length
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            return r0
        L65:
            r6 = move-exception
            goto L42
        L69:
            r4 = move-exception
            r0 = r6
            r4 = r0
            goto L4e
        L6f:
            r6 = move-exception
            goto L3d
        L73:
            r4 = move-exception
            goto L4c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfjw.zzd():byte[]");
    }

    public final boolean zze(long j) {
        return this.zza.zzd() - (System.currentTimeMillis() / 1000) < 3600;
    }
}
