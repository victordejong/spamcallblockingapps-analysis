package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqa.class */
public final class zzqa extends Surface {
    private static boolean zzbku;
    private static boolean zzbkv;
    private final boolean zzbcs;
    private final zzqc zzbkw;
    private boolean zzbkx;

    /* JADX INFO: Access modifiers changed from: private */
    public zzqa(zzqc zzqcVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.zzbkw = zzqcVar;
        this.zzbcs = z;
    }

    public static zzqa zzc(Context context, boolean z) {
        if (zzpt.SDK_INT >= 17) {
            zzpg.checkState(!z || zzc(context));
            return new zzqc().zzm(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    public static boolean zzc(Context context) {
        boolean z;
        synchronized (zzqa.class) {
            try {
                if (!zzbkv) {
                    if (zzpt.SDK_INT >= 17) {
                        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                        boolean z2 = false;
                        if (eglQueryString != null) {
                            z2 = false;
                            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                                z2 = false;
                                if (!(zzpt.SDK_INT == 24 && (zzpt.MODEL.startsWith("SM-G950") || zzpt.MODEL.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) {
                                    z2 = true;
                                }
                            }
                        }
                        zzbku = z2;
                    }
                    zzbkv = true;
                }
                z = zzbku;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzbkw) {
            if (!this.zzbkx) {
                this.zzbkw.release();
                this.zzbkx = true;
            }
        }
    }
}
