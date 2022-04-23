package com.criteo.view;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActivityChooserModel;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.criteo.Criteo;
import com.criteo.Gdpr;
import com.criteo.controller.FetchHtmlAdController;
import com.criteo.controller.FindDeviceLMT;
import com.criteo.info.AppConfigInfo;
import com.criteo.parser.JsonParser;
import com.criteo.sync.sdk.CriteoSync;
import com.criteo.sync.sdk.CriteoSyncOptions;
import com.criteo.utils.CriteoCacheHelper;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
import com.criteo.utils.Utils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/criteo/view/CriteoBannerAd.class */
public class CriteoBannerAd extends FrameLayout implements FetchHtmlAdController.OnFetchHtmlAdController, FindDeviceLMT.OnFindDeviceLMTListener {
    public static final String TAG = "criteo.Stories.CriteoBanner";
    public Handler handler = new Handler();
    public Handler handler_first = new Handler();
    public BroadcastReceiver mConfigCration = new BroadcastReceiver() { // from class: com.criteo.view.CriteoBannerAd.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CriteoBannerAd.this.requestAd();
            CriteoBannerAd.this.mContext.unregisterReceiver(CriteoBannerAd.this.mConfigCration);
        }
    };
    public Context mContext;
    public StringBuilder mGetCacheHtml;
    public Criteo.OnCriteoAdListener mOnCriteoAdListener;
    public boolean mTestMode;
    public String mUrl;
    public String mZoneId;
    public Runnable runnable;
    public Runnable runnable_firstime;

    public CriteoBannerAd(Context context) {
        super(context);
        init();
    }

    public CriteoBannerAd(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public CriteoBannerAd(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    @TargetApi(21)
    public CriteoBannerAd(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    private View createHtmlView(StringBuilder sb) {
        Tracer.debug("criteo.Stories.CriteoBanner", "createHtmlView: ");
        WebView webView = new WebView(getContext());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        webView.setWebViewClient(new WebViewClient());
        webView.setScrollContainer(false);
        webView.setBackgroundColor(0);
        webView.loadDataWithBaseURL(null, "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script>" + ((Object) sb) + "</script></body></html>", "text/html", JsonRequest.PROTOCOL_CHARSET, null);
        webView.setWebViewClient(new WebViewClient() { // from class: com.criteo.view.CriteoBannerAd.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                CriteoBannerAd criteoBannerAd = CriteoBannerAd.this;
                criteoBannerAd.mUrl = PreferenceDataUtils.getDisplayAdCreative(criteoBannerAd.mContext);
                if (str != null && str.startsWith(CriteoBannerAd.this.mUrl)) {
                    return false;
                }
                webView2.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456));
                CriteoBannerAd.this.mOnCriteoAdListener.onAdClicked(Criteo.ADType.BANNER);
                return true;
            }
        });
        return webView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAppOnForeground(Context context, String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showingAd() {
        this.mGetCacheHtml = CriteoCacheHelper.retrieveBanner(this.mContext, Utils.CACHE_KEY_BANNER, Criteo.ADType.BANNER, this.mZoneId);
        StringBuilder sb = this.mGetCacheHtml;
        if (sb != null && !sb.toString().equals("")) {
            removeAllViews();
            addView(createHtmlView(this.mGetCacheHtml), new FrameLayout.LayoutParams(-2, -2));
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdDisplayed(Criteo.ADType.BANNER);
            }
            invalidate();
            Context context = this.mContext;
            CriteoCacheHelper.CleanCacheDi(context, Criteo.ADType.BANNER + this.mZoneId);
            requestAd();
        } else if (getOnCriteoAdListener() != null) {
            getOnCriteoAdListener().onAdDisplayNoAd(Criteo.ADType.BANNER);
            removeAllViews();
        }
    }

    public void OnCriteoAdInitialization(Context context, int i) {
        Tracer.debug("criteo.Stories.CriteoBanner", "setOnCriteoAdListener: ");
        this.mContext = context;
        this.mZoneId = String.valueOf(i);
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo == null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId("PublisherSDK"));
        } else if (appConfigInfo.isSync_enabled() && JsonParser.appConfigInfo.getIntegrationid() != null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId(JsonParser.appConfigInfo.getIntegrationid()));
        }
    }

    public void OnCriteoAdInitialization(Context context, int i, Criteo.OnCriteoAdListener onCriteoAdListener) {
        Tracer.debug("criteo.Stories.CriteoBanner", "setOnCriteoAdListener: ");
        this.mContext = context;
        this.mZoneId = String.valueOf(i);
        this.mOnCriteoAdListener = onCriteoAdListener;
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo == null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId("PublisherSDK"));
        } else if (appConfigInfo.isSync_enabled() && JsonParser.appConfigInfo.getIntegrationid() != null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId(JsonParser.appConfigInfo.getIntegrationid()));
        }
    }

    public void displayAd() {
        Tracer.debug("criteo.Stories.CriteoBanner", "showAd: ");
        boolean z = this.mTestMode;
        if (!z) {
            AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
            if (appConfigInfo == null) {
                showingAd();
            } else if (!appConfigInfo.isAutorefresh()) {
                showingAd();
            } else if (JsonParser.appConfigInfo.getAutorefresh_period() != null) {
                final int parseInt = Integer.parseInt(JsonParser.appConfigInfo.getAutorefresh_period()) * 1000;
                this.runnable = new Runnable() { // from class: com.criteo.view.CriteoBannerAd.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CriteoBannerAd criteoBannerAd = CriteoBannerAd.this;
                        if (criteoBannerAd.isAppOnForeground(criteoBannerAd.mContext, CriteoBannerAd.this.mContext.getPackageName())) {
                            CriteoBannerAd.this.showingAd();
                        }
                        CriteoBannerAd.this.handler.postDelayed(this, parseInt);
                    }
                };
                this.handler.post(this.runnable);
            } else {
                showingAd();
            }
        } else if (z) {
            removeAllViews();
            WebView webView = new WebView(getContext());
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            webView.setWebViewClient(new WebViewClient());
            webView.getSettings().setJavaScriptEnabled(true);
            webView.loadUrl("file:///android_asset/banner_ad.html");
            addView(webView, layoutParams);
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdDisplayed(Criteo.ADType.BANNER);
            }
            invalidate();
        }
    }

    public Criteo.OnCriteoAdListener getOnCriteoAdListener() {
        Tracer.debug("criteo.Stories.CriteoBanner", "getOnCriteoAdListener: " + this.mOnCriteoAdListener);
        return this.mOnCriteoAdListener;
    }

    public void init() {
        Tracer.debug("criteo.Stories.CriteoBanner", "init: ");
    }

    public void isTestMode(boolean z) {
        this.mTestMode = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.handler.removeCallbacks(this.runnable);
    }

    @Override // com.criteo.controller.FetchHtmlAdController.OnFetchHtmlAdController
    public void onFetchHtmlAdFailed(int i, String str, String str2) {
        Tracer.debug("criteo.Stories.CriteoBanner", "onFetchHtmlAdFailed: ");
        if (getOnCriteoAdListener() != null) {
            getOnCriteoAdListener().onAdRequestFailed(Criteo.ADType.BANNER);
        }
    }

    @Override // com.criteo.controller.FetchHtmlAdController.OnFetchHtmlAdController
    public void onFetchHtmlAdSuccess() {
        Tracer.debug("criteo.Stories.CriteoBanner", "onFetchHtmlAdSuccess: ");
        if (getOnCriteoAdListener() != null) {
            getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
        }
    }

    @Override // com.criteo.controller.FindDeviceLMT.OnFindDeviceLMTListener
    public void onFindDeviceLMTFailed() {
    }

    @Override // com.criteo.controller.FindDeviceLMT.OnFindDeviceLMTListener
    public void onFindDeviceLMTSuccess(String str) {
        new FetchHtmlAdController(getContext(), this, this.mZoneId, this.mOnCriteoAdListener).fetchBannerAd();
    }

    public void requestAd() {
        Tracer.debug("criteo.Stories.CriteoBanner", "requestAd: ");
        PreferenceDataUtils.clearStoreByKey(this.mContext, PreferenceDataUtils.LMT);
        PreferenceDataUtils.clearStoreByKey(this.mContext, PreferenceDataUtils.GAID);
        new Gdpr().getGdprCompliance(this.mContext);
        boolean z = this.mTestMode;
        if (!z) {
            String lmt = PreferenceDataUtils.getLMT(this.mContext);
            this.mGetCacheHtml = CriteoCacheHelper.retrieveBanner(this.mContext, Utils.CACHE_KEY_BANNER, Criteo.ADType.BANNER, this.mZoneId);
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdRequest(Criteo.ADType.BANNER);
            }
            if (lmt == null || lmt.trim().isEmpty()) {
                if (JsonParser.appConfigInfo != null) {
                    StringBuilder sb = this.mGetCacheHtml;
                    if (sb == null || sb.toString().equals("")) {
                        new FindDeviceLMT(this.mContext, this).fetchLMT();
                    } else if (JsonParser.appConfigInfo.isEnabled()) {
                        if (getOnCriteoAdListener() != null) {
                            getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
                        }
                        removeAllViews();
                    } else {
                        new FindDeviceLMT(this.mContext, this).fetchLMT();
                    }
                } else {
                    StringBuilder sb2 = this.mGetCacheHtml;
                    if (sb2 == null || sb2.toString().equals("")) {
                        new FindDeviceLMT(this.mContext, this).fetchLMT();
                        return;
                    }
                    if (getOnCriteoAdListener() != null) {
                        getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
                    }
                    removeAllViews();
                }
            } else if (JsonParser.appConfigInfo != null) {
                StringBuilder sb3 = this.mGetCacheHtml;
                if (sb3 == null || sb3.toString().equals("")) {
                    new FetchHtmlAdController(getContext(), this, this.mZoneId, this.mOnCriteoAdListener).fetchBannerAd();
                } else if (JsonParser.appConfigInfo.isEnabled()) {
                    if (getOnCriteoAdListener() != null) {
                        getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
                    }
                    removeAllViews();
                } else {
                    new FetchHtmlAdController(getContext(), this, this.mZoneId, this.mOnCriteoAdListener).fetchBannerAd();
                }
            } else {
                StringBuilder sb4 = this.mGetCacheHtml;
                if (sb4 == null || sb4.toString().equals("")) {
                    new FetchHtmlAdController(getContext(), this, this.mZoneId, this.mOnCriteoAdListener).fetchBannerAd();
                    return;
                }
                if (getOnCriteoAdListener() != null) {
                    getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
                }
                removeAllViews();
            }
        } else if (z) {
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdRequest(Criteo.ADType.BANNER);
            }
            if (getOnCriteoAdListener() != null) {
                getOnCriteoAdListener().onAdFetched(Criteo.ADType.BANNER);
            }
        }
    }
}
