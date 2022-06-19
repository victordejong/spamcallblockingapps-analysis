package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuy.class */
final class zzuy {
    public static void zza(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == 0.0f ? 0 : 1);
        } catch (IllegalStateException e) {
            zzep.zza("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }
}
