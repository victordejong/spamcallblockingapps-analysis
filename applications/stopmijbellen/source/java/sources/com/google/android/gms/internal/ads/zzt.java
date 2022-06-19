package com.google.android.gms.internal.ads;

import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzt.class */
public final class zzt {
    private static final HashSet<String> zza = new HashSet<>();
    private static final String zzb = "goog.exo.core";

    public static String zza() {
        String str;
        synchronized (zzt.class) {
            try {
                str = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
