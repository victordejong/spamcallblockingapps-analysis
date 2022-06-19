package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlu.class */
public final class zzlu extends Surface {

    /* renamed from: d */
    private static int f34208d;

    /* renamed from: e */
    private static boolean f34209e;

    /* renamed from: f */
    public final boolean f34210f;

    /* renamed from: g */
    private final uo3 f34211g;

    /* renamed from: h */
    private boolean f34212h;

    public /* synthetic */ zzlu(uo3 uo3Var, SurfaceTexture surfaceTexture, boolean z, vo3 vo3Var) {
        super(surfaceTexture);
        this.f34211g = uo3Var;
        this.f34210f = z;
    }

    /* renamed from: a */
    public static boolean m7854a(Context context) {
        int i;
        int i2;
        String eglQueryString;
        synchronized (zzlu.class) {
            try {
                if (!f34209e) {
                    int i3 = C7101wa.f31475a;
                    if (i3 >= 24 && ((i3 >= 26 || (!"samsung".equals(C7101wa.f31477c) && !"XT1650".equals(C7101wa.f31478d))) && ((i3 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content")))) {
                        if (i3 < 17) {
                            i2 = 2;
                        } else {
                            String eglQueryString2 = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                            i2 = 2;
                            if (eglQueryString2 != null) {
                                i2 = 2;
                                if (eglQueryString2.contains("EGL_KHR_surfaceless_context")) {
                                    i2 = 1;
                                }
                            }
                        }
                        f34208d = i2;
                        f34209e = true;
                    }
                    i2 = 0;
                    f34208d = i2;
                    f34209e = true;
                }
                i = f34208d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i != 0;
    }

    /* renamed from: b */
    public static zzlu m7853b(Context context, boolean z) {
        int i = 0;
        boolean z2 = true;
        if (z) {
            z2 = m7854a(context);
        }
        C7173y8.m8895d(z2);
        uo3 uo3Var = new uo3();
        if (z) {
            i = f34208d;
        }
        return uo3Var.m10278a(i);
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f34211g) {
            if (!this.f34212h) {
                this.f34211g.m10277b();
                this.f34212h = true;
            }
        }
    }
}
