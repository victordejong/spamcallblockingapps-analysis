package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.location.Location;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.pubmatic.sdk.omsdk.POBOMSDKLogConstants;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.features.postCallStatistics.CSAdRowViewHolder;
import com.telguarder.features.postCallStatistics.CSViewAdapter;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider.class */
public class PostcallAdMobProvider extends PostcallAdvertProvider {
    public static final String TAG = "PostcallAdMobProvider";
    private AdLoader mAdLoader;
    private UnifiedNativeAdView mAdView;
    private Advert mAdvert;
    private UnifiedNativeAd mUnifiedNativeAd;
    public String ADMOB = AdvertNetworkName.ADMOB.toString().toLowerCase(Locale.ENGLISH);
    private boolean isAdviewPopulated = false;
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobProvider$ielTeL_vHYN6_RTEEP6h5WNkdf8
        @Override // java.lang.Runnable
        public final void run() {
            PostcallAdMobProvider.this.lambda$new$0$PostcallAdMobProvider();
        }
    };

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallAdMobProvider$3 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$3.class */
    public static /* synthetic */ class C21073 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState */
        static final /* synthetic */ int[] f1280xca06b7a7;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PostcallAdvertPreloader.AdvertPreloadState.values().length];
            f1280xca06b7a7 = iArr;
            try {
                iArr[PostcallAdvertPreloader.AdvertPreloadState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1280xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1280xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1280xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.NO_AD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public PostcallAdMobProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (advert == null || advert.network == null) {
            return;
        }
        this.mAdvert = advert;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0152 -> B:8:0x005f). Please submit an issue!!! */
    private void createAndLoadAd(final Context context) {
        if (this.mAdLoader != null) {
            onHideViews();
        }
        try {
            this.ADMOB = AdvertNetworkName.ADMOB.toString().toLowerCase(Locale.ENGLISH);
            try {
                AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB + " CREATE AND LOAD \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
            } catch (Exception e) {
            }
            AnalyticsManager.getInstance().sendAdvertRequestedAction(this.ADMOB);
            addAdMobView(context);
            AdLoader.Builder builder = new AdLoader.Builder(context, this.mAdvert.network.placementId);
            builder.forUnifiedNativeAd(new UnifiedNativeAd.OnUnifiedNativeAdLoadedListener() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobProvider$whr4oAxPUrboTF8Z1FUzvynzwtM
                @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
                public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
                    PostcallAdMobProvider.this.lambda$createAndLoadAd$1$PostcallAdMobProvider(context, unifiedNativeAd);
                }
            });
            builder.withNativeAdOptions(new NativeAdOptions.Builder().setVideoOptions(new VideoOptions.Builder().setStartMuted(true).build()).build());
            PostcallAdmobListener.getInstance().initListener(context, null, this);
            this.mAdLoader = builder.withAdListener(PostcallAdmobListener.getInstance().getAdListener()).build();
            Location currentCoarseLocation = LocationHelper.getInstance().getCurrentCoarseLocation();
            if (currentCoarseLocation != null) {
                AdLoader adLoader = this.mAdLoader;
                if (adLoader == null) {
                    return;
                }
                adLoader.loadAd(new AdRequest.Builder().setLocation(currentCoarseLocation).build());
                return;
            }
            AdLoader adLoader2 = this.mAdLoader;
            if (adLoader2 == null) {
                return;
            }
            adLoader2.loadAd(new AdRequest.Builder().build());
        } catch (Exception e2) {
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB);
            AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB + " ERROR: \n        - " + e2.getMessage());
            error();
        }
    }

    private void destroyAdView() {
        UnifiedNativeAd unifiedNativeAd = this.mUnifiedNativeAd;
        try {
            if (unifiedNativeAd == null) {
                return;
            }
            try {
                unifiedNativeAd.destroy();
            } catch (Exception e) {
                String str = TAG;
                Logger.error(str, "onHideViews error:" + e.toString());
            }
        } finally {
            this.mUnifiedNativeAd = null;
        }
    }

    private void handleErrorState(String str) {
        AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.ADMOB, str, this.mAdvert);
        error();
    }

    private void handleLoadinState(Context context) {
        PostcallAdMobPreloader.getInstance().mTimeoutRunnable = this.mTimeoutRunnable;
        this.mAdLoader = PostcallAdMobPreloader.getInstance().mAdLoader;
        this.mUnifiedNativeAd = PostcallAdMobPreloader.getInstance().mUnifiedNativeAd;
        PostcallAdmobListener.getInstance().initListener(context, null, this);
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(this.ADMOB, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    private void populateAdView(Context context) {
        if (this.mHolder == null) {
            return;
        }
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        if (this.mUnifiedNativeAd == null || layoutInflater == null) {
            this.isAdviewPopulated = false;
            return;
        }
        UnifiedNativeAdView unifiedNativeAdView = (UnifiedNativeAdView) layoutInflater.inflate(C2083R.layout.admob_native_ad_unified, (ViewGroup) null);
        this.mAdView = unifiedNativeAdView;
        populateAppInstallAdView(this.mUnifiedNativeAd, unifiedNativeAdView);
        this.mHolder.removeAllViews();
        this.mHolder.addView(this.mAdView, new LinearLayout.LayoutParams(-1, -2));
        this.isAdviewPopulated = true;
    }

    private void populateAppInstallAdView(UnifiedNativeAd unifiedNativeAd, UnifiedNativeAdView unifiedNativeAdView) {
        MediaView mediaView = (MediaView) unifiedNativeAdView.findViewById(C2083R.C2086id.ad_media);
        unifiedNativeAdView.setMediaView(mediaView);
        mediaView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallAdMobProvider.1
            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewAdded(View view, View view2) {
                if (view2 instanceof ImageView) {
                    ((ImageView) view2).setAdjustViewBounds(true);
                }
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewRemoved(View view, View view2) {
            }
        });
        unifiedNativeAdView.setHeadlineView(unifiedNativeAdView.findViewById(C2083R.C2086id.ad_headline));
        unifiedNativeAdView.setBodyView(unifiedNativeAdView.findViewById(C2083R.C2086id.ad_body));
        unifiedNativeAdView.setCallToActionView(unifiedNativeAdView.findViewById(C2083R.C2086id.ad_call_to_action));
        unifiedNativeAdView.setIconView(unifiedNativeAdView.findViewById(C2083R.C2086id.ad_app_icon));
        unifiedNativeAdView.setPriceView(unifiedNativeAdView.findViewById(C2083R.C2086id.ad_price));
        unifiedNativeAdView.setStarRatingView(unifiedNativeAdView.findViewById(C2083R.C2086id.ad_stars));
        unifiedNativeAdView.setStoreView(unifiedNativeAdView.findViewById(C2083R.C2086id.ad_store));
        unifiedNativeAdView.setAdvertiserView(unifiedNativeAdView.findViewById(C2083R.C2086id.ad_advertiser));
        ((TextView) unifiedNativeAdView.getHeadlineView()).setText(unifiedNativeAd.getHeadline());
        if (unifiedNativeAd.getBody() == null) {
            unifiedNativeAdView.getBodyView().setVisibility(4);
        } else {
            unifiedNativeAdView.getBodyView().setVisibility(0);
            ((TextView) unifiedNativeAdView.getBodyView()).setText(unifiedNativeAd.getBody());
        }
        if (unifiedNativeAd.getCallToAction() == null) {
            unifiedNativeAdView.getCallToActionView().setVisibility(4);
        } else {
            unifiedNativeAdView.getCallToActionView().setVisibility(0);
            ((Button) unifiedNativeAdView.getCallToActionView()).setText(unifiedNativeAd.getCallToAction());
        }
        if (unifiedNativeAd.getIcon() == null) {
            unifiedNativeAdView.getIconView().setVisibility(8);
        } else {
            ((ImageView) unifiedNativeAdView.getIconView()).setImageDrawable(unifiedNativeAd.getIcon().getDrawable());
            unifiedNativeAdView.getIconView().setVisibility(0);
        }
        if (unifiedNativeAd.getPrice() == null) {
            unifiedNativeAdView.getPriceView().setVisibility(4);
        } else {
            unifiedNativeAdView.getPriceView().setVisibility(0);
            ((TextView) unifiedNativeAdView.getPriceView()).setText(unifiedNativeAd.getPrice());
        }
        if (unifiedNativeAd.getStore() == null) {
            unifiedNativeAdView.getStoreView().setVisibility(4);
        } else {
            unifiedNativeAdView.getStoreView().setVisibility(0);
            ((TextView) unifiedNativeAdView.getStoreView()).setText(unifiedNativeAd.getStore());
        }
        if (unifiedNativeAd.getStarRating() == null) {
            unifiedNativeAdView.getStarRatingView().setVisibility(4);
        } else {
            ((RatingBar) unifiedNativeAdView.getStarRatingView()).setRating(unifiedNativeAd.getStarRating().floatValue());
            unifiedNativeAdView.getStarRatingView().setVisibility(0);
        }
        if (unifiedNativeAd.getAdvertiser() == null) {
            unifiedNativeAdView.getAdvertiserView().setVisibility(4);
        } else {
            ((TextView) unifiedNativeAdView.getAdvertiserView()).setText(unifiedNativeAd.getAdvertiser());
            unifiedNativeAdView.getAdvertiserView().setVisibility(0);
        }
        unifiedNativeAdView.setNativeAd(unifiedNativeAd);
        VideoController videoController = unifiedNativeAd.getVideoController();
        if (!videoController.hasVideoContent()) {
            Logger.debug("Video status: Ad does not contain a video asset.");
            return;
        }
        Logger.debug(String.format(Locale.getDefault(), "Video status: Ad contains a %.2f:1 video asset.", Float.valueOf(videoController.getAspectRatio())));
        videoController.setVideoLifecycleCallbacks(new VideoController.VideoLifecycleCallbacks() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallAdMobProvider.2
            @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
            public void onVideoEnd() {
                Logger.debug("Video status: Video playback has ended.");
                super.onVideoEnd();
            }
        });
    }

    private void requestAdMobBanner(Context context) {
        AdvertManager.addAdNetworkFlowDebugInfo("\n");
        this.isAdviewPopulated = false;
        if (!PostcallAdvertProxy.getInstance().mLoadStarted || !PostcallAdMobPreloader.isInstanciated() || PostcallAdMobPreloader.getInstance().getState() == null) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.ADMOB, null, this.mAdvert);
            createAndLoadAd(context);
            return;
        }
        int i = C21073.f1280xca06b7a7[PostcallAdMobPreloader.getInstance().getState().ordinal()];
        if (i == 1) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.ADMOB, "LOADING", this.mAdvert);
            handleLoadinState(context);
        } else if (i == 2) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.ADMOB, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT, this.mAdvert);
            this.mAdLoader = PostcallAdMobPreloader.getInstance().mAdLoader;
            this.mUnifiedNativeAd = PostcallAdMobPreloader.getInstance().mUnifiedNativeAd;
            PostcallAdmobListener.getInstance().initListener(context, null, this);
            addAdMobView(context);
        } else if (i == 3) {
            handleErrorState("ERROR");
        } else if (i != 4) {
        } else {
            handleErrorState("NO_AD");
        }
    }

    public void addAdMobView(final Context context) {
        if (CSViewAdapter.isInstantiated()) {
            CSViewAdapter.getInstance().setAdHolderCallbackInterface(new CSAdRowViewHolder.AdHolderCallbackInterface() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobProvider$c7cWWuW148ffZUkGdzS4vQtKQGg
                @Override // com.telguarder.features.postCallStatistics.CSAdRowViewHolder.AdHolderCallbackInterface
                public final void onDataBinding(ViewGroup viewGroup) {
                    PostcallAdMobProvider.this.lambda$addAdMobView$2$PostcallAdMobProvider(context, viewGroup);
                }
            });
        }
    }

    public void error() {
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        if (PostcallAdMobPreloader.isInstanciated()) {
            PostcallAdMobPreloader.getInstance().onDestroy();
        }
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    public /* synthetic */ void lambda$addAdMobView$2$PostcallAdMobProvider(Context context, ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (PostcallAdvertProxy.getInstance().mLoadStarted) {
                    if (this.adPresented && viewGroup == this.mHolder) {
                        return;
                    }
                    this.mHolder = viewGroup;
                    populateAdView(context);
                    this.mHolder.setVisibility(0);
                    success();
                    return;
                }
            } catch (Exception e) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB);
                error();
                return;
            }
        }
        error();
    }

    public /* synthetic */ void lambda$createAndLoadAd$1$PostcallAdMobProvider(Context context, UnifiedNativeAd unifiedNativeAd) {
        this.mUnifiedNativeAd = unifiedNativeAd;
        if (!this.isAdviewPopulated) {
            populateAdView(context);
        }
    }

    public /* synthetic */ void lambda$new$0$PostcallAdMobProvider() {
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB);
        AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB + " ERROR: \n        - Timeout, stuck loading state..");
        error();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onDestroy() {
        if (!this.adPresented) {
            AnalyticsManager.getInstance().sendAdvertMissedAction(this.ADMOB);
        }
        if (PostcallAdMobPreloader.isInstanciated()) {
            PostcallAdMobPreloader.getInstance().onDestroy();
        }
        destroyAdView();
        super.onDestroy();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onHideViews() {
        logVisibility();
        destroyAdView();
        if (PostcallAdMobPreloader.isInstanciated()) {
            PostcallAdMobPreloader.getInstance().reset();
        }
        this.mAdLoader = null;
        this.adPresented = false;
        this.holderPreparedAlready = false;
        super.onHideViews();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        super.onLoadAd(context, runnable, runnable2);
        this.adShowBeginTimestamp = 0L;
        requestAdMobBanner(context);
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onPause() {
        super.onPause();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onResume() {
        super.onResume();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onStop() {
        logVisibility();
        super.onStop();
    }

    public void success() {
        String str;
        String str2;
        this.mHolder.setVisibility(0);
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mAdView);
        StringBuilder sb = new StringBuilder();
        sb.append(this.ADMOB);
        sb.append(" AD SHOW SUCCESS\n        - visible area: ");
        if (this.mVisibilityPrcnt != -1) {
            str = this.mVisibilityPrcnt + "%";
        } else {
            str = "error";
        }
        sb.append(str);
        if (this.mUnifiedNativeAd != null) {
            str2 = "\n        - " + this.mUnifiedNativeAd.getHeadline();
        } else {
            str2 = "";
        }
        sb.append(str2);
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        this.adShowBeginTimestamp = System.currentTimeMillis();
        this.adPresented = true;
        AnalyticsManager.getInstance().sendAdvertLoadedAction(this.ADMOB);
        if (PostcallAdMobPreloader.isInstanciated()) {
            PostcallAdMobPreloader.getInstance().cleanInstance();
        }
        if (this.mOnSuccess != null) {
            this.mOnSuccess.run();
        }
    }
}
