package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.internal.ads.C13088za;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    private static final AdError zzexw = new AdError(0, "Could not instantiate custom event adapter", MobileAds.ERROR_DOMAIN);
    private CustomEventBanner zzexx;
    private CustomEventInterstitial zzexy;
    private CustomEventNative zzexz;
    private View zznh;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zza.class */
    static final class zza implements CustomEventBannerListener {
        private final CustomEventAdapter zzexu;
        private final MediationBannerListener zzexv;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzexu = customEventAdapter;
            this.zzexv = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            C13088za.zzdz("Custom event adapter called onAdClicked.");
            this.zzexv.onAdClicked(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            C13088za.zzdz("Custom event adapter called onAdClosed.");
            this.zzexv.onAdClosed(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            C13088za.zzdz("Custom event adapter called onAdFailedToLoad.");
            this.zzexv.onAdFailedToLoad(this.zzexu, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            C13088za.zzdz("Custom event adapter called onAdFailedToLoad.");
            this.zzexv.onAdFailedToLoad(this.zzexu, adError);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            C13088za.zzdz("Custom event adapter called onAdLeftApplication.");
            this.zzexv.onAdLeftApplication(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
        public final void onAdLoaded(View view) {
            C13088za.zzdz("Custom event adapter called onAdLoaded.");
            this.zzexu.zza(view);
            this.zzexv.onAdLoaded(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            C13088za.zzdz("Custom event adapter called onAdOpened.");
            this.zzexv.onAdOpened(this.zzexu);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzb.class */
    static final class zzb implements CustomEventNativeListener {
        private final CustomEventAdapter zzexu;
        private final MediationNativeListener zzeya;

        public zzb(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.zzexu = customEventAdapter;
            this.zzeya = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            C13088za.zzdz("Custom event adapter called onAdClicked.");
            this.zzeya.onAdClicked(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            C13088za.zzdz("Custom event adapter called onAdClosed.");
            this.zzeya.onAdClosed(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            C13088za.zzdz("Custom event adapter called onAdFailedToLoad.");
            this.zzeya.onAdFailedToLoad(this.zzexu, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            C13088za.zzdz("Custom event adapter called onAdFailedToLoad.");
            this.zzeya.onAdFailedToLoad(this.zzexu, adError);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdImpression() {
            C13088za.zzdz("Custom event adapter called onAdImpression.");
            this.zzeya.onAdImpression(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            C13088za.zzdz("Custom event adapter called onAdLeftApplication.");
            this.zzeya.onAdLeftApplication(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            C13088za.zzdz("Custom event adapter called onAdLoaded.");
            this.zzeya.onAdLoaded(this.zzexu, nativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
            C13088za.zzdz("Custom event adapter called onAdLoaded.");
            this.zzeya.onAdLoaded(this.zzexu, unifiedNativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            C13088za.zzdz("Custom event adapter called onAdOpened.");
            this.zzeya.onAdOpened(this.zzexu);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc.class */
    final class zzc implements CustomEventInterstitialListener {
        private final CustomEventAdapter zzexu;
        private final MediationInterstitialListener zzeyb;

        public zzc(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            CustomEventAdapter.this = r4;
            this.zzexu = customEventAdapter;
            this.zzeyb = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            C13088za.zzdz("Custom event adapter called onAdClicked.");
            this.zzeyb.onAdClicked(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            C13088za.zzdz("Custom event adapter called onAdClosed.");
            this.zzeyb.onAdClosed(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            C13088za.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.zzeyb.onAdFailedToLoad(this.zzexu, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            C13088za.zzdz("Custom event adapter called onFailedToReceiveAd.");
            this.zzeyb.onAdFailedToLoad(this.zzexu, adError);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            C13088za.zzdz("Custom event adapter called onAdLeftApplication.");
            this.zzeyb.onAdLeftApplication(this.zzexu);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onAdLoaded() {
            C13088za.zzdz("Custom event adapter called onReceivedAd.");
            this.zzeyb.onAdLoaded(CustomEventAdapter.this);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            C13088za.zzdz("Custom event adapter called onAdOpened.");
            this.zzeyb.onAdOpened(this.zzexu);
        }
    }

    public final void zza(View view) {
        this.zznh = view;
    }

    private static <T> T zzal(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            C13088za.zzez(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.zznh;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.zzexx;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.zzexy;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.zzexz;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        CustomEventBanner customEventBanner = this.zzexx;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.zzexy;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.zzexz;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        CustomEventBanner customEventBanner = this.zzexx;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.zzexy;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.zzexz;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        CustomEventBanner customEventBanner = (CustomEventBanner) zzal(bundle.getString("class_name"));
        this.zzexx = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.onAdFailedToLoad(this, zzexw);
        } else {
            this.zzexx.requestBannerAd(context, new zza(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) zzal(bundle.getString("class_name"));
        this.zzexy = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, zzexw);
        } else {
            this.zzexy.requestInterstitialAd(context, new zzc(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        CustomEventNative customEventNative = (CustomEventNative) zzal(bundle.getString("class_name"));
        this.zzexz = customEventNative;
        if (customEventNative == null) {
            mediationNativeListener.onAdFailedToLoad(this, zzexw);
        } else {
            this.zzexz.requestNativeAd(context, new zzb(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.zzexy.showInterstitial();
    }
}
