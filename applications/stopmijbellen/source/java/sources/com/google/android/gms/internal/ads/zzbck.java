package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbck.class */
public final class zzbck {
    private static final zzgko<zzbck> zza = new zzbci();

    public static int zza(int i) {
        if (i != 0) {
            if (i == 1) {
                return 2;
            }
            if (i == 1000) {
                return AdError.NO_FILL_ERROR_CODE;
            }
            return 0;
        }
        return 1;
    }
}
