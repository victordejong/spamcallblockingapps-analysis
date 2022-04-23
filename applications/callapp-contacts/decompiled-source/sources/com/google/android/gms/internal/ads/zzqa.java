package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzqa.class */
public final class zzqa extends Surface {
    private static boolean zzble;
    private static boolean zzblf;
    private final boolean zzbdc;
    private final edm zzblg;
    private boolean zzblh;

    private zzqa(edm edmVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.zzblg = edmVar;
        this.zzbdc = z;
    }

    public static zzqa zzc(Context context, boolean z) {
        if (ede.f27664a >= 17) {
            ecr.b(!z || zzc(context));
            return new edm().a(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    public static boolean zzc(Context context) {
        boolean z;
        synchronized (zzqa.class) {
            try {
                if (!zzblf) {
                    if (ede.f27664a >= 17) {
                        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                        boolean z2 = false;
                        if (eglQueryString != null) {
                            z2 = false;
                            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                                z2 = false;
                                if (!(ede.f27664a == 24 && (ede.f27667d.startsWith("SM-G950") || ede.f27667d.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) {
                                    z2 = true;
                                }
                            }
                        }
                        zzble = z2;
                    }
                    zzblf = true;
                }
                z = zzble;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzblg) {
            if (!this.zzblh) {
                this.zzblg.f27676a.sendEmptyMessage(3);
                this.zzblh = true;
            }
        }
    }
}
