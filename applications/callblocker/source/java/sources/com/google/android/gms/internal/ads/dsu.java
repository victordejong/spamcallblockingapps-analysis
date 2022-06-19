package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsu.class */
public final class dsu extends Surface {

    /* renamed from: a */
    private static boolean f15596a;

    /* renamed from: b */
    private static boolean f15597b;

    /* renamed from: c */
    private final boolean f15598c;

    /* renamed from: d */
    private final dsw f15599d;

    /* renamed from: e */
    private boolean f15600e;

    /* JADX INFO: Access modifiers changed from: private */
    public dsu(dsw dswVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f15599d = dswVar;
        this.f15598c = z;
    }

    /* renamed from: a */
    public static dsu m8687a(Context context, boolean z) {
        if (dsn.f15576a < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
        drz.m8770b(!z || m8688a(context));
        return new dsw().m8684a(z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        if ((com.google.android.gms.internal.ads.dsn.f15576a == 24 && ((com.google.android.gms.internal.ads.dsn.f15579d.startsWith("SM-G950") || com.google.android.gms.internal.ads.dsn.f15579d.startsWith("SM-G955")) && !r3.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) == false) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8688a(android.content.Context r3) {
        /*
            r0 = 1
            r4 = r0
            java.lang.Class<com.google.android.gms.internal.ads.dsu> r0 = com.google.android.gms.internal.ads.dsu.class
            monitor-enter(r0)
            boolean r0 = com.google.android.gms.internal.ads.dsu.f15597b     // Catch: java.lang.Throwable -> L76
            if (r0 != 0) goto L63
            int r0 = com.google.android.gms.internal.ads.dsn.f15576a     // Catch: java.lang.Throwable -> L76
            r1 = 17
            if (r0 < r1) goto L5f
            r0 = 0
            android.opengl.EGLDisplay r0 = android.opengl.EGL14.eglGetDisplay(r0)     // Catch: java.lang.Throwable -> L76
            r1 = 12373(0x3055, float:1.7338E-41)
            java.lang.String r0 = android.opengl.EGL14.eglQueryString(r0, r1)     // Catch: java.lang.Throwable -> L76
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L71
            r0 = r5
            java.lang.String r1 = "EGL_EXT_protected_content"
            boolean r0 = r0.contains(r1)     // Catch: java.lang.Throwable -> L76
            if (r0 == 0) goto L71
            int r0 = com.google.android.gms.internal.ads.dsn.f15576a     // Catch: java.lang.Throwable -> L76
            r1 = 24
            if (r0 != r1) goto L6c
            java.lang.String r0 = com.google.android.gms.internal.ads.dsn.f15579d     // Catch: java.lang.Throwable -> L76
            java.lang.String r1 = "SM-G950"
            boolean r0 = r0.startsWith(r1)     // Catch: java.lang.Throwable -> L76
            if (r0 != 0) goto L49
            java.lang.String r0 = com.google.android.gms.internal.ads.dsn.f15579d     // Catch: java.lang.Throwable -> L76
            java.lang.String r1 = "SM-G955"
            boolean r0 = r0.startsWith(r1)     // Catch: java.lang.Throwable -> L76
            if (r0 == 0) goto L6c
        L49:
            r0 = r3
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L76
            java.lang.String r1 = "android.hardware.vr.high_performance"
            boolean r0 = r0.hasSystemFeature(r1)     // Catch: java.lang.Throwable -> L76
            if (r0 != 0) goto L6c
            r0 = 1
            r6 = r0
        L57:
            r0 = r6
            if (r0 != 0) goto L71
        L5b:
            r0 = r4
            com.google.android.gms.internal.ads.dsu.f15596a = r0     // Catch: java.lang.Throwable -> L76
        L5f:
            r0 = 1
            com.google.android.gms.internal.ads.dsu.f15597b = r0     // Catch: java.lang.Throwable -> L76
        L63:
            boolean r0 = com.google.android.gms.internal.ads.dsu.f15596a     // Catch: java.lang.Throwable -> L76 java.lang.Throwable -> L76
            r4 = r0
            java.lang.Class<com.google.android.gms.internal.ads.dsu> r0 = com.google.android.gms.internal.ads.dsu.class
            monitor-exit(r0)
            r0 = r4
            return r0
        L6c:
            r0 = 0
            r6 = r0
            goto L57
        L71:
            r0 = 0
            r4 = r0
            goto L5b
        L76:
            r3 = move-exception
            java.lang.Class<com.google.android.gms.internal.ads.dsu> r0 = com.google.android.gms.internal.ads.dsu.class
            monitor-exit(r0)
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dsu.m8688a(android.content.Context):boolean");
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f15599d) {
            if (!this.f15600e) {
                this.f15599d.m8685a();
                this.f15600e = true;
            }
        }
    }
}
