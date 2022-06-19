package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cp3.class */
final class cp3 {
    /* renamed from: a */
    public static void m15999a(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == 0.0f ? 0 : 1);
        } catch (IllegalStateException e) {
            C6952s9.m11098b("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }
}
