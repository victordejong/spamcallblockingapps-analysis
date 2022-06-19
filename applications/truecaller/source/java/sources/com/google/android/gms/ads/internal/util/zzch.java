package com.google.android.gms.ads.internal.util;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzch.class */
public final class zzch {
    private static zzch zzb;
    public String zza;

    private zzch() {
    }

    public static zzch zza() {
        if (zzb == null) {
            zzb = new zzch();
        }
        return zzb;
    }
}
