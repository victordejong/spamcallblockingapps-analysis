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
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.vb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/rewarded/RewardedAd.class */
public class RewardedAd {
    private vb zzhvf;

    public RewardedAd() {
        this.zzhvf = null;
    }

    @Deprecated
    public RewardedAd(Context context, String str) {
        this.zzhvf = null;
        o.a(context, "context cannot be null");
        o.a(str, (Object) "adUnitID cannot be null");
        this.zzhvf = new vb(context, str);
    }

    public static void load(Context context, String str, AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        o.a(context, "Context cannot be null.");
        o.a(str, (Object) "AdUnitId cannot be null.");
        o.a(adRequest, "AdRequest cannot be null.");
        o.a(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new vb(context, str).a(adRequest.zzdt(), rewardedAdLoadCallback);
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        o.a(context, "Context cannot be null.");
        o.a(str, (Object) "AdUnitId cannot be null.");
        o.a(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        o.a(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new vb(context, str).a(adManagerAdRequest.zzdt(), rewardedAdLoadCallback);
    }

    public Bundle getAdMetadata() {
        vb vbVar = this.zzhvf;
        return vbVar != null ? vbVar.getAdMetadata() : new Bundle();
    }

    public String getAdUnitId() {
        vb vbVar = this.zzhvf;
        return vbVar != null ? vbVar.getAdUnitId() : "";
    }

    public FullScreenContentCallback getFullScreenContentCallback() {
        vb vbVar = this.zzhvf;
        if (vbVar == null) {
            return null;
        }
        vbVar.getFullScreenContentCallback();
        return null;
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            return vbVar.getMediationAdapterClassName();
        }
        return null;
    }

    public OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            return vbVar.getOnAdMetadataChangedListener();
        }
        return null;
    }

    public OnPaidEventListener getOnPaidEventListener() {
        vb vbVar = this.zzhvf;
        if (vbVar == null) {
            return null;
        }
        vbVar.getOnPaidEventListener();
        return null;
    }

    public ResponseInfo getResponseInfo() {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            return vbVar.getResponseInfo();
        }
        return null;
    }

    public RewardItem getRewardItem() {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            return vbVar.getRewardItem();
        }
        return null;
    }

    @Deprecated
    public boolean isLoaded() {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            return vbVar.isLoaded();
        }
        return false;
    }

    @Deprecated
    public void loadAd(AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.a(adRequest.zzdt(), rewardedAdLoadCallback);
        }
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.a(publisherAdRequest.zzdt(), rewardedAdLoadCallback);
        }
    }

    public void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.setFullScreenContentCallback(fullScreenContentCallback);
        }
    }

    public void setImmersiveMode(boolean z) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.setImmersiveMode(z);
        }
    }

    public void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.setOnAdMetadataChangedListener(onAdMetadataChangedListener);
        }
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.setOnPaidEventListener(onPaidEventListener);
        }
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.show(activity, onUserEarnedRewardListener);
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.show(activity, rewardedAdCallback);
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        vb vbVar = this.zzhvf;
        if (vbVar != null) {
            vbVar.show(activity, rewardedAdCallback, z);
        }
    }
}
