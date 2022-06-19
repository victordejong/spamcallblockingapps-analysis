package com.applovin.mediation;

import android.content.Context;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.ads.mediation.applovin.C1644a;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ApplovinAdapter.class */
public class ApplovinAdapter extends AppLovinMediationAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, OnContextChangedListener {
    private static final boolean LOGGING_ENABLED = true;
    private static final HashMap<String, WeakReference<ApplovinAdapter>> appLovinInterstitialAds = new HashMap<>();
    private AppLovinAd appLovinInterstitialAd;
    private AppLovinAdView mAdView;
    private Context mContext;
    private MediationInterstitialListener mMediationInterstitialListener;
    private Bundle mNetworkExtras;
    private AppLovinSdk mSdk;
    private String mZoneId;

    /* renamed from: com.applovin.mediation.ApplovinAdapter$1 */
    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/ApplovinAdapter$1.class */
    public class C15591 implements C1644a.AbstractC1646b {
        public final /* synthetic */ Context val$context;
        public final /* synthetic */ MediationInterstitialListener val$interstitialListener;
        public final /* synthetic */ Bundle val$networkExtras;
        public final /* synthetic */ Bundle val$serverParameters;

        public C15591(Bundle bundle, MediationInterstitialListener mediationInterstitialListener, Context context, Bundle bundle2) {
            ApplovinAdapter.this = r4;
            this.val$serverParameters = bundle;
            this.val$interstitialListener = mediationInterstitialListener;
            this.val$context = context;
            this.val$networkExtras = bundle2;
        }

        @Override // com.google.ads.mediation.applovin.C1644a.AbstractC1646b
        public void onInitializeSuccess(String str) {
            ApplovinAdapter.this.mZoneId = AppLovinUtils.retrieveZoneId(this.val$serverParameters);
            if (ApplovinAdapter.appLovinInterstitialAds.containsKey(ApplovinAdapter.this.mZoneId) && ((WeakReference) ApplovinAdapter.appLovinInterstitialAds.get(ApplovinAdapter.this.mZoneId)).get() != null) {
                AdError adError = new AdError(105, " Cannot load multiple interstitial ads with the same Zone ID. Display one ad before attempting to load another. ", AppLovinMediationAdapter.ERROR_DOMAIN);
                ApplovinAdapter.log(6, adError.getMessage());
                this.val$interstitialListener.onAdFailedToLoad(ApplovinAdapter.this, adError);
                return;
            }
            ApplovinAdapter.appLovinInterstitialAds.put(ApplovinAdapter.this.mZoneId, new WeakReference(ApplovinAdapter.this));
            ApplovinAdapter.this.mSdk = AppLovinUtils.retrieveSdk(this.val$serverParameters, this.val$context);
            ApplovinAdapter.this.mContext = this.val$context;
            ApplovinAdapter.this.mNetworkExtras = this.val$networkExtras;
            ApplovinAdapter.this.mMediationInterstitialListener = this.val$interstitialListener;
            ApplovinAdapter.log(3, "Requesting interstitial for zone: " + ApplovinAdapter.this.mZoneId);
            AppLovinAdLoadListener appLovinAdLoadListener = new AppLovinAdLoadListener() { // from class: com.applovin.mediation.ApplovinAdapter.1.1
                @Override // com.applovin.sdk.AppLovinAdLoadListener
                public void adReceived(AppLovinAd appLovinAd) {
                    StringBuilder m8752j = C0082b.m8752j("Interstitial did load ad: ");
                    m8752j.append(appLovinAd.getAdIdNumber());
                    m8752j.append(" for zone: ");
                    m8752j.append(ApplovinAdapter.this.mZoneId);
                    ApplovinAdapter.log(3, m8752j.toString());
                    ApplovinAdapter.this.appLovinInterstitialAd = appLovinAd;
                    AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.mediation.ApplovinAdapter.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ApplovinAdapter.this.mMediationInterstitialListener.onAdLoaded(ApplovinAdapter.this);
                        }
                    });
                }

                @Override // com.applovin.sdk.AppLovinAdLoadListener
                public void failedToReceiveAd(int i) {
                    final AdError adError2 = AppLovinUtils.getAdError(i);
                    ApplovinAdapter.log(5, adError2.getMessage());
                    ApplovinAdapter.this.unregister();
                    AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.mediation.ApplovinAdapter.1.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ApplovinAdapter.this.mMediationInterstitialListener.onAdFailedToLoad(ApplovinAdapter.this, adError2);
                        }
                    });
                }
            };
            if (!TextUtils.isEmpty(ApplovinAdapter.this.mZoneId)) {
                ApplovinAdapter.this.mSdk.getAdService().loadNextAdForZoneId(ApplovinAdapter.this.mZoneId, appLovinAdLoadListener);
            } else {
                ApplovinAdapter.this.mSdk.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinAdLoadListener);
            }
        }
    }

    public static void log(int i, String str) {
        Log.println(i, "AppLovinAdapter", str);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.mAdView;
    }

    @Override // com.google.android.gms.ads.mediation.OnContextChangedListener
    public void onContextChanged(Context context) {
        log(3, "Context changed: " + context);
        this.mContext = context;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(final Context context, final MediationBannerListener mediationBannerListener, final Bundle bundle, final AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        String retrieveSdkKey = AppLovinUtils.retrieveSdkKey(context, bundle);
        if (!TextUtils.isEmpty(retrieveSdkKey)) {
            C1644a.m4828a().m4827b(context, retrieveSdkKey, new C1644a.AbstractC1646b() { // from class: com.applovin.mediation.ApplovinAdapter.2
                @Override // com.google.ads.mediation.applovin.C1644a.AbstractC1646b
                public void onInitializeSuccess(String str) {
                    ApplovinAdapter.this.mSdk = AppLovinUtils.retrieveSdk(bundle, context);
                    ApplovinAdapter.this.mZoneId = AppLovinUtils.retrieveZoneId(bundle);
                    AppLovinAdSize appLovinAdSizeFromAdMobAdSize = AppLovinUtils.appLovinAdSizeFromAdMobAdSize(context, adSize);
                    if (appLovinAdSizeFromAdMobAdSize == null) {
                        AdError adError = new AdError(101, "Failed to request banner with unsupported size.", AppLovinMediationAdapter.ERROR_DOMAIN);
                        ApplovinAdapter.log(6, adError.getMessage());
                        mediationBannerListener.onAdFailedToLoad(ApplovinAdapter.this, adError);
                    }
                    ApplovinAdapter.log(3, "Requesting banner of size " + appLovinAdSizeFromAdMobAdSize + " for zone: " + ApplovinAdapter.this.mZoneId);
                    ApplovinAdapter.this.mAdView = new AppLovinAdView(ApplovinAdapter.this.mSdk, appLovinAdSizeFromAdMobAdSize, context);
                    AppLovinBannerAdListener appLovinBannerAdListener = new AppLovinBannerAdListener(ApplovinAdapter.this.mZoneId, ApplovinAdapter.this.mAdView, ApplovinAdapter.this, mediationBannerListener);
                    ApplovinAdapter.this.mAdView.setAdDisplayListener(appLovinBannerAdListener);
                    ApplovinAdapter.this.mAdView.setAdClickListener(appLovinBannerAdListener);
                    ApplovinAdapter.this.mAdView.setAdViewEventListener(appLovinBannerAdListener);
                    if (!TextUtils.isEmpty(ApplovinAdapter.this.mZoneId)) {
                        ApplovinAdapter.this.mSdk.getAdService().loadNextAdForZoneId(ApplovinAdapter.this.mZoneId, appLovinBannerAdListener);
                    } else {
                        ApplovinAdapter.this.mSdk.getAdService().loadNextAd(appLovinAdSizeFromAdMobAdSize, appLovinBannerAdListener);
                    }
                }
            });
            return;
        }
        AdError adError = new AdError(110, "Missing or invalid SDK Key.", AppLovinMediationAdapter.ERROR_DOMAIN);
        log(6, adError.getMessage());
        mediationBannerListener.onAdFailedToLoad(this, adError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        String retrieveSdkKey = AppLovinUtils.retrieveSdkKey(context, bundle);
        if (!TextUtils.isEmpty(retrieveSdkKey)) {
            C1644a.m4828a().m4827b(context, retrieveSdkKey, new C15591(bundle, mediationInterstitialListener, context, bundle2));
            return;
        }
        AdError adError = new AdError(110, "Missing or invalid SDK Key.", AppLovinMediationAdapter.ERROR_DOMAIN);
        log(6, adError.getMessage());
        mediationInterstitialListener.onAdFailedToLoad(this, adError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.mSdk.getSettings().setMuted(AppLovinUtils.shouldMuteAudio(this.mNetworkExtras));
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.mSdk, this.mContext);
        AppLovinInterstitialAdListener appLovinInterstitialAdListener = new AppLovinInterstitialAdListener(this, this.mMediationInterstitialListener);
        create.setAdDisplayListener(appLovinInterstitialAdListener);
        create.setAdClickListener(appLovinInterstitialAdListener);
        create.setAdVideoPlaybackListener(appLovinInterstitialAdListener);
        if (this.appLovinInterstitialAd != null) {
            StringBuilder m8752j = C0082b.m8752j("Showing interstitial for zone: ");
            m8752j.append(this.mZoneId);
            log(3, m8752j.toString());
            create.showAndRender(this.appLovinInterstitialAd);
            return;
        }
        log(3, "Attempting to show interstitial before one was loaded.");
        if (TextUtils.isEmpty(this.mZoneId)) {
            log(3, "Showing interstitial preloaded by SDK.");
            create.show();
            return;
        }
        this.mMediationInterstitialListener.onAdOpened(this);
        this.mMediationInterstitialListener.onAdClosed(this);
    }

    public void unregister() {
        if (!TextUtils.isEmpty(this.mZoneId)) {
            HashMap<String, WeakReference<ApplovinAdapter>> hashMap = appLovinInterstitialAds;
            if (!hashMap.containsKey(this.mZoneId) || !equals(hashMap.get(this.mZoneId).get())) {
                return;
            }
            hashMap.remove(this.mZoneId);
        }
    }
}
