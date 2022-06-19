package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavk.class */
public final class zzavk extends Surface {
    private static boolean zza;
    private static boolean zzb;
    private final zzavi zzc;
    private boolean zzd;

    public /* synthetic */ zzavk(zzavi zzaviVar, SurfaceTexture surfaceTexture, boolean z, zzavj zzavjVar) {
        super(surfaceTexture);
        this.zzc = zzaviVar;
    }

    public static boolean zza(Context context) {
        boolean z;
        synchronized (zzavk.class) {
            try {
                if (!zzb) {
                    int i = zzave.zza;
                    if (i >= 17) {
                        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                        boolean z2 = false;
                        if (eglQueryString != null) {
                            z2 = false;
                            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                                if (i == 24) {
                                    String str = zzave.zzd;
                                    if ((str.startsWith("SM-G950") || str.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
                                        z2 = false;
                                    }
                                }
                                z2 = true;
                            }
                        }
                        zza = z2;
                    }
                    zzb = true;
                }
                z = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public static zzavk zzb(Context context, boolean z) {
        if (zzave.zza >= 17) {
            boolean z2 = true;
            if (z) {
                z2 = zza(context);
            }
            zzaup.zzd(z2);
            return new zzavi().zza(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzc) {
            if (!this.zzd) {
                this.zzc.zzb();
                this.zzd = true;
            }
        }
    }
}
