package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwh.class */
public final class zzdwh {
    private static final Logger logger = Logger.getLogger(zzdwh.class.getName());
    private static final zzdwi zzhvy = new zza();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwh$zza.class */
    private static final class zza {
        private zza() {
        }
    }

    private zzdwh() {
    }

    public static String emptyToNull(@NullableDecl String str) {
        String str2 = str;
        if (zzhl(str)) {
            str2 = null;
        }
        return str2;
    }

    public static boolean zzhl(@NullableDecl String str) {
        return str == null || str.isEmpty();
    }

    public static String zzhm(@NullableDecl String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }
}
