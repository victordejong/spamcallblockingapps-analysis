package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtc.class */
public final class dtc {

    /* renamed from: a */
    private final dtb f15652a;

    /* renamed from: b */
    private final boolean f15653b;

    /* renamed from: c */
    private final long f15654c;

    /* renamed from: d */
    private final long f15655d;

    /* renamed from: e */
    private long f15656e;

    /* renamed from: f */
    private long f15657f;

    /* renamed from: g */
    private long f15658g;

    /* renamed from: h */
    private boolean f15659h;

    /* renamed from: i */
    private long f15660i;

    /* renamed from: j */
    private long f15661j;

    /* renamed from: k */
    private long f15662k;

    public dtc() {
        this(-1.0d);
    }

    private dtc(double d) {
        this.f15653b = d != -1.0d;
        if (this.f15653b) {
            this.f15652a = dtb.m8649a();
            this.f15654c = (long) (1.0E9d / d);
            this.f15655d = (this.f15654c * 80) / 100;
            return;
        }
        this.f15652a = null;
        this.f15654c = -1L;
        this.f15655d = -1L;
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
    public dtc(android.content.Context r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.WindowManager r0 = (android.view.WindowManager) r0
            r5 = r0
            r0 = r5
            android.view.Display r0 = r0.getDefaultDisplay()
            if (r0 == 0) goto L24
            r0 = r5
            android.view.Display r0 = r0.getDefaultDisplay()
            float r0 = r0.getRefreshRate()
            double r0 = (double) r0
            r6 = r0
        L1e:
            r0 = r4
            r1 = r6
            r0.<init>(r1)
            return
        L24:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r6 = r0
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dtc.<init>(android.content.Context):void");
    }

    /* renamed from: b */
    private final boolean m8643b(long j, long j2) {
        return Math.abs((j2 - this.f15660i) - (j - this.f15661j)) > 20000000;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0092  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m8645a(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dtc.m8645a(long, long):long");
    }

    /* renamed from: a */
    public final void m8646a() {
        this.f15659h = false;
        if (this.f15653b) {
            this.f15652a.m8648b();
        }
    }

    /* renamed from: b */
    public final void m8644b() {
        if (this.f15653b) {
            this.f15652a.m8647c();
        }
    }
}
