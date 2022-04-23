package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eds.class */
public final class eds {

    /* renamed from: a  reason: collision with root package name */
    final edr f27691a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f27692b;

    /* renamed from: c  reason: collision with root package name */
    final long f27693c;

    /* renamed from: d  reason: collision with root package name */
    final long f27694d;
    long e;
    long f;
    long g;
    boolean h;
    long i;
    long j;
    long k;

    public eds() {
        this(-1.0d);
    }

    private eds(double d2) {
        boolean z = d2 != -1.0d;
        this.f27692b = z;
        if (z) {
            this.f27691a = edr.a();
            long j = (long) (1.0E9d / d2);
            this.f27693c = j;
            this.f27694d = (j * 80) / 100;
            return;
        }
        this.f27691a = null;
        this.f27693c = -1L;
        this.f27694d = -1L;
    }

    /* JADX WARN: Illegal instructions before constructor call */
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
            if (r0 == 0) goto L_0x0021
            r0 = r5
            android.view.Display r0 = r0.getDefaultDisplay()
            float r0 = r0.getRefreshRate()
            double r0 = (double) r0
            r6 = r0
            goto L_0x0025
        L_0x0021:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r6 = r0
        L_0x0025:
            r0 = r4
            r1 = r6
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eds.<init>(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(long j, long j2) {
        return Math.abs((j2 - this.i) - (j - this.j)) > 20000000;
    }
}
