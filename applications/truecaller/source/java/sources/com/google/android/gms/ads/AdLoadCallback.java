package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdLoadCallback.class */
public abstract class AdLoadCallback<AdT> {
    public void onAdFailedToLoad(@RecentlyNonNull LoadAdError loadAdError) {
    }

    public void onAdLoaded(@RecentlyNonNull AdT adt) {
    }
}
