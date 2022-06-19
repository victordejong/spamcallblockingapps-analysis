package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxm.class */
public final class zzaxm {
    private final zzaxl zza;
    private final boolean zzb;
    private final long zzc;
    private final long zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private boolean zzh;
    private long zzi;
    private long zzj;
    private long zzk;

    public zzaxm() {
        this(-1.0d);
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    private zzaxm(double d) {
        char c;
        boolean z = d != -1.0d;
        this.zzb = z;
        if (z) {
            this.zza = zzaxl.zza();
            long j = (long) (1.0E9d / d);
            this.zzc = j;
            c = (j * 80) / 100;
        } else {
            this.zza = null;
            c = 65535;
            this.zzc = -1L;
        }
        this.zzd = c;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaxm(android.content.Context r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.WindowManager r0 = (android.view.WindowManager) r0
            r5 = r0
            r0 = r5
            android.view.Display r0 = r0.getDefaultDisplay()
            if (r0 == 0) goto L21
            r0 = r5
            android.view.Display r0 = r0.getDefaultDisplay()
            float r0 = r0.getRefreshRate()
            double r0 = (double) r0
            r6 = r0
            goto L25
        L21:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r6 = r0
        L25:
            r0 = r4
            r1 = r6
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxm.<init>(android.content.Context):void");
    }

    private final boolean zzd(long j, long j2) {
        return Math.abs((j2 - this.zzi) - (j - this.zzj)) > 20000000;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxm.zza(long, long):long");
    }

    public final void zzb() {
        if (this.zzb) {
            this.zza.zzc();
        }
    }

    public final void zzc() {
        this.zzh = false;
        if (this.zzb) {
            this.zza.zzb();
        }
    }
}
