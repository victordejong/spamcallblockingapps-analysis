package com.google.android.gms.internal.ads;

import android.os.StrictMode;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbll.class */
public final class zzbll {
    public static <T> T zza(zzfqs<T> zzfqsVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return zzfqsVar.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
