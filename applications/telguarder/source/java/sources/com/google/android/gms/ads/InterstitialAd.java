package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzvc;
import com.google.android.gms.internal.ads.zzzo;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/InterstitialAd.class */
public final class InterstitialAd {
    private final zzzo zzadk;

    public InterstitialAd(Context context) {
        this.zzadk = new zzzo(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzadk.getAdListener();
    }

    public final Bundle getAdMetadata() {
        return this.zzadk.getAdMetadata();
    }

    public final String getAdUnitId() {
        return this.zzadk.getAdUnitId();
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.zzadk.getMediationAdapterClassName();
    }

    public final ResponseInfo getResponseInfo() {
        return this.zzadk.getResponseInfo();
    }

    public final boolean isLoaded() {
        return this.zzadk.isLoaded();
    }

    public final boolean isLoading() {
        return this.zzadk.isLoading();
    }

    public final void loadAd(AdRequest adRequest) {
        this.zzadk.zza(adRequest.zzds());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzadk.setAdListener(adListener);
        if (adListener != null && (adListener instanceof zzvc)) {
            this.zzadk.zza((zzvc) adListener);
        } else if (adListener != null) {
        } else {
            this.zzadk.zza((zzvc) null);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        this.zzadk.setAdMetadataListener(adMetadataListener);
    }

    public final void setAdUnitId(String str) {
        this.zzadk.setAdUnitId(str);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzadk.setImmersiveMode(z);
    }

    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.zzadk.setOnPaidEventListener(onPaidEventListener);
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzadk.setRewardedVideoAdListener(rewardedVideoAdListener);
    }

    public final void show() {
        this.zzadk.show();
    }

    public final void zzd(boolean z) {
        this.zzadk.zzd(true);
    }
}
