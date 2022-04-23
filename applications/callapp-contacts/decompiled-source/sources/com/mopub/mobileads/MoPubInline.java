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

    /* renamed from: d  reason: collision with root package name */
    private Context f34109d;
    private AdData e;
    private MoPubWebViewController f;
    private WebViewDebugListener g;
    private Handler h;
    private Runnable i;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.EXPIRED, ADAPTER_NAME, "time in seconds");
        this.f34042c.onAdFailed(MoPubErrorCode.EXPIRED);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public final void b() {
        MoPubWebViewController moPubWebViewController = this.f;
        if (moPubWebViewController != null) {
            moPubWebViewController.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        AdData adData = this.e;
        return (adData == null || adData.getAdUnit() == null) ? "" : this.e.getAdUnit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public View getAdView() {
        MoPubWebViewController moPubWebViewController = this.f;
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
        this.f34109d = context;
        this.e = adData;
        this.h = new Handler();
        this.i = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubInline$OTkFnf1yRcXXkf8WnP4ce09BiCk
            @Override // java.lang.Runnable
            public final void run() {
                MoPubInline.this.c();
            }
        };
        Map<String, String> extras = this.e.getExtras();
        String dspCreativeId = this.e.getDspCreativeId();
        if (!extras.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY)) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(MoPubErrorCode.INLINE_LOAD_ERROR.getIntCode()), MoPubErrorCode.INLINE_LOAD_ERROR);
            this.f34041b.onAdLoadFailed(MoPubErrorCode.INLINE_LOAD_ERROR);
            return;
        }
        if ("mraid".equals(this.e.getAdType())) {
            this.f = MraidControllerFactory.create(this.f34109d, dspCreativeId, PlacementType.INLINE, this.e.getAllowCustomClose());
        } else if (AdType.HTML.equals(this.e.getAdType())) {
            this.f = HtmlControllerFactory.create(context, dspCreativeId);
        } else {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str, Integer.valueOf(MoPubErrorCode.INLINE_LOAD_ERROR.getIntCode()), MoPubErrorCode.INLINE_LOAD_ERROR);
            this.f34041b.onAdLoadFailed(MoPubErrorCode.INLINE_LOAD_ERROR);
            return;
        }
        this.f.setDebugListener(this.g);
        this.f.setMoPubWebViewListener(new BaseHtmlWebView.BaseWebViewListener() { // from class: com.mopub.mobileads.MoPubInline.1
            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onClicked() {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubInline.ADAPTER_NAME);
                if (MoPubInline.this.f34042c != null) {
                    MoPubInline.this.f34042c.onAdClicked();
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onClose() {
                if (MoPubInline.this.f34042c != null) {
                    MoPubInline.this.f34042c.onAdCollapsed();
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onExpand() {
                if (MoPubInline.this.f34042c != null) {
                    MoPubInline.this.f34042c.onAdExpanded();
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onFailed() {
                MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, MoPubInline.ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INLINE_SHOW_ERROR.getIntCode()), MoPubErrorCode.INLINE_SHOW_ERROR);
                if (MoPubInline.this.f34042c != null) {
                    MoPubInline.this.f34042c.onAdFailed(MoPubErrorCode.INLINE_SHOW_ERROR);
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubInline.ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INLINE_LOAD_ERROR.getIntCode()), MoPubErrorCode.INLINE_LOAD_ERROR);
                MoPubInline.this.f34041b.onAdLoadFailed(MoPubErrorCode.INLINE_LOAD_ERROR);
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onLoaded(View view) {
                AdViewController.setShouldHonorServerDimensions(view);
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MoPubInline.ADAPTER_NAME);
                MoPubInline.this.f34041b.onAdLoaded();
                if (MoPubInline.this.h != null) {
                    MoPubInline.this.h.postDelayed(MoPubInline.this.i, 14400000L);
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubInline.ADAPTER_NAME, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
                if (MoPubInline.this.f34042c != null) {
                    MoPubInline.this.f34042c.onAdFailed(moPubErrorCode);
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onResize(boolean z) {
                if (MoPubInline.this.f34042c != null) {
                    if (z) {
                        MoPubInline.this.f34042c.onAdResumeAutoRefresh();
                    } else {
                        MoPubInline.this.f34042c.onAdPauseAutoRefresh();
                    }
                }
            }
        });
        this.f.fillContent(this.e.getAdPayload(), adData.getViewabilityVendors(), new MoPubWebViewController.WebViewCacheListener() { // from class: com.mopub.mobileads.MoPubInline.2
            @Override // com.mopub.mobileads.MoPubWebViewController.WebViewCacheListener
            public final void onReady(BaseWebView baseWebView) {
                baseWebView.getSettings().setJavaScriptEnabled(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        Runnable runnable;
        Handler handler = this.h;
        if (!(handler == null || (runnable = this.i) == null)) {
            handler.removeCallbacks(runnable);
        }
        this.i = null;
        this.h = null;
        MoPubWebViewController moPubWebViewController = this.f;
        if (moPubWebViewController != null) {
            moPubWebViewController.setMoPubWebViewListener(null);
            this.f.destroy();
            this.f = null;
        }
    }

    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.g = webViewDebugListener;
        MoPubWebViewController moPubWebViewController = this.f;
        if (moPubWebViewController != null) {
            moPubWebViewController.setDebugListener(webViewDebugListener);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public boolean shouldReportImpressionAndClick() {
        return true;
    }
}
