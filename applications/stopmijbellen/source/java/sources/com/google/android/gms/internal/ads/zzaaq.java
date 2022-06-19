package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaaq.class */
public final class zzaaq {
    private final byte[] zza = new byte[8];
    private final ArrayDeque<zzaap> zzb = new ArrayDeque<>();
    private final zzaba zzc = new zzaba();
    private zzaar zzd;
    private int zze;
    private int zzf;
    private long zzg;

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    private final long zzd(zzwq zzwqVar, int i) throws IOException {
        ((zzwk) zzwqVar).zzn(this.zza, 0, i, false);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.zza[i2] & 255);
        }
        return c;
    }

    public final void zza(zzaar zzaarVar) {
        this.zzd = zzaarVar;
    }

    public final void zzb() {
        this.zze = 0;
        this.zzb.clear();
        this.zzc.zze();
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
    public final boolean zzc(com.google.android.gms.internal.ads.zzwq r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaaq.zzc(com.google.android.gms.internal.ads.zzwq):boolean");
    }
}
