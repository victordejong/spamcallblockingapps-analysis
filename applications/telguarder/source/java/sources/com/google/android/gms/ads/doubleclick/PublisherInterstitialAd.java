package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzzo;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherInterstitialAd.class */
public final class PublisherInterstitialAd {
    private final zzzo zzadk;

    public PublisherInterstitialAd(Context context) {
        this.zzadk = new zzzo(context, this);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzadk.getAdListener();
    }

    public final String getAdUnitId() {
        return this.zzadk.getAdUnitId();
    }

    public final AppEventListener getAppEventListener() {
        return this.zzadk.getAppEventListener();
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.zzadk.getMediationAdapterClassName();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzadk.getOnCustomRenderedAdLoadedListener();
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

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzadk.zza(publisherAdRequest.zzds());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzadk.setAdListener(adListener);
    }

    public final void setAdUnitId(String str) {
        this.zzadk.setAdUnitId(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.zzadk.setAppEventListener(appEventListener);
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setImmersiveMode(boolean z) {
        this.zzadk.setImmersiveMode(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzadk.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }

    public final void show() {
        this.zzadk.show();
    }
}
