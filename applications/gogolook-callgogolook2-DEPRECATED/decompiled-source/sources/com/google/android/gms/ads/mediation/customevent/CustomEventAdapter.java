package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
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
import com.google.android.gms.common.annotation.KeepName;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    public CustomEventBanner zzdka;
    public CustomEventInterstitial zzdkb;
    public CustomEventNative zzdkc;
    public View zzhu;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zza.class */
    public static final class zza implements CustomEventBannerListener {
        public final CustomEventAdapter zzdkd;
        public final MediationBannerListener zzhm;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzdkd = customEventAdapter;
            this.zzhm = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            C7452x1.m20572b("Custom event adapter called onAdClicked.");
            this.zzhm.onAdClicked(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            C7452x1.m20572b("Custom event adapter called onAdClosed.");
            this.zzhm.onAdClosed(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            C7452x1.m20572b("Custom event adapter called onAdFailedToLoad.");
            this.zzhm.onAdFailedToLoad(this.zzdkd, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            C7452x1.m20572b("Custom event adapter called onAdLeftApplication.");
            this.zzhm.onAdLeftApplication(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
        public final void onAdLoaded(View view) {
            C7452x1.m20572b("Custom event adapter called onAdLoaded.");
            this.zzdkd.zza(view);
            this.zzhm.onAdLoaded(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            C7452x1.m20572b("Custom event adapter called onAdOpened.");
            this.zzhm.onAdOpened(this.zzdkd);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzb.class */
    public final class zzb implements CustomEventInterstitialListener {
        public final CustomEventAdapter zzdkd;
        public final MediationInterstitialListener zzhn;

        public zzb(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzdkd = customEventAdapter;
            this.zzhn = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            C7452x1.m20572b("Custom event adapter called onAdClicked.");
            this.zzhn.onAdClicked(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            C7452x1.m20572b("Custom event adapter called onAdClosed.");
            this.zzhn.onAdClosed(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            C7452x1.m20572b("Custom event adapter called onFailedToReceiveAd.");
            this.zzhn.onAdFailedToLoad(this.zzdkd, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            C7452x1.m20572b("Custom event adapter called onAdLeftApplication.");
            this.zzhn.onAdLeftApplication(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onAdLoaded() {
            C7452x1.m20572b("Custom event adapter called onReceivedAd.");
            this.zzhn.onAdLoaded(CustomEventAdapter.this);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            C7452x1.m20572b("Custom event adapter called onAdOpened.");
            this.zzhn.onAdOpened(this.zzdkd);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$zzc.class */
    public static final class zzc implements CustomEventNativeListener {
        public final CustomEventAdapter zzdkd;
        public final MediationNativeListener zzho;

        public zzc(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.zzdkd = customEventAdapter;
            this.zzho = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            C7452x1.m20572b("Custom event adapter called onAdClicked.");
            this.zzho.onAdClicked(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            C7452x1.m20572b("Custom event adapter called onAdClosed.");
            this.zzho.onAdClosed(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            C7452x1.m20572b("Custom event adapter called onAdFailedToLoad.");
            this.zzho.onAdFailedToLoad(this.zzdkd, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdImpression() {
            C7452x1.m20572b("Custom event adapter called onAdImpression.");
            this.zzho.onAdImpression(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            C7452x1.m20572b("Custom event adapter called onAdLeftApplication.");
            this.zzho.onAdLeftApplication(this.zzdkd);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            C7452x1.m20572b("Custom event adapter called onAdLoaded.");
            this.zzho.onAdLoaded(this.zzdkd, nativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
            C7452x1.m20572b("Custom event adapter called onAdLoaded.");
            this.zzho.onAdLoaded(this.zzdkd, unifiedNativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            C7452x1.m20572b("Custom event adapter called onAdOpened.");
            this.zzho.onAdOpened(this.zzdkd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view) {
        this.zzhu = view;
    }

    public static <T> T zzi(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            C7452x1.m20568d(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.zzhu;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.zzdka;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.zzdkb;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.zzdkc;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        CustomEventBanner customEventBanner = this.zzdka;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.zzdkb;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.zzdkc;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        CustomEventBanner customEventBanner = this.zzdka;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.zzdkb;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.zzdkc;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzdka = (CustomEventBanner) zzi(bundle.getString("class_name"));
        if (this.zzdka == null) {
            mediationBannerListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzdka.requestBannerAd(context, new zza(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzdkb = (CustomEventInterstitial) zzi(bundle.getString("class_name"));
        if (this.zzdkb == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzdkb.requestInterstitialAd(context, new zzb(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        this.zzdkc = (CustomEventNative) zzi(bundle.getString("class_name"));
        if (this.zzdkc == null) {
            mediationNativeListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzdkc.requestNativeAd(context, new zzc(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.zzdkb.showInterstitial();
    }
}
