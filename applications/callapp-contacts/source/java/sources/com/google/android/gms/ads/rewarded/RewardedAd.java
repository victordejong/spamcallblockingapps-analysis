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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.C12979vb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/rewarded/RewardedAd.class */
public class RewardedAd {
    private C12979vb zzhvf;

    public RewardedAd() {
        this.zzhvf = null;
    }

    @Deprecated
    public RewardedAd(Context context, String str) {
        this.zzhvf = null;
        C12045o.m19161a(context, "context cannot be null");
        C12045o.m19161a(str, (Object) "adUnitID cannot be null");
        this.zzhvf = new C12979vb(context, str);
    }

    public static void load(Context context, String str, AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        C12045o.m19161a(context, "Context cannot be null.");
        C12045o.m19161a(str, (Object) "AdUnitId cannot be null.");
        C12045o.m19161a(adRequest, "AdRequest cannot be null.");
        C12045o.m19161a(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new C12979vb(context, str).m14087a(adRequest.zzdt(), rewardedAdLoadCallback);
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        C12045o.m19161a(context, "Context cannot be null.");
        C12045o.m19161a(str, (Object) "AdUnitId cannot be null.");
        C12045o.m19161a(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        C12045o.m19161a(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new C12979vb(context, str).m14087a(adManagerAdRequest.zzdt(), rewardedAdLoadCallback);
    }

    public Bundle getAdMetadata() {
        C12979vb c12979vb = this.zzhvf;
        return c12979vb != null ? c12979vb.getAdMetadata() : new Bundle();
    }

    public String getAdUnitId() {
        C12979vb c12979vb = this.zzhvf;
        return c12979vb != null ? c12979vb.getAdUnitId() : "";
    }

    public FullScreenContentCallback getFullScreenContentCallback() {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.getFullScreenContentCallback();
            return null;
        }
        return null;
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            return c12979vb.getMediationAdapterClassName();
        }
        return null;
    }

    public OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            return c12979vb.getOnAdMetadataChangedListener();
        }
        return null;
    }

    public OnPaidEventListener getOnPaidEventListener() {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.getOnPaidEventListener();
            return null;
        }
        return null;
    }

    public ResponseInfo getResponseInfo() {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            return c12979vb.getResponseInfo();
        }
        return null;
    }

    public RewardItem getRewardItem() {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            return c12979vb.getRewardItem();
        }
        return null;
    }

    @Deprecated
    public boolean isLoaded() {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            return c12979vb.isLoaded();
        }
        return false;
    }

    @Deprecated
    public void loadAd(AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.m14087a(adRequest.zzdt(), rewardedAdLoadCallback);
        }
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.m14087a(publisherAdRequest.zzdt(), rewardedAdLoadCallback);
        }
    }

    public void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.setFullScreenContentCallback(fullScreenContentCallback);
        }
    }

    public void setImmersiveMode(boolean z) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.setImmersiveMode(z);
        }
    }

    public void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.setOnAdMetadataChangedListener(onAdMetadataChangedListener);
        }
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.setOnPaidEventListener(onPaidEventListener);
        }
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.show(activity, onUserEarnedRewardListener);
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.show(activity, rewardedAdCallback);
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        C12979vb c12979vb = this.zzhvf;
        if (c12979vb != null) {
            c12979vb.show(activity, rewardedAdCallback, z);
        }
    }
}
