package com.google.android.gms.internal.firebase_messaging;

import androidx.customview.p026a.AbstractC0610a;
import com.google.android.gms.common.api.Api;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzn.class */
public final class zzn {
    private static final byte[] zza = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};
    private static final int[] zzb = {1, 10, 100, 1000, AbstractC1468a.DEFAULT_TIMEOUT, 100000, 1000000, 10000000, 100000000, 1000000000};
    private static final int[] zzc = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Api.BaseClientBuilder.API_PRIORITY_OTHER};
    private static final int[] zzd = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};
    private static int[] zze = {Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    public static int zza(int i, int i2) {
        long j = i << 1;
        return j > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : j < -2147483648L ? AbstractC0610a.INVALID_ID : (int) j;
    }
}
