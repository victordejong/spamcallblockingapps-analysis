package com.google.android.gms.internal.ads;

import android.os.StrictMode;
/* renamed from: com.google.android.gms.internal.ads.o3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/o3.class */
public final class C1870o3 {
    /* renamed from: a */
    public static <T> T m6346a(uw1<T> uw1Var) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return uw1Var.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
