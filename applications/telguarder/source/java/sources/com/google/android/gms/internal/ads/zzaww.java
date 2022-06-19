package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaww.class */
public final class zzaww {
    public static boolean isEnabled() {
        return zzado.zzdek.get().booleanValue();
    }

    public static void zzdy(String str) {
        if (zzado.zzdek.get().booleanValue()) {
            zzd.zzdy(str);
        }
    }
}
