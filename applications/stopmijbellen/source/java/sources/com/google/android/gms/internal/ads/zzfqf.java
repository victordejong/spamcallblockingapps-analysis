package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqf.class */
final class zzfqf {
    private static final Logger zza = Logger.getLogger(zzfqf.class.getName());
    private static final zzfqe zzb = new zzfqe(null);

    private zzfqf() {
    }

    public static String zza(@CheckForNull String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public static boolean zzb(@CheckForNull String str) {
        return str == null || str.isEmpty();
    }
}
