package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.mopub.common.AdType;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.MoPubWebViewController;
import com.mopub.mobileads.factories.HtmlControllerFactory;
import com.mopub.mobileads.factories.MraidControllerFactory;
import com.mopub.mraid.PlacementType;
import com.mopub.mraid.WebViewDebugListener;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubInline.class */
public class MoPubInline extends BaseAd {
    public static final String ADAPTER_NAME = "MoPubInline";

    /* renamed from: d */
    private Context f59277d;

    /* renamed from: e */
    private AdData f59278e;

    /* renamed from: f */
    private MoPubWebViewController f59279f;

    /* renamed from: g */
    private WebViewDebugListener f59280g;

    /* renamed from: h */
    private Handler f59281h;

    /* renamed from: i */
    private Runnable f59282i;

    /* renamed from: c */
    public /* synthetic */ void m6474c() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.EXPIRED, ADAPTER_NAME, "time in seconds");
        this.f59120c.onAdFailed(MoPubErrorCode.EXPIRED);
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: b */
    public final void mo6476b() {
        MoPubWebViewController moPubWebViewController = this.f59279f;
        if (moPubWebViewController == null) {
            return;
        }
        moPubWebViewController.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        AdData adData = this.f59278e;
        return (adData == null || adData.getAdUnit() == null) ? "" : this.f59278e.getAdUnit();
    }

    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        MoPubWebViewController moPubWebViewController = this.f59279f;
        if (moPubWebViewController != null) {
            return moPubWebViewController.getAdContainer();
        }
        return null;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return MoPub.ANALYTICS_MOPUB_TAG;
    }

    @Override // com.mopub.mobileads.BaseAd
    public void load(Context context, AdData adData) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.LOAD_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adLogEvent, str);
        this.f59277d = context;
        this.f59278e = adData;
        this.f59281h = new Handler();
        this.f59282i = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubInline$OTkFnf1yRcXXkf8WnP4ce09BiCk
            @Override // java.lang.Runnable
            public final void run() {
                MoPubInline.this.m6474c();
            }
        };
        Map<String, String> extras = this.f59278e.getExtras();
        String dspCreativeId = this.f59278e.getDspCreativeId();
        if (!extras.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY)) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(MoPubErrorCode.INLINE_LOAD_ERROR.getIntCode()), MoPubErrorCode.INLINE_LOAD_ERROR);
            this.f59119b.onAdLoadFailed(MoPubErrorCode.INLINE_LOAD_ERROR);
            return;
        }
        if ("mraid".equals(this.f59278e.getAdType())) {
            this.f59279f = MraidControllerFactory.create(this.f59277d, dspCreativeId, PlacementType.INLINE, this.f59278e.getAllowCustomClose());
        } else if (!AdType.HTML.equals(this.f59278e.getAdType())) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(MoPubErrorCode.INLINE_LOAD_ERROR.getIntCode()), MoPubErrorCode.INLINE_LOAD_ERROR);
            this.f59119b.onAdLoadFailed(MoPubErrorCode.INLINE_LOAD_ERROR);
            return;
        } else {
            this.f59279f = HtmlControllerFactory.create(context, dspCreativeId);
        }
        this.f59279f.setDebugListener(this.f59280g);
        this.f59279f.setMoPubWebViewListener(new BaseHtmlWebView.BaseWebViewListener() { // from class: com.mopub.mobileads.MoPubInline.1
            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onClicked() {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubInline.ADAPTER_NAME);
                if (MoPubInline.this.f59120c != null) {
                    MoPubInline.this.f59120c.onAdClicked();
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onClose() {
                if (MoPubInline.this.f59120c != null) {
                    MoPubInline.this.f59120c.onAdCollapsed();
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onExpand() {
                if (MoPubInline.this.f59120c != null) {
                    MoPubInline.this.f59120c.onAdExpanded();
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onFailed() {
                MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, MoPubInline.ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INLINE_SHOW_ERROR.getIntCode()), MoPubErrorCode.INLINE_SHOW_ERROR);
                if (MoPubInline.this.f59120c != null) {
                    MoPubInline.this.f59120c.onAdFailed(MoPubErrorCode.INLINE_SHOW_ERROR);
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubInline.ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INLINE_LOAD_ERROR.getIntCode()), MoPubErrorCode.INLINE_LOAD_ERROR);
                MoPubInline.this.f59119b.onAdLoadFailed(MoPubErrorCode.INLINE_LOAD_ERROR);
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onLoaded(View view) {
                AdViewController.setShouldHonorServerDimensions(view);
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MoPubInline.ADAPTER_NAME);
                MoPubInline.this.f59119b.onAdLoaded();
                if (MoPubInline.this.f59281h != null) {
                    MoPubInline.this.f59281h.postDelayed(MoPubInline.this.f59282i, 14400000L);
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubInline.ADAPTER_NAME, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
                if (MoPubInline.this.f59120c != null) {
                    MoPubInline.this.f59120c.onAdFailed(moPubErrorCode);
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onResize(boolean z) {
                if (MoPubInline.this.f59120c == null) {
                    return;
                }
                if (z) {
                    MoPubInline.this.f59120c.onAdResumeAutoRefresh();
                } else {
                    MoPubInline.this.f59120c.onAdPauseAutoRefresh();
                }
            }
        });
        this.f59279f.fillContent(this.f59278e.getAdPayload(), adData.getViewabilityVendors(), new MoPubWebViewController.WebViewCacheListener() { // from class: com.mopub.mobileads.MoPubInline.2
            @Override // com.mopub.mobileads.MoPubWebViewController.WebViewCacheListener
            public final void onReady(BaseWebView baseWebView) {
                baseWebView.getSettings().setJavaScriptEnabled(true);
            }
        });
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        Runnable runnable;
        Handler handler = this.f59281h;
        if (handler != null && (runnable = this.f59282i) != null) {
            handler.removeCallbacks(runnable);
        }
        this.f59282i = null;
        this.f59281h = null;
        MoPubWebViewController moPubWebViewController = this.f59279f;
        if (moPubWebViewController != null) {
            moPubWebViewController.setMoPubWebViewListener(null);
            this.f59279f.destroy();
            this.f59279f = null;
        }
    }

    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f59280g = webViewDebugListener;
        MoPubWebViewController moPubWebViewController = this.f59279f;
        if (moPubWebViewController != null) {
            moPubWebViewController.setDebugListener(webViewDebugListener);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public boolean shouldReportImpressionAndClick() {
        return true;
    }
}
