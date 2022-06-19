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
import com.google.android.gms.internal.ads.zzazk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    private static final AdError zzevq = new AdError(0, "Could not instantiate custom event adapter", MobileAds.ERROR_DOMAIN);
    private CustomEventBanner zzevr;
    private CustomEventInterstitial zzevs;
    private CustomEventNative zzevt;
    private View zznc;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zza.class */
    static final class zza implements CustomEventBannerListener {
        private final CustomEventAdapter zzevo;
        private final MediationBannerListener zzevp;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzevo = customEventAdapter;
            this.zzevp = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzazk.zzdy("Custom event adapter called onAdClicked.");
            this.zzevp.onAdClicked(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzazk.zzdy("Custom event adapter called onAdClosed.");
            this.zzevp.onAdClosed(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzazk.zzdy("Custom event adapter called onAdFailedToLoad.");
            this.zzevp.onAdFailedToLoad(this.zzevo, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            zzazk.zzdy("Custom event adapter called onAdFailedToLoad.");
            this.zzevp.onAdFailedToLoad(this.zzevo, adError);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzazk.zzdy("Custom event adapter called onAdLeftApplication.");
            this.zzevp.onAdLeftApplication(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
        public final void onAdLoaded(View view) {
            zzazk.zzdy("Custom event adapter called onAdLoaded.");
            this.zzevo.zza(view);
            this.zzevp.onAdLoaded(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzazk.zzdy("Custom event adapter called onAdOpened.");
            this.zzevp.onAdOpened(this.zzevo);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzb.class */
    static final class zzb implements CustomEventNativeListener {
        private final CustomEventAdapter zzevo;
        private final MediationNativeListener zzevu;

        public zzb(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.zzevo = customEventAdapter;
            this.zzevu = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzazk.zzdy("Custom event adapter called onAdClicked.");
            this.zzevu.onAdClicked(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzazk.zzdy("Custom event adapter called onAdClosed.");
            this.zzevu.onAdClosed(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzazk.zzdy("Custom event adapter called onAdFailedToLoad.");
            this.zzevu.onAdFailedToLoad(this.zzevo, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            zzazk.zzdy("Custom event adapter called onAdFailedToLoad.");
            this.zzevu.onAdFailedToLoad(this.zzevo, adError);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdImpression() {
            zzazk.zzdy("Custom event adapter called onAdImpression.");
            this.zzevu.onAdImpression(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzazk.zzdy("Custom event adapter called onAdLeftApplication.");
            this.zzevu.onAdLeftApplication(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            zzazk.zzdy("Custom event adapter called onAdLoaded.");
            this.zzevu.onAdLoaded(this.zzevo, nativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
            zzazk.zzdy("Custom event adapter called onAdLoaded.");
            this.zzevu.onAdLoaded(this.zzevo, unifiedNativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzazk.zzdy("Custom event adapter called onAdOpened.");
            this.zzevu.onAdOpened(this.zzevo);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc.class */
    final class zzc implements CustomEventInterstitialListener {
        private final CustomEventAdapter zzevo;
        private final MediationInterstitialListener zzevv;

        public zzc(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            CustomEventAdapter.this = r4;
            this.zzevo = customEventAdapter;
            this.zzevv = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzazk.zzdy("Custom event adapter called onAdClicked.");
            this.zzevv.onAdClicked(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzazk.zzdy("Custom event adapter called onAdClosed.");
            this.zzevv.onAdClosed(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.zzevv.onAdFailedToLoad(this.zzevo, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(AdError adError) {
            zzazk.zzdy("Custom event adapter called onFailedToReceiveAd.");
            this.zzevv.onAdFailedToLoad(this.zzevo, adError);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzazk.zzdy("Custom event adapter called onAdLeftApplication.");
            this.zzevv.onAdLeftApplication(this.zzevo);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onAdLoaded() {
            zzazk.zzdy("Custom event adapter called onReceivedAd.");
            this.zzevv.onAdLoaded(CustomEventAdapter.this);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzazk.zzdy("Custom event adapter called onAdOpened.");
            this.zzevv.onAdOpened(this.zzevo);
        }
    }

    public final void zza(View view) {
        this.zznc = view;
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
            zzazk.zzex(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.zznc;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.zzevr;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.zzevs;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.zzevt;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        CustomEventBanner customEventBanner = this.zzevr;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.zzevs;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.zzevt;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        CustomEventBanner customEventBanner = this.zzevr;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.zzevs;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.zzevt;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        CustomEventBanner customEventBanner = (CustomEventBanner) zzal(bundle.getString("class_name"));
        this.zzevr = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.onAdFailedToLoad(this, zzevq);
        } else {
            this.zzevr.requestBannerAd(context, new zza(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) zzal(bundle.getString("class_name"));
        this.zzevs = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, zzevq);
        } else {
            this.zzevs.requestInterstitialAd(context, new zzc(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        CustomEventNative customEventNative = (CustomEventNative) zzal(bundle.getString("class_name"));
        this.zzevt = customEventNative;
        if (customEventNative == null) {
            mediationNativeListener.onAdFailedToLoad(this, zzevq);
        } else {
            this.zzevt.requestNativeAd(context, new zzb(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.zzevs.showInterstitial();
    }
}
