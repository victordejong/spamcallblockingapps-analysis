package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.log.Logger;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener.class */
public class PostcallAdmobListener {
    private static PostcallAdmobListener mInstance;
    public String ADMOB;
    private String TAG;
    private AdListener adListener = new AdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallAdmobListener.1
        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzvc
        public void onAdClicked() {
            super.onAdClicked();
            Logger.debug(PostcallAdmobListener.this.TAG, "onAdClicked");
            AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallAdmobListener.this.ADMOB);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD CLICKED");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            if (PostcallAdmobListener.this.mProvider != null) {
                PostcallAdmobListener.this.mProvider.closed = true;
                PostcallAdvertProxy.getInstance().hideAdInfoText();
            }
            Logger.debug(PostcallAdmobListener.this.TAG, "onAdClosed");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD CLOSED");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            super.onAdFailedToLoad(i);
            if (PostcallAdMobPreloader.isInstanciated()) {
                PostcallAdMobPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdmobListener.this.TAG, "onAdFailedToLoad");
            if (i == 0) {
                AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallAdmobListener.this.ADMOB);
                if (PostcallAdmobListener.this.mPreloader != null) {
                    PostcallAdmobListener.this.mPreloader.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                }
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR");
            } else if (i == 1) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdmobListener.this.ADMOB);
                if (PostcallAdmobListener.this.mPreloader != null) {
                    PostcallAdmobListener.this.mPreloader.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                }
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST");
            } else if (i == 2) {
                AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallAdmobListener.this.ADMOB);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR");
                if (PostcallAdmobListener.this.mPreloader != null) {
                    if (!PostcallAdmobListener.this.mPreloader.mAdvert.isBackupNetwork && PostcallAdmobListener.this.mPreloader.mLoadAttempt < 8) {
                        AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD RETRY.. ");
                        PostcallAdmobListener.this.mPreloader.mLoadAttempt++;
                        PostcallAdmobListener.this.mPreloader.loadAdvert();
                        return;
                    }
                    PostcallAdmobListener.this.mPreloader.mLoadAttempt = 0;
                    PostcallAdmobListener.this.mPreloader.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                }
            } else if (i != 3) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdmobListener.this.ADMOB);
                if (PostcallAdmobListener.this.mPreloader != null) {
                    PostcallAdmobListener.this.mPreloader.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                }
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD FAILED TO LOAD");
            } else {
                AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallAdmobListener.this.ADMOB);
                if (PostcallAdmobListener.this.mPreloader != null) {
                    PostcallAdmobListener.this.mPreloader.setState(PostcallAdvertPreloader.AdvertPreloadState.NO_AD);
                }
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL");
            }
            if (PostcallAdmobListener.this.mProvider != null) {
                PostcallAdmobListener.this.mProvider.error();
            } else if (PostcallAdmobListener.this.mPreloader == null || PostcallAdmobListener.this.mContext == null) {
            } else {
                if (PostcallAdMobPreloader.isInstanciated() && PostcallAdMobPreloader.getInstance().getState().equals(PostcallAdvertPreloader.AdvertPreloadState.ERROR)) {
                    PostcallAdMobPreloader.getInstance().reset();
                }
                PostcallAdvertProxy.getInstance().preloadBackup(PostcallAdmobListener.this.mContext);
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            if (PostcallAdMobPreloader.isInstanciated()) {
                PostcallAdMobPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdmobListener.this.TAG, "onAdImpression");
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallAdmobListener.this.ADMOB);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD IMPRESSION LOGGED");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            super.onAdLeftApplication();
            Logger.debug(PostcallAdmobListener.this.TAG, "onAdLeftApplication");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD LEFT APPLICATION");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            if (PostcallAdMobPreloader.isInstanciated()) {
                PostcallAdMobPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdmobListener.this.TAG, "onAdLoaded");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD LOADED");
            if (PostcallAdmobListener.this.mPreloader != null) {
                PostcallAdmobListener.this.mPreloader.setState(PostcallAdvertPreloader.AdvertPreloadState.LOADED);
            } else if (PostcallAdmobListener.this.mProvider == null || !PostcallAdMobPreloader.isInstanciated() || !PostcallAdMobPreloader.getInstance().getState().equals(PostcallAdvertPreloader.AdvertPreloadState.LOADING) || PostcallAdmobListener.this.mContext == null) {
            } else {
                PostcallAdmobListener.this.mProvider.addAdMobView(PostcallAdmobListener.this.mContext);
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            Logger.debug(PostcallAdmobListener.this.TAG, "onAdOpened");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallAdmobListener.this.ADMOB);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdmobListener.this.ADMOB + " AD OPENED");
        }
    };
    private Context mContext;
    private PostcallAdMobPreloader mPreloader;
    private PostcallAdMobProvider mProvider;

    private PostcallAdmobListener() {
    }

    public static PostcallAdmobListener getInstance() {
        PostcallAdmobListener postcallAdmobListener;
        synchronized (PostcallAdmobListener.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallAdmobListener();
                }
                postcallAdmobListener = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallAdmobListener;
    }

    public AdListener getAdListener() {
        return this.adListener;
    }

    public void initListener(Context context, PostcallAdMobPreloader postcallAdMobPreloader, PostcallAdMobProvider postcallAdMobProvider) {
        this.mContext = context;
        this.mPreloader = postcallAdMobPreloader;
        this.mProvider = postcallAdMobProvider;
        this.TAG = postcallAdMobPreloader != null ? PostcallAdMobPreloader.TAG : postcallAdMobProvider != null ? PostcallAdMobProvider.TAG : PostcallAdmobListener.class.getSimpleName();
        this.ADMOB = postcallAdMobPreloader != null ? postcallAdMobPreloader.ADMOB : postcallAdMobProvider != null ? postcallAdMobProvider.ADMOB : AdvertNetworkName.ADMOB.toString().toLowerCase(Locale.ENGLISH);
    }
}
