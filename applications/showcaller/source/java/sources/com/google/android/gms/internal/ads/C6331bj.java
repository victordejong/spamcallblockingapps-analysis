package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
@TargetApi(16)
/* renamed from: com.google.android.gms.internal.ads.bj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bj.class */
public final class C6331bj {

    /* renamed from: a */
    private final Choreographer$FrameCallbackC6294aj f20473a;

    /* renamed from: b */
    private final boolean f20474b;

    /* renamed from: c */
    private final long f20475c;

    /* renamed from: d */
    private final long f20476d;

    /* renamed from: e */
    private long f20477e;

    /* renamed from: f */
    private long f20478f;

    /* renamed from: g */
    private long f20479g;

    /* renamed from: h */
    private boolean f20480h;

    /* renamed from: i */
    private long f20481i;

    /* renamed from: j */
    private long f20482j;

    /* renamed from: k */
    private long f20483k;

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    private C6331bj(double d) {
        char c;
        boolean z = d != -1.0d;
        this.f20474b = z;
        if (z) {
            this.f20473a = Choreographer$FrameCallbackC6294aj.m16587a();
            long j = (long) (1.0E9d / d);
            this.f20475c = j;
            c = (j * 80) / 100;
        } else {
            this.f20473a = null;
            c = 65535;
            this.f20475c = -1L;
        }
        this.f20476d = c;
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
    public C6331bj(android.content.Context r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6331bj.<init>(android.content.Context):void");
    }

    /* renamed from: d */
    private final boolean m16333d(long j, long j2) {
        return Math.abs((j2 - this.f20481i) - (j - this.f20482j)) > 20000000;
    }

    /* renamed from: a */
    public final void m16336a() {
        this.f20480h = false;
        if (this.f20474b) {
            this.f20473a.m16586b();
        }
    }

    /* renamed from: b */
    public final void m16335b() {
        if (this.f20474b) {
            this.f20473a.m16585c();
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
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m16334c(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6331bj.m16334c(long, long):long");
    }
}
