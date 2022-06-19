package com.google.android.gms.internal.ads;

import android.os.StrictMode;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjn.class */
public final class zzbjn {
    public static <T> T zza(zzfmj<T> zzfmjVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return zzfmjVar.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
