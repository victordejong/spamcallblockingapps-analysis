package com.google.ads.mediation.facebook;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.FrameLayout;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdView;
import com.facebook.ads.BidderTokenProvider;
import com.facebook.ads.BuildConfig;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAdBase;
import com.google.ads.mediation.facebook.C1661a;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import java.util.ArrayList;
import java.util.List;
import p198p2.C4011a;
import p207q2.C4147a;
import p207q2.C4148b;
import p207q2.C4150d;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookMediationAdapter.class */
public class FacebookMediationAdapter extends RtbAdapter {
    public static final int ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION = 111;
    public static final int ERROR_BANNER_SIZE_MISMATCH = 102;
    public static final int ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD = 109;
    public static final String ERROR_DOMAIN = "com.google.ads.mediation.facebook";
    public static final int ERROR_FACEBOOK_INITIALIZATION = 104;
    public static final int ERROR_FAILED_TO_PRESENT_AD = 110;
    public static final int ERROR_INVALID_SERVER_PARAMETERS = 101;
    public static final int ERROR_MAPPING_NATIVE_ASSETS = 108;
    public static final int ERROR_NULL_CONTEXT = 107;
    public static final int ERROR_REQUIRES_ACTIVITY_CONTEXT = 103;
    public static final int ERROR_REQUIRES_UNIFIED_NATIVE_ADS = 105;
    public static final int ERROR_WRONG_NATIVE_TYPE = 106;
    public static final String FACEBOOK_SDK_ERROR_DOMAIN = "com.facebook.ads";
    public static final String PLACEMENT_PARAMETER = "pubid";
    public static final String RTB_PLACEMENT_PARAMETER = "placement_id";
    public static final String TAG = "FacebookAdapter";
    private C4147a banner;
    private C4148b interstitial;
    private C4150d nativeAd;
    private C1663b rewardedAd;
    private C4011a rewardedInterstitialAd;

    /* renamed from: com.google.ads.mediation.facebook.FacebookMediationAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/FacebookMediationAdapter$a.class */
    public class C1660a implements C1661a.AbstractC1662a {

        /* renamed from: a */
        public final /* synthetic */ InitializationCompleteCallback f6200a;

        public C1660a(InitializationCompleteCallback initializationCompleteCallback) {
            this.f6200a = initializationCompleteCallback;
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: a */
        public void mo4818a() {
            this.f6200a.onInitializationSucceeded();
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: b */
        public void mo4817b(AdError adError) {
            this.f6200a.onInitializationFailed(adError.getMessage());
        }
    }

    public static AdError getAdError(com.facebook.ads.AdError adError) {
        return new AdError(adError.getErrorCode(), adError.getErrorMessage(), "com.facebook.ads");
    }

    public static String getPlacementID(Bundle bundle) {
        String string = bundle.getString(RTB_PLACEMENT_PARAMETER);
        String str = string;
        if (string == null) {
            str = bundle.getString("pubid");
        }
        return str;
    }

    public static void setMixedAudience(MediationAdConfiguration mediationAdConfiguration) {
        if (mediationAdConfiguration.taggedForChildDirectedTreatment() == 1) {
            AdSettings.setMixedAudience(true);
        } else if (mediationAdConfiguration.taggedForChildDirectedTreatment() != 0) {
        } else {
            AdSettings.setMixedAudience(false);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void collectSignals(RtbSignalData rtbSignalData, SignalCallbacks signalCallbacks) {
        signalCallbacks.onSuccess(BidderTokenProvider.getBidderToken(rtbSignalData.getContext()));
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        String[] split = BuildConfig.VERSION_NAME.split("\\.");
        if (split.length >= 3) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        }
        Log.w(TAG, String.format("Unexpected SDK version format: %s.Returning 0.0.0 for SDK version.", BuildConfig.VERSION_NAME));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        String[] split = "6.8.0.0".split("\\.");
        if (split.length >= 4) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[3]) + (Integer.parseInt(split[2]) * 100));
        }
        Log.w(TAG, String.format("Unexpected adapter version format: %s.Returning 0.0.0 for adapter version.", "6.8.0.0"));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        if (context == null) {
            initializationCompleteCallback.onInitializationFailed("Initialization Failed. Context is null.");
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        for (MediationConfiguration mediationConfiguration : list) {
            String placementID = getPlacementID(mediationConfiguration.getServerParameters());
            if (!TextUtils.isEmpty(placementID)) {
                arrayList.add(placementID);
            }
        }
        if (arrayList.isEmpty()) {
            initializationCompleteCallback.onInitializationFailed("Initialization failed. No placement IDs found.");
        } else {
            C1661a.m4822a().m4820c(context, arrayList, new C1660a(initializationCompleteCallback));
        }
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        C4147a c4147a = new C4147a(mediationBannerAdConfiguration, mediationAdLoadCallback);
        this.banner = c4147a;
        String placementID = getPlacementID(mediationBannerAdConfiguration.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            AdError adError = new AdError(101, "Failed to request ad. PlacementID is null or empty.", ERROR_DOMAIN);
            adError.getMessage();
            c4147a.f13086b.onFailure(adError);
            return;
        }
        setMixedAudience(c4147a.f13085a);
        try {
            c4147a.f13087c = new AdView(c4147a.f13085a.getContext(), placementID, c4147a.f13085a.getBidResponse());
            if (!TextUtils.isEmpty(c4147a.f13085a.getWatermark())) {
                c4147a.f13087c.setExtraHints(new ExtraHints.Builder().mediationData(c4147a.f13085a.getWatermark()).build());
            }
            Context context = c4147a.f13085a.getContext();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c4147a.f13085a.getAdSize().getWidthInPixels(context), -2);
            c4147a.f13088d = new FrameLayout(context);
            c4147a.f13087c.setLayoutParams(layoutParams);
            c4147a.f13088d.addView(c4147a.f13087c);
            AdView adView = c4147a.f13087c;
            adView.loadAd(adView.buildLoadAdConfig().withAdListener(c4147a).withBid(c4147a.f13085a.getBidResponse()).build());
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            AdError adError2 = new AdError(111, valueOf.length() != 0 ? "Failed to create banner ad: ".concat(valueOf) : new String("Failed to create banner ad: "), ERROR_DOMAIN);
            adError2.getMessage();
            c4147a.f13086b.onFailure(adError2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        C4148b c4148b = new C4148b(mediationInterstitialAdConfiguration, mediationAdLoadCallback);
        this.interstitial = c4148b;
        String placementID = getPlacementID(c4148b.f13090a.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            AdError adError = new AdError(101, "Failed to request ad. PlacementID is null or empty. ", ERROR_DOMAIN);
            adError.getMessage();
            c4148b.f13091b.onFailure(adError);
            return;
        }
        setMixedAudience(c4148b.f13090a);
        c4148b.f13092c = new InterstitialAd(c4148b.f13090a.getContext(), placementID);
        if (!TextUtils.isEmpty(c4148b.f13090a.getWatermark())) {
            c4148b.f13092c.setExtraHints(new ExtraHints.Builder().mediationData(c4148b.f13090a.getWatermark()).build());
        }
        InterstitialAd interstitialAd = c4148b.f13092c;
        interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withBid(c4148b.f13090a.getBidResponse()).withAdListener(c4148b).build());
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadNativeAd(MediationNativeAdConfiguration mediationNativeAdConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        C4150d c4150d = new C4150d(mediationNativeAdConfiguration, mediationAdLoadCallback);
        this.nativeAd = c4150d;
        String placementID = getPlacementID(c4150d.f13097a.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            AdError adError = new AdError(101, "Failed to request ad. PlacementID is null or empty.", ERROR_DOMAIN);
            adError.getMessage();
            c4150d.f13098b.onFailure(adError);
            return;
        }
        setMixedAudience(c4150d.f13097a);
        c4150d.f13101e = new MediaView(c4150d.f13097a.getContext());
        try {
            c4150d.f13099c = NativeAdBase.fromBidPayload(c4150d.f13097a.getContext(), placementID, c4150d.f13097a.getBidResponse());
            if (!TextUtils.isEmpty(c4150d.f13097a.getWatermark())) {
                c4150d.f13099c.setExtraHints(new ExtraHints.Builder().mediationData(c4150d.f13097a.getWatermark()).build());
            }
            NativeAdBase nativeAdBase = c4150d.f13099c;
            nativeAdBase.loadAd(nativeAdBase.buildLoadAdConfig().withAdListener(new C4150d.C4152b(c4150d.f13097a.getContext(), c4150d.f13099c)).withBid(c4150d.f13097a.getBidResponse()).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).withPreloadedIconView(-1, -1).build());
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            AdError adError2 = new AdError(109, valueOf.length() != 0 ? "Failed to create native ad from bid payload: ".concat(valueOf) : new String("Failed to create native ad from bid payload: "), ERROR_DOMAIN);
            Log.w(TAG, adError2.getMessage());
            c4150d.f13098b.onFailure(adError2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        C1663b c1663b = new C1663b(mediationRewardedAdConfiguration, mediationAdLoadCallback);
        this.rewardedAd = c1663b;
        c1663b.m4819b();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedInterstitialAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        C4011a c4011a = new C4011a(mediationRewardedAdConfiguration, mediationAdLoadCallback);
        this.rewardedInterstitialAd = c4011a;
        c4011a.m4819b();
    }
}
