package com.google.android.gms.internal.ads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxn.class */
public final class zzdxn {
    /* renamed from: a */
    public static int m13070a(int i, int i2) {
        long j = i << 1;
        if (j > 2147483647L) {
            return MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }
}
