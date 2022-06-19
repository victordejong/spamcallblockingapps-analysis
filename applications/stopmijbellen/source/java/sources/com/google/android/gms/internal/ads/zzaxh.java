package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxh.class */
public final class zzaxh extends Surface {
    private static boolean zza;
    private static boolean zzb;
    private final zzaxf zzc;
    private boolean zzd;

    public /* synthetic */ zzaxh(zzaxf zzaxfVar, SurfaceTexture surfaceTexture, boolean z, zzaxg zzaxgVar) {
        super(surfaceTexture);
        this.zzc = zzaxfVar;
    }

    public static zzaxh zza(Context context, boolean z) {
        if (zzaxb.zza >= 17) {
            boolean z2 = true;
            if (z) {
                z2 = zzb(context);
            }
            zzawm.zze(z2);
            return new zzaxf().zza(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    public static boolean zzb(Context context) {
        boolean z;
        synchronized (zzaxh.class) {
            try {
                if (!zzb) {
                    int i = zzaxb.zza;
                    if (i >= 17) {
                        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                        boolean z2 = false;
                        if (eglQueryString != null) {
                            z2 = false;
                            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                                if (i == 24) {
                                    String str = zzaxb.zzd;
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
