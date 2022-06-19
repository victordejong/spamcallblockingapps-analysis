package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzci.class */
public final class zzci {
    private static zzci zzb;
    public String zza;

    private zzci() {
    }

    public static zzci zza() {
        if (zzb == null) {
            zzb = new zzci();
        }
        return zzb;
    }
}
