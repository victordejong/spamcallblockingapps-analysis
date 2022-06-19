package com.google.android.gms.ads.rewarded;

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
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzawb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/RewardedAd.class */
public class RewardedAd {
    private zzawb zzhsd;

    public RewardedAd() {
        this.zzhsd = null;
    }

    @Deprecated
    public RewardedAd(Context context, String str) {
        this.zzhsd = null;
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(str, "adUnitID cannot be null");
        this.zzhsd = new zzawb(context, str);
    }

    public static void load(Context context, String str, AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkNotNull(str, "AdUnitId cannot be null.");
        Preconditions.checkNotNull(adRequest, "AdRequest cannot be null.");
        Preconditions.checkNotNull(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new zzawb(context, str).zza(adRequest.zzds(), rewardedAdLoadCallback);
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkNotNull(str, "AdUnitId cannot be null.");
        Preconditions.checkNotNull(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        Preconditions.checkNotNull(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new zzawb(context, str).zza(adManagerAdRequest.zzds(), rewardedAdLoadCallback);
    }

    public Bundle getAdMetadata() {
        zzawb zzawbVar = this.zzhsd;
        return zzawbVar != null ? zzawbVar.getAdMetadata() : new Bundle();
    }

    public String getAdUnitId() {
        zzawb zzawbVar = this.zzhsd;
        return zzawbVar != null ? zzawbVar.getAdUnitId() : "";
    }

    public FullScreenContentCallback getFullScreenContentCallback() {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.getFullScreenContentCallback();
            return null;
        }
        return null;
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            return zzawbVar.getMediationAdapterClassName();
        }
        return null;
    }

    public OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            return zzawbVar.getOnAdMetadataChangedListener();
        }
        return null;
    }

    public OnPaidEventListener getOnPaidEventListener() {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.getOnPaidEventListener();
            return null;
        }
        return null;
    }

    public ResponseInfo getResponseInfo() {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            return zzawbVar.getResponseInfo();
        }
        return null;
    }

    public RewardItem getRewardItem() {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            return zzawbVar.getRewardItem();
        }
        return null;
    }

    @Deprecated
    public boolean isLoaded() {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            return zzawbVar.isLoaded();
        }
        return false;
    }

    @Deprecated
    public void loadAd(AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.zza(adRequest.zzds(), rewardedAdLoadCallback);
        }
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.zza(publisherAdRequest.zzds(), rewardedAdLoadCallback);
        }
    }

    public void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.setFullScreenContentCallback(fullScreenContentCallback);
        }
    }

    public void setImmersiveMode(boolean z) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.setImmersiveMode(z);
        }
    }

    public void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.setOnAdMetadataChangedListener(onAdMetadataChangedListener);
        }
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.setOnPaidEventListener(onPaidEventListener);
        }
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.show(activity, onUserEarnedRewardListener);
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.show(activity, rewardedAdCallback);
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        zzawb zzawbVar = this.zzhsd;
        if (zzawbVar != null) {
            zzawbVar.show(activity, rewardedAdCallback, z);
        }
    }
}
