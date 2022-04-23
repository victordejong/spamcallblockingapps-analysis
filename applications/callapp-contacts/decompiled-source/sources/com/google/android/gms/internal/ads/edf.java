package com.google.android.gms.internal.ads;

import android.os.Trace;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edf.class */
public final class edf {
    public static void a() {
        if (ede.f27664a >= 18) {
            Trace.endSection();
        }
    }

    public static void a(String str) {
        if (ede.f27664a >= 18) {
            Trace.beginSection(str);
        }
    }
}
