package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqp.class */
public final class zzqp extends Surface {

    /* renamed from: d */
    private static boolean f9715d;

    /* renamed from: e */
    private static boolean f9716e;

    /* renamed from: b */
    private final ds2 f9717b;

    /* renamed from: c */
    private boolean f9718c;

    public /* synthetic */ zzqp(ds2 ds2Var, SurfaceTexture surfaceTexture, boolean z, cs2 cs2Var) {
        super(surfaceTexture);
        this.f9717b = ds2Var;
    }

    /* renamed from: a */
    public static boolean m4471a(Context context) {
        boolean z;
        synchronized (zzqp.class) {
            try {
                if (!f9716e) {
                    int i = zr2.f9434a;
                    if (i >= 17) {
                        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                        boolean z2 = false;
                        if (eglQueryString != null) {
                            z2 = false;
                            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                                if (i == 24) {
                                    String str = zr2.f9437d;
                                    if ((str.startsWith("SM-G950") || str.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
                                        z2 = false;
                                    }
                                }
                                z2 = true;
                            }
                        }
                        f9715d = z2;
                    }
                    f9716e = true;
                }
                z = f9715d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static zzqp m4470b(Context context, boolean z) {
        if (zr2.f9434a >= 17) {
            boolean z2 = true;
            if (z) {
                z2 = m4471a(context);
            }
            jr2.m6923d(z2);
            return new ds2().m7686a(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f9717b) {
            if (!this.f9718c) {
                this.f9717b.m7685b();
                this.f9718c = true;
            }
        }
    }
}
