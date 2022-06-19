package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqb.class */
public final class zzqb {
    private final byte[] zza = new byte[8];
    private final ArrayDeque<zzpz> zzb = new ArrayDeque<>();
    private final zzqk zzc = new zzqk();
    private zzqc zzd;
    private int zze;
    private int zzf;
    private long zzg;

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    private final long zzd(zznv zznvVar, int i) throws IOException {
        ((zznp) zznvVar).zza(this.zza, 0, i, false);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.zza[i2] & 255);
        }
        return c;
    }

    public final void zza(zzqc zzqcVar) {
        this.zzd = zzqcVar;
    }

    public final void zzb() {
        this.zze = 0;
        this.zzb.clear();
        this.zzc.zza();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f1, code lost:
        if (r0 == 1) goto L28;
     */
    /* JADX WARN: Type inference failed for: r0v132, types: [double] */
    /* JADX WARN: Type inference failed for: r0v136, types: [double] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v195, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zznv r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqb.zzc(com.google.android.gms.internal.ads.zznv):boolean");
    }
}
