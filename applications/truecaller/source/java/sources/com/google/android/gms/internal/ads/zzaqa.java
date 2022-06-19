package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqa.class */
public final class zzaqa {
    private final byte[] zza = new byte[8];
    private final Stack<zzapy> zzb = new Stack<>();
    private final zzaqh zzc = new zzaqh();
    private int zzd;
    private int zze;
    private long zzf;
    private zzaqc zzg;

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    private final long zzd(zzapn zzapnVar, int i) throws IOException, InterruptedException {
        zzapnVar.zzb(this.zza, 0, i, false);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.zza[i2] & 255);
        }
        return c;
    }

    public final void zza() {
        this.zzd = 0;
        this.zzb.clear();
        this.zzc.zza();
    }

    public final void zzb(zzaqc zzaqcVar) {
        this.zzg = zzaqcVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ec, code lost:
        if (r0 == 1) goto L32;
     */
    /* JADX WARN: Type inference failed for: r0v104, types: [double] */
    /* JADX WARN: Type inference failed for: r0v108, types: [double] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzapn r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqa.zzc(com.google.android.gms.internal.ads.zzapn):boolean");
    }
}
