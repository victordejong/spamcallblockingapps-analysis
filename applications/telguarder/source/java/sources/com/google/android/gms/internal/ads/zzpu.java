package com.google.android.gms.internal.ads;

import android.os.Trace;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpu.class */
public final class zzpu {
    public static void beginSection(String str) {
        if (zzpt.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void endSection() {
        if (zzpt.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
