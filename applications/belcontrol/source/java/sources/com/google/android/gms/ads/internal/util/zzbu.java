package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbu.class */
public final class zzbu {
    private static zzbu zzegv;
    public String zzegw;

    private zzbu() {
    }

    public static zzbu zzzr() {
        if (zzegv == null) {
            zzegv = new zzbu();
        }
        return zzegv;
    }
}
