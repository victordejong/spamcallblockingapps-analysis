package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eds.class */
public final class eds {

    /* renamed from: a */
    final edr f48806a;

    /* renamed from: b */
    final boolean f48807b;

    /* renamed from: c */
    final long f48808c;

    /* renamed from: d */
    final long f48809d;

    /* renamed from: e */
    long f48810e;

    /* renamed from: f */
    long f48811f;

    /* renamed from: g */
    long f48812g;

    /* renamed from: h */
    boolean f48813h;

    /* renamed from: i */
    long f48814i;

    /* renamed from: j */
    long f48815j;

    /* renamed from: k */
    long f48816k;

    public eds() {
        this(-1.0d);
    }

    private eds(double d) {
        boolean z = d != -1.0d;
        this.f48807b = z;
        if (!z) {
            this.f48806a = null;
            this.f48808c = -1L;
            this.f48809d = -1L;
            return;
        }
        this.f48806a = edr.m15143a();
        long j = (long) (1.0E9d / d);
        this.f48808c = j;
        this.f48809d = (j * 80) / 100;
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
    public eds(android.content.Context r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eds.<init>(android.content.Context):void");
    }

    /* renamed from: a */
    public final boolean m15142a(long j, long j2) {
        return Math.abs((j2 - this.f48814i) - (j - this.f48815j)) > 20000000;
    }
}
