package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarv.class */
public final class zzarv {
    private final byte[] zza = new byte[8];
    private final Stack<zzaru> zzb = new Stack<>();
    private final zzasd zzc = new zzasd();
    private int zzd;
    private int zze;
    private long zzf;
    private zzary zzg;

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    private final long zzd(zzari zzariVar, int i) throws IOException, InterruptedException {
        zzariVar.zzh(this.zza, 0, i, false);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.zza[i2] & 255);
        }
        return c;
    }

    public final void zza() {
        this.zzd = 0;
        this.zzb.clear();
        this.zzc.zzd();
    }

    public final void zzb(zzary zzaryVar) {
        this.zzg = zzaryVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ea, code lost:
        if (r0 == 1) goto L32;
     */
    /* JADX WARN: Type inference failed for: r0v114, types: [double] */
    /* JADX WARN: Type inference failed for: r0v118, types: [double] */
    /* JADX WARN: Type inference failed for: r0v135, types: [long] */
    /* JADX WARN: Type inference failed for: r0v167, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzari r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzarv.zzc(com.google.android.gms.internal.ads.zzari):boolean");
    }
}
