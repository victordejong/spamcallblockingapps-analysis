package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqi.class */
public final class zzqi {
    private final zzqh zzbmo;
    private final boolean zzbmp;
    private final long zzbmq;
    private final long zzbmr;
    private long zzbms;
    private long zzbmt;
    private long zzbmu;
    private boolean zzbmv;
    private long zzbmw;
    private long zzbmx;
    private long zzbmy;

    public zzqi() {
        this(-1.0d);
    }

    private zzqi(double d) {
        boolean z = d != -1.0d;
        this.zzbmp = z;
        if (!z) {
            this.zzbmo = null;
            this.zzbmq = -1L;
            this.zzbmr = -1L;
            return;
        }
        this.zzbmo = zzqh.zzjp();
        long j = (long) (1.0E9d / d);
        this.zzbmq = j;
        this.zzbmr = (j * 80) / 100;
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
    public zzqi(android.content.Context r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.<init>(android.content.Context):void");
    }

    private final boolean zzg(long j, long j2) {
        return Math.abs((j2 - this.zzbmw) - (j - this.zzbmx)) > 20000000;
    }

    public final void disable() {
        if (this.zzbmp) {
            this.zzbmo.removeObserver();
        }
    }

    public final void enable() {
        this.zzbmv = false;
        if (this.zzbmp) {
            this.zzbmo.zzjq();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzf(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.zzf(long, long):long");
    }
}
