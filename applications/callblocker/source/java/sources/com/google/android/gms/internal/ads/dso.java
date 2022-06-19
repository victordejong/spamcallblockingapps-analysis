package com.google.android.gms.internal.ads;

import android.os.Trace;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dso.class */
public final class dso {
    /* renamed from: a */
    public static void m8692a() {
        if (dsn.f15576a >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: a */
    public static void m8691a(String str) {
        if (dsn.f15576a >= 18) {
            Trace.beginSection(str);
        }
    }
}
