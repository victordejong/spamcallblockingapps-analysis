package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuq.class */
public final class zzuq extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final zzuo zzd;
    private boolean zze;

    public /* synthetic */ zzuq(zzuo zzuoVar, SurfaceTexture surfaceTexture, boolean z, zzup zzupVar) {
        super(surfaceTexture);
        this.zzd = zzuoVar;
        this.zza = z;
    }

    public static zzuq zza(Context context, boolean z) {
        int i = 0;
        boolean z2 = true;
        if (z) {
            z2 = zzb(context);
        }
        zzdy.zzf(z2);
        zzuo zzuoVar = new zzuo();
        if (z) {
            i = zzb;
        }
        return zzuoVar.zza(i);
    }

    public static boolean zzb(Context context) {
        int i;
        int i2;
        String eglQueryString;
        synchronized (zzuq.class) {
            try {
                if (!zzc) {
                    int i3 = zzfn.zza;
                    if (i3 >= 24 && ((i3 >= 26 || (!"samsung".equals(zzfn.zzc) && !"XT1650".equals(zzfn.zzd))) && ((i3 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content")))) {
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
