package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzflw.class */
public final class zzflw {
    private static final Logger zza = Logger.getLogger(zzflw.class.getName());
    private static final zzflu zzb = new zzflu(null);

    private zzflw() {
    }

    public static boolean zza(String str) {
        return str == null || str.isEmpty();
    }

    public static String zzb(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }
}
