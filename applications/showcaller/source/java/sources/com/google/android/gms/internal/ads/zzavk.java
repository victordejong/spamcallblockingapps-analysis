package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
@TargetApi(17)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavk.class */
public final class zzavk extends Surface {

    /* renamed from: d */
    private static boolean f33597d;

    /* renamed from: e */
    private static boolean f33598e;

    /* renamed from: f */
    private final HandlerThreadC7072vi f33599f;

    /* renamed from: g */
    private boolean f33600g;

    public /* synthetic */ zzavk(HandlerThreadC7072vi handlerThreadC7072vi, SurfaceTexture surfaceTexture, boolean z, C7109wi c7109wi) {
        super(surfaceTexture);
        this.f33599f = handlerThreadC7072vi;
    }

    /* renamed from: a */
    public static boolean m8094a(Context context) {
        boolean z;
        synchronized (zzavk.class) {
            try {
                if (!f33598e) {
                    int i = C6961si.f29514a;
                    if (i >= 17) {
                        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                        boolean z2 = false;
                        if (eglQueryString != null) {
                            z2 = false;
                            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                                if (i == 24) {
                                    String str = C6961si.f29517d;
                                    if ((str.startsWith("SM-G950") || str.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
                                        z2 = false;
                                    }
                                }
                                z2 = true;
                            }
                        }
                        f33597d = z2;
                    }
                    f33598e = true;
                }
                z = f33597d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static zzavk m8093b(Context context, boolean z) {
        if (C6961si.f29514a >= 17) {
            boolean z2 = true;
            if (z) {
                z2 = m8094a(context);
            }
            C6367ci.m16039d(z2);
            return new HandlerThreadC7072vi().m10019a(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f33599f) {
            if (!this.f33600g) {
                this.f33599f.m10018b();
                this.f33600g = true;
            }
        }
    }
}
