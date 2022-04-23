package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/is2.class */
public final class is2 {

    /* renamed from: a */
    private final hs2 f6847a;

    /* renamed from: b */
    private final boolean f6848b;

    /* renamed from: c */
    private final long f6849c;

    /* renamed from: d */
    private final long f6850d;

    /* renamed from: e */
    private long f6851e;

    /* renamed from: f */
    private long f6852f;

    /* renamed from: g */
    private long f6853g;

    /* renamed from: h */
    private boolean f6854h;

    /* renamed from: i */
    private long f6855i;

    /* renamed from: j */
    private long f6856j;

    /* renamed from: k */
    private long f6857k;

    private is2(double d) {
        long j;
        boolean z = d != -1.0d;
        this.f6848b = z;
        if (z) {
            this.f6847a = hs2.m7233a();
            long j2 = (long) (1.0E9d / d);
            this.f6849c = j2;
            j = (j2 * 80) / 100;
        } else {
            this.f6847a = null;
            j = -1;
            this.f6849c = -1L;
        }
        this.f6850d = j;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public is2(android.content.Context r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.is2.<init>(android.content.Context):void");
    }

    /* renamed from: d */
    private final boolean m7080d(long j, long j2) {
        return Math.abs((j2 - this.f6855i) - (j - this.f6856j)) > 20000000;
    }

    /* renamed from: a */
    public final void m7083a() {
        this.f6854h = false;
        if (this.f6848b) {
            this.f6847a.m7232b();
        }
    }

    /* renamed from: b */
    public final void m7082b() {
        if (this.f6848b) {
            this.f6847a.m7231c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0077, code lost:
        if (m7080d(r0, r10) != false) goto L_0x0057;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3, types: [long] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.ads.is2] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 5 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m7081c(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.is2.m7081c(long, long):long");
    }
}
