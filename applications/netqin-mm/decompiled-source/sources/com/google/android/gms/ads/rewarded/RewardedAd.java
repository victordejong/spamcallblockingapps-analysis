package com.google.android.gms.ads.rewarded;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzavn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/RewardedAd.class */
public final class RewardedAd {

    /* renamed from: a */
    public final zzavn f22914a;

    public RewardedAd(Context context, String str) {
        Preconditions.m17287a(context, "context cannot be null");
        Preconditions.m17287a(str, (Object) "adUnitID cannot be null");
        this.f22914a = new zzavn(context, str);
    }

    /* renamed from: a */
    public final void m17903a(Activity activity, RewardedAdCallback rewardedAdCallback) {
        this.f22914a.m16296a(activity, rewardedAdCallback);
    }

    /* renamed from: a */
    public final void m17902a(PublisherAdRequest publisherAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        this.f22914a.m16295a(publisherAdRequest.m18077a(), rewardedAdLoadCallback);
    }

    /* renamed from: a */
    public final boolean m17904a() {
        return this.f22914a.m16297a();
    }
}
