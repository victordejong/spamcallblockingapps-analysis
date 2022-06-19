package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.pubmatic.sdk.omsdk.POBOMSDKLogConstants;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertContainer;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.features.postCallStatistics.CSAdRowViewHolder;
import com.telguarder.features.postCallStatistics.CSViewAdapter;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.ArrayList;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider.class */
public class PostcallFacebookAdProvider extends PostcallAdvertProvider {
    public static final String FACEBOOK = AdvertNetworkName.FACEBOOK.toString().toLowerCase(Locale.ENGLISH);
    private LinearLayout mAdChoiceContainer;
    private Advert mAdvert;
    private AdOptionsView mFbAdOptionsView;
    private NativeAd mFbNativeAd;
    private MediaView mFbNativeAdMedia;
    private NativeAdLayout mFbNativeAdView;
    private boolean visibilityIssueReload = false;
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookAdProvider$E_N5MzxP308lRTlV4YAgce4v6_A
        @Override // java.lang.Runnable
        public final void run() {
            PostcallFacebookAdProvider.this.lambda$new$0$PostcallFacebookAdProvider();
        }
    };
    private NativeAdListener adListener = new NativeAdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookAdProvider.1
        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "onAdClicked");
            PostcallFacebookAdProvider.this.adClicked = true;
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD CLICKED");
            AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallFacebookAdProvider.FACEBOOK);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC0845Ad abstractC0845Ad) {
            String str;
            Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "onAdLoaded");
            if (PostcallFacebookAdPreloader.isInstanciated()) {
                PostcallFacebookAdPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            if (PostcallFacebookAdProvider.this.mFbNativeAd == null) {
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " ADVIEW LOST");
                PostcallFacebookAdProvider.this.error();
                return;
            }
            PostcallFacebookAdProvider.this.adClicked = false;
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallFacebookAdProvider.FACEBOOK);
            sb.append(" AD LOADED\n        - ");
            if (PostcallFacebookAdProvider.this.mFbNativeAd != null) {
                str = "\n        - " + PostcallFacebookAdProvider.this.mFbNativeAd.getAdvertiserName();
            } else {
                str = "";
            }
            sb.append(str);
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
            PostcallFacebookAdProvider.this.addFbView(false);
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC0845Ad abstractC0845Ad, AdError adError) {
            String str = PostcallFacebookAdProvider.FACEBOOK;
            Logger.debug(str, "onError: " + adError.getErrorMessage());
            if (PostcallFacebookAdPreloader.isInstanciated()) {
                PostcallFacebookAdPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            PostcallFacebookAdProvider.this.adShowBeginTimestamp = 0L;
            if (adError != null) {
                int errorCode = adError.getErrorCode();
                if (errorCode == 2000) {
                    AnalyticsManager.getInstance().sendAdvertServerErrorAction(PostcallFacebookAdProvider.FACEBOOK);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD FAILED TO LOAD\n        - SERVER_ERROR_CODE");
                } else if (errorCode != 2001) {
                    switch (errorCode) {
                        case 1000:
                            AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallFacebookAdProvider.FACEBOOK);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD FAILED TO LOAD\n        - NETWORK_ERROR_CODE");
                            break;
                        case 1001:
                            AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallFacebookAdProvider.FACEBOOK);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD FAILED TO LOAD\n        - NO_FILL_ERROR_CODE");
                            break;
                        case 1002:
                            AnalyticsManager.getInstance().sendAdvertTooFrequentErrorAction(PostcallFacebookAdProvider.FACEBOOK);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD FAILED TO LOAD\n        - LOAD_TOO_FREQUENTLY_ERROR_CODE");
                            break;
                        default:
                            AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallFacebookAdProvider.FACEBOOK);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD FAILED TO LOAD");
                            break;
                    }
                } else {
                    AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallFacebookAdProvider.FACEBOOK);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD FAILED TO LOAD\n        - INTERNAL_ERROR_CODE");
                }
            }
            PostcallFacebookAdProvider.this.error();
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "onLoggingImpression");
            if (PostcallFacebookAdPreloader.isInstanciated()) {
                PostcallFacebookAdPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallFacebookAdProvider.FACEBOOK);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD IMPRESSION LOGGED");
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "onMediaDownloaded");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdProvider.FACEBOOK + " AD MEDIA DOWNLOADED");
        }
    };
    private View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookAdProvider$HnsIPBlJO4D4PSwoIHu2hWQQ9W4
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return PostcallFacebookAdProvider.this.lambda$new$3$PostcallFacebookAdProvider(view, motionEvent);
        }
    };

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookAdProvider$3 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider$3.class */
    public static /* synthetic */ class C21153 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState */
        static final /* synthetic */ int[] f1282xca06b7a7;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PostcallAdvertPreloader.AdvertPreloadState.values().length];
            f1282xca06b7a7 = iArr;
            try {
                iArr[PostcallAdvertPreloader.AdvertPreloadState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1282xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1282xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1282xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.NO_AD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public PostcallFacebookAdProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (advert == null || advert.network == null) {
            return;
        }
        this.mAdvert = advert;
    }

    private void adExpired() {
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        StringBuilder sb = new StringBuilder();
        String str = FACEBOOK;
        sb.append(str);
        sb.append(" AD EXPIRED");
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        AnalyticsManager.getInstance().sendAdvertExpiredAction(str);
        if (PostcallFacebookAdPreloader.isInstanciated()) {
            PostcallFacebookAdPreloader.getInstance().cleanInstance();
        }
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private void adWasNotVisible() {
        if (this.visibilityIssueReload) {
            AdvertManager.addAdNetworkFlowDebugInfo(FACEBOOK + " AD SHOW ERROR\n        - ad was not visible again");
            error();
            return;
        }
        this.visibilityIssueReload = true;
        AdvertManager.addAdNetworkFlowDebugInfo(FACEBOOK + " AD SHOW ERROR\n        - ad was not visible");
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        addFbView(true);
    }

    private void adWasVisible() {
        String str;
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mFbNativeAdView);
        StringBuilder sb = new StringBuilder();
        String str2 = FACEBOOK;
        sb.append(str2);
        sb.append(" AD SHOW SUCCESS\n        - visible area: ");
        if (this.mVisibilityPrcnt != -1) {
            str = this.mVisibilityPrcnt + "%";
        } else {
            str = "error";
        }
        sb.append(str);
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        this.adShowBeginTimestamp = System.currentTimeMillis();
        this.adPresented = true;
        AnalyticsManager.getInstance().sendAdvertLoadedAction(str2);
        if (PostcallAdManagerBannerPreloader.isInstanciated()) {
            PostcallAdManagerBannerPreloader.getInstance().cleanInstance();
        }
        if (this.mOnSuccess != null) {
            this.mOnSuccess.run();
        }
    }

    public void addFbView(final boolean z) {
        if (CSViewAdapter.isInstantiated()) {
            CSViewAdapter.getInstance().setAdHolderCallbackInterface(new CSAdRowViewHolder.AdHolderCallbackInterface() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookAdProvider$11tuKyOkCJt_HtXDIkzX3yehlio
                @Override // com.telguarder.features.postCallStatistics.CSAdRowViewHolder.AdHolderCallbackInterface
                public final void onDataBinding(ViewGroup viewGroup) {
                    PostcallFacebookAdProvider.this.lambda$addFbView$1$PostcallFacebookAdProvider(z, viewGroup);
                }
            });
        } else {
            error();
        }
    }

    private void addViewToTheHolder() {
        if (this.mHolder == null || !(this.mHolder instanceof AdvertContainer) || this.mFbNativeAd == null) {
            StringBuilder sb = new StringBuilder();
            String str = FACEBOOK;
            sb.append(str);
            sb.append(" ERROR: \n        - holder or view not available");
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
            AnalyticsManager.getInstance().sendAdvertErrorAction(str);
            error();
            return;
        }
        try {
            this.mFbNativeAdView = (NativeAdLayout) ((LayoutInflater) getHostActivity().getSystemService("layout_inflater")).inflate(C2083R.layout.facebook_native_ad_postcall, (ViewGroup) null);
            ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), -1, -2, this.mFbNativeAdView, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookAdProvider$NUVOfH1QQjvw6IEAD6liorzlw40
                @Override // java.lang.Runnable
                public final void run() {
                    PostcallFacebookAdProvider.this.lambda$addViewToTheHolder$2$PostcallFacebookAdProvider();
                }
            });
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            String str2 = FACEBOOK;
            sb2.append(str2);
            sb2.append(" ERROR: \n        - ");
            sb2.append(e.getMessage());
            AdvertManager.addAdNetworkFlowDebugInfo(sb2.toString());
            AnalyticsManager.getInstance().sendAdvertErrorAction(str2);
            error();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x00bf -> B:8:0x005b). Please submit an issue!!! */
    private void createAndLoadAd() {
        if (this.mFbNativeAd != null) {
            onHideViews();
        }
        try {
            AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
            String str = FACEBOOK;
            analyticsManager.sendAdvertRequestedAction(str);
            try {
                AdvertManager.addAdNetworkFlowDebugInfo(str + " CREATE AND LOAD \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
            } catch (Exception e) {
            }
            NativeAd nativeAd = new NativeAd(getHostActivity(), this.mAdvert.network.placementId);
            this.mFbNativeAd = nativeAd;
            nativeAd.setOnTouchListener(this.onTouchListener);
            addFbView(true);
        } catch (Exception e2) {
            AnalyticsManager analyticsManager2 = AnalyticsManager.getInstance();
            String str2 = FACEBOOK;
            analyticsManager2.sendAdvertErrorAction(str2);
            AdvertManager.addAdNetworkFlowDebugInfo(str2 + " ERROR: \n        - " + e2.getMessage());
            error();
        }
    }

    private void destroyAdView() {
        if (this.mFbNativeAd != null) {
            try {
                try {
                    PostcallFacebookAdListener.getInstance().setInternalAdListener(null);
                    NativeAdLayout nativeAdLayout = this.mFbNativeAdView;
                    if (nativeAdLayout != null) {
                        nativeAdLayout.setVisibility(8);
                    }
                    this.mFbNativeAd.unregisterView();
                    this.mFbNativeAd.destroy();
                } catch (Exception e) {
                    String str = FACEBOOK;
                    Logger.error(str, "onHideViews error:" + e.toString());
                }
            } finally {
                this.mFbNativeAd = null;
                this.mAdChoiceContainer = null;
            }
        }
    }

    public void error() {
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        if (PostcallFacebookAdPreloader.isInstanciated()) {
            PostcallFacebookAdPreloader.getInstance().onDestroy();
        }
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private static MediaViewListener getMediaViewListener() {
        return new MediaViewListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookAdProvider.2
            @Override // com.facebook.ads.MediaViewListener
            public void onComplete(MediaView mediaView) {
                Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "MediaViewEvent: Completed");
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onEnterFullscreen(MediaView mediaView) {
                Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "MediaViewEvent: EnterFullscreen");
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onExitFullscreen(MediaView mediaView) {
                Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "MediaViewEvent: ExitFullscreen");
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onFullscreenBackground(MediaView mediaView) {
                Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "MediaViewEvent: FullscreenBackground");
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onFullscreenForeground(MediaView mediaView) {
                Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "MediaViewEvent: FullscreenForeground");
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onPause(MediaView mediaView) {
                Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "MediaViewEvent: Paused");
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onPlay(MediaView mediaView) {
                Logger.debug(PostcallFacebookAdProvider.FACEBOOK, "MediaViewEvent: Play");
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onVolumeChange(MediaView mediaView, float f) {
                String str = PostcallFacebookAdProvider.FACEBOOK;
                Logger.debug(str, "MediaViewEvent: Volume " + f);
            }
        };
    }

    private void handleErrorState(String str) {
        AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(FACEBOOK, str, this.mAdvert);
        error();
    }

    private void handleLoadinState() {
        PostcallFacebookAdPreloader.getInstance().mTimeoutRunnable = this.mTimeoutRunnable;
        this.mFbNativeAd = PostcallFacebookAdPreloader.getInstance().mNativeAd;
        PostcallFacebookAdListener.getInstance().setInternalAdListener(this.adListener);
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(FACEBOOK, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    private void requestFacebookBanner() {
        AdvertManager.addAdNetworkFlowDebugInfo("\n");
        if (!PostcallAdvertProxy.getInstance().mLoadStarted || !PostcallFacebookAdPreloader.isInstanciated() || PostcallFacebookAdPreloader.getInstance().getState() == null) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(FACEBOOK, null, this.mAdvert);
            createAndLoadAd();
            return;
        }
        int i = C21153.f1282xca06b7a7[PostcallFacebookAdPreloader.getInstance().getState().ordinal()];
        if (i == 1) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(FACEBOOK, "LOADING", this.mAdvert);
            handleLoadinState();
        } else if (i == 2) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(FACEBOOK, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT, this.mAdvert);
            this.mFbNativeAd = PostcallFacebookAdPreloader.getInstance().mNativeAd;
            PostcallFacebookAdListener.getInstance().setInternalAdListener(this.adListener);
            addFbView(false);
        } else if (i == 3) {
            handleErrorState("ERROR");
        } else if (i != 4) {
        } else {
            handleErrorState("NO_AD");
        }
    }

    /* renamed from: showAd */
    public void lambda$addViewToTheHolder$2$PostcallFacebookAdProvider() {
        NativeAd nativeAd;
        if (this.mFbNativeAdView == null || (nativeAd = this.mFbNativeAd) == null || !nativeAd.isAdLoaded()) {
            return;
        }
        if (this.mFbNativeAd.isAdInvalidated()) {
            adExpired();
            return;
        }
        try {
            this.mFbNativeAd.unregisterView();
            this.mAdChoiceContainer = (LinearLayout) this.mFbNativeAdView.findViewById(C2083R.C2086id.ad_choices_container);
            this.mFbAdOptionsView = new AdOptionsView(getHostActivity(), this.mFbNativeAd, this.mFbNativeAdView);
            this.mAdChoiceContainer.removeAllViews();
            int i = 0;
            this.mAdChoiceContainer.addView(this.mFbAdOptionsView, 0);
            MediaView mediaView = (MediaView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_icon);
            TextView textView = (TextView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_title);
            TextView textView2 = (TextView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_body);
            TextView textView3 = (TextView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_sponsored_label);
            TextView textView4 = (TextView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_social_context);
            Button button = (Button) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_call_to_action);
            MediaView mediaView2 = (MediaView) this.mFbNativeAdView.findViewById(C2083R.C2086id.native_ad_media);
            this.mFbNativeAdMedia = mediaView2;
            mediaView2.setListener(getMediaViewListener());
            textView.setText(this.mFbNativeAd.getAdvertiserName());
            textView2.setText(this.mFbNativeAd.getAdBodyText());
            textView4.setText(this.mFbNativeAd.getAdSocialContext());
            if (!this.mFbNativeAd.hasCallToAction()) {
                i = 4;
            }
            button.setVisibility(i);
            button.setText(this.mFbNativeAd.getAdCallToAction());
            textView3.setText(C2083R.string.sponsored);
            ArrayList arrayList = new ArrayList();
            arrayList.add(button);
            this.mFbNativeAd.registerViewForInteraction(this.mFbNativeAdView, this.mFbNativeAdMedia, mediaView, arrayList);
            NativeAdBase.NativeComponentTag.tagView(mediaView, NativeAdBase.NativeComponentTag.AD_ICON);
            NativeAdBase.NativeComponentTag.tagView(textView, NativeAdBase.NativeComponentTag.AD_TITLE);
            NativeAdBase.NativeComponentTag.tagView(textView2, NativeAdBase.NativeComponentTag.AD_BODY);
            NativeAdBase.NativeComponentTag.tagView(textView4, NativeAdBase.NativeComponentTag.AD_SOCIAL_CONTEXT);
            NativeAdBase.NativeComponentTag.tagView(button, NativeAdBase.NativeComponentTag.AD_CALL_TO_ACTION);
            this.adShowBeginTimestamp = System.currentTimeMillis();
            success();
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(FACEBOOK + " ERROR: \n        - " + e.getMessage());
            error();
        }
    }

    private void success() {
        if (!this.adPresented) {
            if (!(this.mHolder instanceof AdvertContainer)) {
                adWasNotVisible();
            } else if (((AdvertContainer) this.mHolder).containerAndChildVisible) {
                adWasVisible();
            } else {
                adWasNotVisible();
            }
        }
    }

    public /* synthetic */ void lambda$addFbView$1$PostcallFacebookAdProvider(boolean z, ViewGroup viewGroup) {
        try {
            if (this.holderPreparedAlready) {
                return;
            }
            if (this.adPresented && viewGroup == this.mHolder) {
                return;
            }
            if (z && this.newLoadStartedAlready) {
                return;
            }
            if (viewGroup != null && this.mFbNativeAd != null && PostcallAdvertProxy.getInstance().mLoadStarted) {
                if (!z) {
                    this.holderPreparedAlready = true;
                    this.mHolder = viewGroup;
                    addViewToTheHolder();
                    return;
                }
                this.newLoadStartedAlready = true;
                NativeAd nativeAd = this.mFbNativeAd;
                if (nativeAd == null) {
                    return;
                }
                nativeAd.loadAd(nativeAd.buildLoadAdConfig().withAdListener(PostcallFacebookAdListener.getInstance().getAdListener(this.adListener)).build());
                return;
            }
            error();
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            String str = FACEBOOK;
            sb.append(str);
            sb.append(" ERROR: \n        - ");
            sb.append(e.getMessage());
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
            AnalyticsManager.getInstance().sendAdvertErrorAction(str);
            error();
        }
    }

    public /* synthetic */ void lambda$new$0$PostcallFacebookAdProvider() {
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        String str = FACEBOOK;
        analyticsManager.sendAdvertErrorAction(str);
        AdvertManager.addAdNetworkFlowDebugInfo(str + " ERROR: \n        - Timeout, stuck loading state..");
        error();
    }

    public /* synthetic */ boolean lambda$new$3$PostcallFacebookAdProvider(View view, MotionEvent motionEvent) {
        Logger.debug(FACEBOOK, "onTouch");
        this.adClicked = true;
        return false;
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onDestroy() {
        if (!this.adPresented) {
            AnalyticsManager.getInstance().sendAdvertMissedAction(FACEBOOK);
        }
        if (PostcallFacebookAdPreloader.isInstanciated()) {
            PostcallFacebookAdPreloader.getInstance().onDestroy();
        }
        destroyAdView();
        super.onDestroy();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onHideViews() {
        if (this.mHolder != null && (this.mHolder instanceof AdvertContainer)) {
            ((AdvertContainer) this.mHolder).clearVisibilityHandlers();
        }
        logVisibility();
        destroyAdView();
        if (PostcallFacebookAdPreloader.isInstanciated()) {
            PostcallFacebookAdPreloader.getInstance().reset();
        }
        this.adPresented = false;
        this.holderPreparedAlready = false;
        super.onHideViews();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        super.onLoadAd(context, runnable, runnable2);
        this.adShowBeginTimestamp = 0L;
        requestFacebookBanner();
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
}
