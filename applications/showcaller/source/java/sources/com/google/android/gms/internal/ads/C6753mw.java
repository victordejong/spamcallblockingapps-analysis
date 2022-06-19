package com.google.android.gms.internal.ads;

import android.os.StrictMode;
/* renamed from: com.google.android.gms.internal.ads.mw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mw.class */
public final class C6753mw {
    /* renamed from: a */
    public static <T> T m13065a(jv2<T> jv2Var) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return jv2Var.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
