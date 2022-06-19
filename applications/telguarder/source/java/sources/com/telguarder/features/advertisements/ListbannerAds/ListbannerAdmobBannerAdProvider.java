package com.telguarder.features.advertisements.ListbannerAds;

import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider.class */
public class ListbannerAdmobBannerAdProvider extends ListbannerAdvertProvider {
    public static final String ADMOB_BANNER = AdvertNetworkName.ADMOB_BANNER.toString().toLowerCase(Locale.ENGLISH) + "_listbanner";
    private AdView mAdView;
    private View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.advertisements.ListbannerAds._$$Lambda$ListbannerAdmobBannerAdProvider$oSCMmLkgG6UhwhzI9QS8myNJ3ds
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return ListbannerAdmobBannerAdProvider.this.lambda$new$1$ListbannerAdmobBannerAdProvider(view, motionEvent);
        }
    };
    private AdListener adListener = new AdListener() { // from class: com.telguarder.features.advertisements.ListbannerAds.ListbannerAdmobBannerAdProvider.1
        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzvc
        public void onAdClicked() {
            super.onAdClicked();
            Logger.debug(ListbannerAdmobBannerAdProvider.ADMOB_BANNER, "onAdClicked");
            AnalyticsManager.getInstance().sendAdvertClickedAction(ListbannerAdmobBannerAdProvider.ADMOB_BANNER);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            ListbannerAdmobBannerAdProvider.this.closed = true;
            Logger.debug(ListbannerAdmobBannerAdProvider.ADMOB_BANNER, "onAdClosed");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            super.onAdFailedToLoad(i);
            Logger.debug(ListbannerAdmobBannerAdProvider.ADMOB_BANNER, "onAdFailedToLoad");
            ListbannerAdmobBannerAdProvider.this.adShowBeginTimestamp = 0L;
            if (i == 0) {
                AnalyticsManager.getInstance().sendAdvertInternalErrorAction(ListbannerAdmobBannerAdProvider.ADMOB_BANNER);
            } else if (i == 1) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(ListbannerAdmobBannerAdProvider.ADMOB_BANNER);
            } else if (i == 2) {
                AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(ListbannerAdmobBannerAdProvider.ADMOB_BANNER);
            } else if (i != 3) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(ListbannerAdmobBannerAdProvider.ADMOB_BANNER);
            } else {
                AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(ListbannerAdmobBannerAdProvider.ADMOB_BANNER);
            }
            ListbannerAdmobBannerAdProvider.this.error();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            Logger.debug(ListbannerAdmobBannerAdProvider.ADMOB_BANNER, "onAdImpression");
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(ListbannerAdmobBannerAdProvider.ADMOB_BANNER);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            super.onAdLeftApplication();
            Logger.debug(ListbannerAdmobBannerAdProvider.ADMOB_BANNER, "onAdLeftApplication");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            Logger.debug(ListbannerAdmobBannerAdProvider.ADMOB_BANNER, "onAdLoaded");
            ListbannerAdmobBannerAdProvider.this.adClicked = false;
            ListbannerAdmobBannerAdProvider.this.success();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            Logger.debug(ListbannerAdmobBannerAdProvider.ADMOB_BANNER, "onAdOpened");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(ListbannerAdmobBannerAdProvider.ADMOB_BANNER);
        }
    };

    public ListbannerAdmobBannerAdProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (this.mAdView != null) {
            onHideViews();
        }
        if (advert == null || advert.network == null || TextUtils.isEmpty(advert.network.placementId)) {
            return;
        }
        try {
            AdView adView = new AdView(appCompatActivity);
            this.mAdView = adView;
            adView.setAdSize(AdSize.BANNER);
            this.mAdView.setAdUnitId(advert.network.placementId);
            this.mAdView.setAdListener(this.adListener);
            this.mAdView.setOnTouchListener(this.onTouchListener);
        } catch (Exception e) {
            AnalyticsManager.getInstance().sendAdvertErrorAction(ADMOB_BANNER);
        }
    }

    public void error() {
        this.adLoaded = false;
        this.adShowBeginTimestamp = 0L;
        if (this.mAdContainer != null) {
            this.mAdContainer.setVisibility(8);
        }
        AnalyticsManager.getInstance().sendAdvertErrorAction(ADMOB_BANNER);
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private void loadAd(Context context) {
        AnalyticsManager.getInstance().sendAdvertRequestedAction(ADMOB_BANNER);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.advertisements.ListbannerAds._$$Lambda$ListbannerAdmobBannerAdProvider$O50FeusC1g4r7IypiSUXEo_nXl0
            @Override // java.lang.Runnable
            public final void run() {
                ListbannerAdmobBannerAdProvider.this.lambda$loadAd$0$ListbannerAdmobBannerAdProvider();
            }
        });
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(ADMOB_BANNER, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    public void success() {
        this.adLoaded = true;
        if (this.mAdContainer != null) {
            this.mAdContainer.setVisibility(0);
        }
        AnalyticsManager.getInstance().sendAdvertLoadedAction(ADMOB_BANNER);
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mAdView.getRootView());
        if (this.mOnSuccess != null) {
            this.mOnSuccess.run();
        }
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void bindAd(ViewGroup viewGroup) {
        if (viewGroup == null || this.mAdContainer == viewGroup) {
            return;
        }
        this.mAdContainer = viewGroup;
        if (this.mAdView == null) {
            this.mAdContainer.setVisibility(8);
            return;
        }
        if (this.mAdContainer.getChildCount() > 0) {
            this.mAdContainer.removeAllViews();
        }
        if (this.mAdView.getParent() != null) {
            ((ViewGroup) this.mAdView.getParent()).removeView(this.mAdView);
        }
        if (this.adLoaded) {
            this.mAdContainer.setVisibility(0);
        }
        this.mAdContainer.addView(this.mAdView);
        this.adShowBeginTimestamp = System.currentTimeMillis();
    }

    public /* synthetic */ void lambda$loadAd$0$ListbannerAdmobBannerAdProvider() {
        try {
            Location currentCoarseLocation = LocationHelper.getInstance().getCurrentCoarseLocation();
            if (currentCoarseLocation != null) {
                this.mAdView.loadAd(new AdRequest.Builder().setLocation(currentCoarseLocation).build());
            } else {
                this.mAdView.loadAd(new AdRequest.Builder().build());
            }
        } catch (Exception e) {
            AnalyticsManager.getInstance().sendAdvertErrorAction(ADMOB_BANNER);
            error();
        }
    }

    public /* synthetic */ boolean lambda$new$1$ListbannerAdmobBannerAdProvider(View view, MotionEvent motionEvent) {
        this.adClicked = true;
        return false;
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onDestroy() {
        if (this.adLoadStarted) {
            if (!this.adLoaded) {
                AnalyticsManager.getInstance().sendAdvertMissedAction(ADMOB_BANNER);
            } else {
                logVisibility();
            }
        }
        super.onDestroy();
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onHideViews() {
        logVisibility();
        AdView adView = this.mAdView;
        if (adView != null) {
            if (adView.getParent() != null) {
                ((ViewGroup) this.mAdView.getParent()).removeView(this.mAdView);
            }
            this.mAdView.setAdListener(null);
            this.mAdView.destroy();
            this.mAdView = null;
        }
        this.adLoaded = false;
        super.onHideViews();
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        super.onLoadAd(context, runnable, runnable2);
        this.adShowBeginTimestamp = 0L;
        loadAd(context);
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onPause() {
        super.onPause();
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onResume() {
        super.onResume();
        this.resumed = false;
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onStop() {
        if (!this.resumed) {
            this.resumed = true;
            logVisibility();
            super.onStop();
        }
    }
}
