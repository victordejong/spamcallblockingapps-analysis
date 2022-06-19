package com.google.android.gms.ads.rewarded;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/rewarded/RewardItem.class */
public interface RewardItem {
    @RecentlyNonNull
    public static final RewardItem DEFAULT_REWARD = new zza();

    int getAmount();

    @RecentlyNonNull
    String getType();
}
