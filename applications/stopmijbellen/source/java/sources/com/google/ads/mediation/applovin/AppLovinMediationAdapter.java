package com.google.ads.mediation.applovin;

import android.content.Context;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.mediation.AppLovinIncentivizedAdListener;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.ApplovinAdapter;
import com.applovin.mediation.BuildConfig;
import com.applovin.mediation.rtb.AppLovinRtbBannerRenderer;
import com.applovin.mediation.rtb.AppLovinRtbInterstitialRenderer;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.ads.mediation.applovin.C1644a;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/AppLovinMediationAdapter.class */
public class AppLovinMediationAdapter extends RtbAdapter implements MediationRewardedAd, AppLovinAdLoadListener {
    public static final String APPLOVIN_SDK_ERROR_DOMAIN = "com.applovin.sdk";
    private static final String DEFAULT_ZONE = "";
    public static final int ERROR_AD_ALREADY_REQUESTED = 105;
    public static final int ERROR_AD_FORMAT_UNSUPPORTED = 108;
    public static final int ERROR_BANNER_SIZE_MISMATCH = 101;
    public static final String ERROR_DOMAIN = "com.google.ads.mediation.applovin";
    public static final int ERROR_EMPTY_BID_TOKEN = 104;
    public static final int ERROR_INVALID_SERVER_PARAMETERS = 110;
    public static final int ERROR_PRESENTATON_AD_NOT_READY = 106;
    public static final HashMap<String, AppLovinIncentivizedInterstitial> INCENTIVIZED_ADS = new HashMap<>();
    private static final Object INCENTIVIZED_ADS_LOCK = new Object();
    public static AppLovinSdkSettings appLovinSdkSettings;
    private static boolean isRtbAd = true;

    /* renamed from: ad */
    private AppLovinAd f6149ad;
    private MediationRewardedAdConfiguration adConfiguration;
    private AppLovinIncentivizedInterstitial mIncentivizedInterstitial;
    private MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mMediationAdLoadCallback;
    private Bundle mNetworkExtras;
    private MediationRewardedAdCallback mRewardedAdCallback;
    private AppLovinRtbBannerRenderer mRtbBannerRenderer;
    private AppLovinRtbInterstitialRenderer mRtbInterstitialRenderer;
    private AppLovinSdk mSdk;
    private String mZoneId;

    /* renamed from: com.google.ads.mediation.applovin.AppLovinMediationAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/AppLovinMediationAdapter$a.class */
    public class C1640a implements C1644a.AbstractC1646b {

        /* renamed from: a */
        public final /* synthetic */ HashSet f6150a;

        /* renamed from: b */
        public final /* synthetic */ HashSet f6151b;

        /* renamed from: c */
        public final /* synthetic */ InitializationCompleteCallback f6152c;

        public C1640a(AppLovinMediationAdapter appLovinMediationAdapter, HashSet hashSet, HashSet hashSet2, InitializationCompleteCallback initializationCompleteCallback) {
            this.f6150a = hashSet;
            this.f6151b = hashSet2;
            this.f6152c = initializationCompleteCallback;
        }

        @Override // com.google.ads.mediation.applovin.C1644a.AbstractC1646b
        public void onInitializeSuccess(String str) {
            this.f6150a.add(str);
            if (this.f6150a.equals(this.f6151b)) {
                this.f6152c.onInitializationSucceeded();
            }
        }
    }

    /* renamed from: com.google.ads.mediation.applovin.AppLovinMediationAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/AppLovinMediationAdapter$b.class */
    public class C1641b implements C1644a.AbstractC1646b {

        /* renamed from: a */
        public final /* synthetic */ Bundle f6153a;

        /* renamed from: b */
        public final /* synthetic */ Context f6154b;

        /* renamed from: c */
        public final /* synthetic */ MediationAdLoadCallback f6155c;

        public C1641b(Bundle bundle, Context context, MediationAdLoadCallback mediationAdLoadCallback) {
            AppLovinMediationAdapter.this = r4;
            this.f6153a = bundle;
            this.f6154b = context;
            this.f6155c = mediationAdLoadCallback;
        }

        @Override // com.google.ads.mediation.applovin.C1644a.AbstractC1646b
        public void onInitializeSuccess(String str) {
            AppLovinMediationAdapter.this.mZoneId = AppLovinUtils.retrieveZoneId(this.f6153a);
            AppLovinMediationAdapter.this.mSdk = AppLovinUtils.retrieveSdk(this.f6153a, this.f6154b);
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.mNetworkExtras = appLovinMediationAdapter.adConfiguration.getMediationExtras();
            AppLovinMediationAdapter.this.mMediationAdLoadCallback = this.f6155c;
            ApplovinAdapter.log(3, String.format("Requesting rewarded video for zone '%s'", AppLovinMediationAdapter.this.mZoneId));
            HashMap<String, AppLovinIncentivizedInterstitial> hashMap = AppLovinMediationAdapter.INCENTIVIZED_ADS;
            if (hashMap.containsKey(AppLovinMediationAdapter.this.mZoneId)) {
                AppLovinMediationAdapter appLovinMediationAdapter2 = AppLovinMediationAdapter.this;
                appLovinMediationAdapter2.mIncentivizedInterstitial = hashMap.get(appLovinMediationAdapter2.mZoneId);
                AdError adError = new AdError(105, "Cannot load multiple rewarded ads with the same Zone ID. Display one ad before attempting to load another.", AppLovinMediationAdapter.ERROR_DOMAIN);
                ApplovinAdapter.log(6, adError.getMessage());
                AppLovinMediationAdapter.this.mMediationAdLoadCallback.onFailure(adError);
                return;
            }
            if ("".equals(AppLovinMediationAdapter.this.mZoneId)) {
                AppLovinMediationAdapter appLovinMediationAdapter3 = AppLovinMediationAdapter.this;
                appLovinMediationAdapter3.mIncentivizedInterstitial = AppLovinIncentivizedInterstitial.create(appLovinMediationAdapter3.mSdk);
            } else {
                AppLovinMediationAdapter appLovinMediationAdapter4 = AppLovinMediationAdapter.this;
                appLovinMediationAdapter4.mIncentivizedInterstitial = AppLovinIncentivizedInterstitial.create(appLovinMediationAdapter4.mZoneId, AppLovinMediationAdapter.this.mSdk);
            }
            hashMap.put(AppLovinMediationAdapter.this.mZoneId, AppLovinMediationAdapter.this.mIncentivizedInterstitial);
        }
    }

    /* renamed from: com.google.ads.mediation.applovin.AppLovinMediationAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/AppLovinMediationAdapter$c.class */
    public class RunnableC1642c implements Runnable {
        public RunnableC1642c() {
            AppLovinMediationAdapter.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.mRewardedAdCallback = (MediationRewardedAdCallback) appLovinMediationAdapter.mMediationAdLoadCallback.onSuccess(AppLovinMediationAdapter.this);
        }
    }

    /* renamed from: com.google.ads.mediation.applovin.AppLovinMediationAdapter$d */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/AppLovinMediationAdapter$d.class */
    public class RunnableC1643d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f6158a;

        public RunnableC1643d(int i) {
            AppLovinMediationAdapter.this = r4;
            this.f6158a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdError adError = AppLovinUtils.getAdError(this.f6158a);
            ApplovinAdapter.log(5, adError.getMessage());
            AppLovinMediationAdapter.this.mMediationAdLoadCallback.onFailure(adError);
        }
    }

    public static AppLovinSdkSettings getSdkSettings(Context context) {
        if (appLovinSdkSettings == null) {
            appLovinSdkSettings = new AppLovinSdkSettings(context);
        }
        return appLovinSdkSettings;
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        this.f6149ad = appLovinAd;
        this.f6149ad.getAdIdNumber();
        AppLovinSdkUtils.runOnUiThread(new RunnableC1642c());
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void collectSignals(RtbSignalData rtbSignalData, SignalCallbacks signalCallbacks) {
        MediationConfiguration configuration = rtbSignalData.getConfiguration();
        if (configuration.getFormat() == AdFormat.NATIVE) {
            AdError adError = new AdError(108, "Requested to collect signal for unsupported native ad format. Ignoring...", ERROR_DOMAIN);
            ApplovinAdapter.log(6, adError.getMessage());
            signalCallbacks.onFailure(adError);
            return;
        }
        if (rtbSignalData.getNetworkExtras() != null) {
            StringBuilder m8752j = C0082b.m8752j("Extras for signal collection: ");
            m8752j.append(rtbSignalData.getNetworkExtras());
            ApplovinAdapter.log(4, m8752j.toString());
        }
        String bidToken = AppLovinUtils.retrieveSdk(configuration.getServerParameters(), rtbSignalData.getContext()).getAdService().getBidToken();
        if (TextUtils.isEmpty(bidToken)) {
            AdError adError2 = new AdError(104, "Failed to generate bid token.", ERROR_DOMAIN);
            ApplovinAdapter.log(6, adError2.getMessage());
            signalCallbacks.onFailure(adError2);
            return;
        }
        ApplovinAdapter.log(4, "Generated bid token: " + bidToken);
        signalCallbacks.onSuccess(bidToken);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        if (!isRtbAd) {
            INCENTIVIZED_ADS.remove(this.mZoneId);
        }
        AppLovinSdkUtils.runOnUiThread(new RunnableC1643d(i));
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        String str = AppLovinSdk.VERSION;
        String[] split = str.split("\\.");
        if (split.length >= 3) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        }
        ApplovinAdapter.log(5, String.format("Unexpected SDK version format: %s. Returning 0.0.0 for SDK version.", str));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        String[] split = BuildConfig.ADAPTER_VERSION.split("\\.");
        if (split.length >= 4) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[3]) + (Integer.parseInt(split[2]) * 100));
        }
        ApplovinAdapter.log(5, String.format("Unexpected adapter version format: %s. Returning 0.0.0 for adapter version.", BuildConfig.ADAPTER_VERSION));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        HashSet hashSet = new HashSet();
        for (MediationConfiguration mediationConfiguration : list) {
            String string = mediationConfiguration.getServerParameters().getString(AppLovinUtils.ServerParameterKeys.SDK_KEY);
            if (!TextUtils.isEmpty(string)) {
                hashSet.add(string);
            }
        }
        String retrieveSdkKey = AppLovinUtils.retrieveSdkKey(context, null);
        if (!TextUtils.isEmpty(retrieveSdkKey)) {
            hashSet.add(retrieveSdkKey);
        }
        if (hashSet.isEmpty()) {
            AdError adError = new AdError(110, "Missing or invalid SDK Key.", ERROR_DOMAIN);
            ApplovinAdapter.log(5, adError.getMessage());
            initializationCompleteCallback.onInitializationFailed(adError.getMessage());
            return;
        }
        HashSet hashSet2 = new HashSet();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            C1644a.m4828a().m4827b(context, (String) it2.next(), new C1640a(this, hashSet2, hashSet, initializationCompleteCallback));
        }
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        AppLovinRtbBannerRenderer appLovinRtbBannerRenderer = new AppLovinRtbBannerRenderer(mediationBannerAdConfiguration, mediationAdLoadCallback);
        this.mRtbBannerRenderer = appLovinRtbBannerRenderer;
        appLovinRtbBannerRenderer.loadAd();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        AppLovinRtbInterstitialRenderer appLovinRtbInterstitialRenderer = new AppLovinRtbInterstitialRenderer(mediationInterstitialAdConfiguration, mediationAdLoadCallback);
        this.mRtbInterstitialRenderer = appLovinRtbInterstitialRenderer;
        appLovinRtbInterstitialRenderer.loadAd();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationRewardedAdConfiguration;
        Context context = mediationRewardedAdConfiguration.getContext();
        if (mediationRewardedAdConfiguration.getBidResponse().equals("")) {
            isRtbAd = false;
        }
        if (isRtbAd) {
            this.mMediationAdLoadCallback = mediationAdLoadCallback;
            this.mNetworkExtras = this.adConfiguration.getMediationExtras();
            AppLovinSdk retrieveSdk = AppLovinUtils.retrieveSdk(this.adConfiguration.getServerParameters(), context);
            this.mSdk = retrieveSdk;
            this.mIncentivizedInterstitial = AppLovinIncentivizedInterstitial.create(retrieveSdk);
            this.mSdk.getAdService().loadNextAdForAdToken(this.adConfiguration.getBidResponse(), this);
            return;
        }
        synchronized (INCENTIVIZED_ADS_LOCK) {
            Bundle serverParameters = this.adConfiguration.getServerParameters();
            String retrieveSdkKey = AppLovinUtils.retrieveSdkKey(context, serverParameters);
            if (!TextUtils.isEmpty(retrieveSdkKey)) {
                C1644a.m4828a().m4827b(context, retrieveSdkKey, new C1641b(serverParameters, context, mediationAdLoadCallback));
                this.mIncentivizedInterstitial.preload(this);
                return;
            }
            AdError adError = new AdError(110, "Missing or invalid SDK Key.", ERROR_DOMAIN);
            ApplovinAdapter.log(6, adError.getMessage());
            mediationAdLoadCallback.onFailure(adError);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        this.mSdk.getSettings().setMuted(AppLovinUtils.shouldMuteAudio(this.mNetworkExtras));
        AppLovinIncentivizedAdListener appLovinIncentivizedAdListener = new AppLovinIncentivizedAdListener(this.adConfiguration, this.mRewardedAdCallback);
        if (isRtbAd) {
            this.mIncentivizedInterstitial.show(this.f6149ad, context, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener);
            return;
        }
        String str = this.mZoneId;
        if (str != null) {
            ApplovinAdapter.log(3, String.format("Showing rewarded video for zone '%s'", str));
        }
        if (this.mIncentivizedInterstitial.isAdReadyToDisplay()) {
            this.mIncentivizedInterstitial.show(context, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener);
            return;
        }
        AdError adError = new AdError(106, "Ad not ready to show.", ERROR_DOMAIN);
        ApplovinAdapter.log(6, adError.getMessage());
        this.mRewardedAdCallback.onAdFailedToShow(adError);
    }
}
