package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafq.class */
public final class zzafq {
    @Deprecated
    public static final String zza;
    private static final HashSet<String> zzb = new HashSet<>();
    private static final String zzc = "goog.exo.core";

    static {
        String str = Build.VERSION.RELEASE;
        zza = C22128a.m8610j(new StringBuilder(String.valueOf(str).length() + 57), "ExoPlayerLib/2.15.0 (Linux; Android ", str, ") ExoPlayerLib/2.15.0");
    }

    public static String zza() {
        String str;
        synchronized (zzafq.class) {
            try {
                str = zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
