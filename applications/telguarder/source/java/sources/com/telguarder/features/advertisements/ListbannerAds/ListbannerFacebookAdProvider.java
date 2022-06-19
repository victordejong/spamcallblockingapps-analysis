package com.telguarder.features.advertisements.ListbannerAds;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.ArrayList;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider.class */
public class ListbannerFacebookAdProvider extends ListbannerAdvertProvider {
    public static final String FACEBOOK = AdvertNetworkName.FACEBOOK.toString().toLowerCase(Locale.ENGLISH) + "_listbanner";
    private FrameLayout mAdChoiceContainer;
    private AdOptionsView mFbNativeAdChoicesView;
    private NativeAdLayout mFbNativeAdView;
    private NativeBannerAd mFbNativeBannerAd;
    private View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.advertisements.ListbannerAds._$$Lambda$ListbannerFacebookAdProvider$02sfsh4LkuPmp0QaPRwps4xQFz0
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return ListbannerFacebookAdProvider.this.lambda$new$1$ListbannerFacebookAdProvider(view, motionEvent);
        }
    };
    private NativeAdListener adListener = new NativeAdListener() { // from class: com.telguarder.features.advertisements.ListbannerAds.ListbannerFacebookAdProvider.1
        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC0845Ad abstractC0845Ad) {
            ListbannerFacebookAdProvider.this.adClicked = true;
            Logger.debug("FB listbanner - Ad clicked");
            AnalyticsManager.getInstance().sendAdvertClickedAction(ListbannerFacebookAdProvider.FACEBOOK);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC0845Ad abstractC0845Ad) {
            if (ListbannerFacebookAdProvider.this.mFbNativeBannerAd == null || ListbannerFacebookAdProvider.this.mFbNativeBannerAd != abstractC0845Ad) {
                return;
            }
            ListbannerFacebookAdProvider.this.adClicked = false;
            ListbannerFacebookAdProvider.this.success();
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC0845Ad abstractC0845Ad, AdError adError) {
            Logger.error("FB listBanner - Request banner error: " + adError.getErrorMessage());
            ListbannerFacebookAdProvider.this.adShowBeginTimestamp = 0L;
            if (adError != null) {
                int errorCode = adError.getErrorCode();
                if (errorCode == 2000) {
                    AnalyticsManager.getInstance().sendAdvertServerErrorAction(ListbannerFacebookAdProvider.FACEBOOK);
                } else if (errorCode != 2001) {
                    switch (errorCode) {
                        case 1000:
                            AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(ListbannerFacebookAdProvider.FACEBOOK);
                            break;
                        case 1001:
                            AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(ListbannerFacebookAdProvider.FACEBOOK);
                            break;
                        case 1002:
                            AnalyticsManager.getInstance().sendAdvertTooFrequentErrorAction(ListbannerFacebookAdProvider.FACEBOOK);
                            break;
                        default:
                            AnalyticsManager.getInstance().sendAdvertErrorAction(ListbannerFacebookAdProvider.FACEBOOK);
                            break;
                    }
                } else {
                    AnalyticsManager.getInstance().sendAdvertInternalErrorAction(ListbannerFacebookAdProvider.FACEBOOK);
                }
            }
            ListbannerFacebookAdProvider.this.error();
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC0845Ad abstractC0845Ad) {
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(ListbannerFacebookAdProvider.FACEBOOK);
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC0845Ad abstractC0845Ad) {
        }
    };

    public ListbannerFacebookAdProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (this.mFbNativeBannerAd != null) {
            onHideViews();
        }
        if (advert == null || advert.network == null || TextUtils.isEmpty(advert.network.placementId)) {
            return;
        }
        if (this.mFbNativeBannerAd != null) {
            ListbannerFacebookAdListener.getInstance().setInternalAdListener(null);
            this.mFbNativeBannerAd.unregisterView();
            this.mFbNativeBannerAd.destroy();
            this.mFbNativeBannerAd = null;
        }
        this.mFbNativeBannerAd = new NativeBannerAd(this.mHostActivity, advert.network.placementId);
        ListbannerFacebookAdListener.getInstance().setInternalAdListener(this.adListener);
        this.mFbNativeBannerAd.setOnTouchListener(this.onTouchListener);
    }

    public void error() {
        this.adLoaded = false;
        this.adShowBeginTimestamp = 0L;
        if (this.mAdContainer != null) {
            this.mAdContainer.setVisibility(8);
        }
        AnalyticsManager.getInstance().sendAdvertErrorAction(FACEBOOK);
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private void loadAd() {
        AnalyticsManager.getInstance().sendAdvertRequestedAction(FACEBOOK);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.advertisements.ListbannerAds._$$Lambda$ListbannerFacebookAdProvider$bM_cHPMBASS3ImrDXHOt3oyS5Qs
            @Override // java.lang.Runnable
            public final void run() {
                ListbannerFacebookAdProvider.this.lambda$loadAd$0$ListbannerFacebookAdProvider();
            }
        });
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(FACEBOOK, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    public void success() {
        this.adLoaded = true;
        if (this.mAdContainer != null) {
            this.mAdContainer.setVisibility(0);
        }
        AnalyticsManager.getInstance().sendAdvertLoadedAction(FACEBOOK);
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mFbNativeAdView);
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
        if (this.mFbNativeBannerAd == null) {
            this.mAdContainer.setVisibility(8);
            return;
        }
        if (this.mAdContainer.getChildCount() > 0) {
            this.mAdContainer.removeAllViews();
        }
        NativeAdLayout nativeAdLayout = this.mFbNativeAdView;
        if (nativeAdLayout != null && nativeAdLayout.getParent() != null) {
            ((ViewGroup) this.mFbNativeAdView.getParent()).removeView(this.mFbNativeAdView);
        }
        int i = 0;
        if (this.adLoaded) {
            this.mAdContainer.setVisibility(0);
        }
        this.mFbNativeAdView = (NativeAdLayout) ((LayoutInflater) this.mHostActivity.getSystemService("layout_inflater")).inflate(C2083R.layout.facebook_native_ad_listbanner, (ViewGroup) null);
        this.mAdContainer.addView(this.mFbNativeAdView);
        this.mAdChoiceContainer = (FrameLayout) this.mFbNativeAdView.findViewById(C2083R.C2086id.ad_choices_container);
        try {
            this.mFbNativeBannerAd.unregisterView();
            if (this.mFbNativeAdChoicesView == null) {
                this.mFbNativeAdChoicesView = new AdOptionsView(this.mHostActivity, this.mFbNativeBannerAd, this.mFbNativeAdView, AdOptionsView.Orientation.HORIZONTAL, 20);
                this.mAdChoiceContainer.removeAllViews();
                this.mAdChoiceContainer.addView(this.mFbNativeAdChoicesView);
            }
            TextView textView = (TextView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_title);
            TextView textView2 = (TextView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_social_context);
            TextView textView3 = (TextView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_sponsored_label);
            MediaView mediaView = (MediaView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_icon_view);
            Button button = (Button) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_call_to_action);
            button.setText(this.mFbNativeBannerAd.getAdCallToAction());
            if (!this.mFbNativeBannerAd.hasCallToAction()) {
                i = 4;
            }
            button.setVisibility(i);
            textView.setText(this.mFbNativeBannerAd.getAdvertiserName());
            textView2.setText(this.mFbNativeBannerAd.getAdSocialContext());
            ArrayList arrayList = new ArrayList();
            arrayList.add(button);
            this.mFbNativeBannerAd.registerViewForInteraction(this.mFbNativeAdView, mediaView, arrayList);
            textView3.setText(C2083R.string.sponsored);
            this.adShowBeginTimestamp = System.currentTimeMillis();
        } catch (Exception e) {
            error();
        }
    }

    public /* synthetic */ void lambda$loadAd$0$ListbannerFacebookAdProvider() {
        try {
            NativeBannerAd nativeBannerAd = this.mFbNativeBannerAd;
            nativeBannerAd.loadAd(nativeBannerAd.buildLoadAdConfig().withAdListener(ListbannerFacebookAdListener.getInstance().getAdListener(this.adListener)).build());
        } catch (Exception e) {
            error();
        }
    }

    public /* synthetic */ boolean lambda$new$1$ListbannerFacebookAdProvider(View view, MotionEvent motionEvent) {
        this.adClicked = true;
        return false;
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onDestroy() {
        if (this.adLoadStarted) {
            if (!this.adLoaded) {
                AnalyticsManager.getInstance().sendAdvertMissedAction(FACEBOOK);
            } else {
                logVisibility();
            }
        }
        super.onDestroy();
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onHideViews() {
        logVisibility();
        if (this.mFbNativeBannerAd != null) {
            NativeAdLayout nativeAdLayout = this.mFbNativeAdView;
            if (nativeAdLayout != null && nativeAdLayout.getParent() != null) {
                ((ViewGroup) this.mFbNativeAdView.getParent()).removeView(this.mFbNativeAdView);
            }
            ListbannerFacebookAdListener.getInstance().setInternalAdListener(null);
            this.mFbNativeBannerAd.unregisterView();
            this.mFbNativeBannerAd.destroy();
            this.mFbNativeBannerAd = null;
        }
        this.adLoaded = false;
        super.onHideViews();
    }

    @Override // com.telguarder.features.advertisements.ListbannerAds.ListbannerAdvertProvider
    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        super.onLoadAd(context, runnable, runnable2);
        this.adShowBeginTimestamp = 0L;
        loadAd();
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
