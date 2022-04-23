package com.google.android.gms.ads.rewardedinterstitial;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.vn;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd.class */
public abstract class RewardedInterstitialAd {
    public static void load(Context context, String str, AdRequest adRequest, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        o.a(context, "Context cannot be null.");
        o.a(str, (Object) "AdUnitId cannot be null.");
        o.a(adRequest, "AdRequest cannot be null.");
        o.a(rewardedInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new vn(context, str).a(adRequest.zzdt(), rewardedInterstitialAdLoadCallback);
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        o.a(context, "Context cannot be null.");
        o.a(str, (Object) "AdUnitId cannot be null.");
        o.a(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        o.a(rewardedInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new vn(context, str).a(adManagerAdRequest.zzdt(), rewardedInterstitialAdLoadCallback);
    }

    @Deprecated
    public static void load(Context context, String str, PublisherAdRequest publisherAdRequest, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        o.a(context, "Context cannot be null.");
        o.a(str, (Object) "AdUnitId cannot be null.");
        o.a(publisherAdRequest, "PublisherAdRequest cannot be null.");
        o.a(rewardedInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new vn(context, str).a(publisherAdRequest.zzdt(), rewardedInterstitialAdLoadCallback);
    }

    public abstract Bundle getAdMetadata();

    public abstract String getAdUnitId();

    public abstract FullScreenContentCallback getFullScreenContentCallback();

    public abstract OnAdMetadataChangedListener getOnAdMetadataChangedListener();

    public abstract OnPaidEventListener getOnPaidEventListener();

    public abstract ResponseInfo getResponseInfo();

    public abstract RewardItem getRewardItem();

    public abstract void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener);

    public abstract void setOnPaidEventListener(OnPaidEventListener onPaidEventListener);

    public abstract void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions);

    public abstract void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener);
}
