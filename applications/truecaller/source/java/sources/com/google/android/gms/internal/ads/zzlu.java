package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlu.class */
public final class zzlu extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final zzls zzd;
    private boolean zze;

    public /* synthetic */ zzlu(zzls zzlsVar, SurfaceTexture surfaceTexture, boolean z, zzlt zzltVar) {
        super(surfaceTexture);
        this.zzd = zzlsVar;
        this.zza = z;
    }

    public static boolean zza(Context context) {
        int i;
        int i2;
        String eglQueryString;
        synchronized (zzlu.class) {
            try {
                if (!zzc) {
                    int i3 = zzamq.zza;
                    if (i3 >= 24 && ((i3 >= 26 || (!"samsung".equals(zzamq.zzc) && !"XT1650".equals(zzamq.zzd))) && ((i3 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content")))) {
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
                        zzb = i2;
                        zzc = true;
                    }
                    i2 = 0;
                    zzb = i2;
                    zzc = true;
                }
                i = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i != 0;
    }

    public static zzlu zzb(Context context, boolean z) {
        int i = 0;
        boolean z2 = true;
        if (z) {
            z2 = zza(context);
        }
        zzakt.zzd(z2);
        zzls zzlsVar = new zzls();
        if (z) {
            i = zzb;
        }
        return zzlsVar.zza(i);
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzd) {
            if (!this.zze) {
                this.zzd.zzb();
                this.zze = true;
            }
        }
    }
}
