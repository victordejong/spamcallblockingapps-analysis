package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmc.class */
public final class zzmc {
    public static void zza(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == 0.0f ? 0 : 1);
        } catch (IllegalStateException e) {
            zzaln.zzb("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }
}
