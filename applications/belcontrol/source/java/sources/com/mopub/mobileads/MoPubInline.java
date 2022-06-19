package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.mopub.common.AdType;
import com.mopub.common.DataKeys;
import com.mopub.common.LifecycleListener;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.MoPubInline;
import com.mopub.mobileads.MoPubWebViewController;
import com.mopub.mobileads.factories.HtmlControllerFactory;
import com.mopub.mobileads.factories.MraidControllerFactory;
import com.mopub.mraid.PlacementType;
import com.mopub.mraid.WebViewDebugListener;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubInline.class */
public class MoPubInline extends BaseAd {
    public static final String ADAPTER_NAME = "MoPubInline";

    /* renamed from: d */
    public Context f4707d;

    /* renamed from: e */
    public AdData f4708e;

    /* renamed from: f */
    public MoPubWebViewController f4709f;

    /* renamed from: g */
    public WebViewDebugListener f4710g;

    /* renamed from: h */
    public Handler f4711h;

    /* renamed from: i */
    public Runnable f4712i;

    /* renamed from: com.mopub.mobileads.MoPubInline$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubInline$a.class */
    public class C1083a implements BaseHtmlWebView.BaseWebViewListener {
        public C1083a() {
            MoPubInline.this = r4;
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onClicked() {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubInline.ADAPTER_NAME);
            AdLifecycleListener.InteractionListener interactionListener = MoPubInline.this.f4636c;
            if (interactionListener != null) {
                interactionListener.onAdClicked();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onClose() {
            AdLifecycleListener.InteractionListener interactionListener = MoPubInline.this.f4636c;
            if (interactionListener != null) {
                interactionListener.onAdCollapsed();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onExpand() {
            AdLifecycleListener.InteractionListener interactionListener = MoPubInline.this.f4636c;
            if (interactionListener != null) {
                interactionListener.onAdExpanded();
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onFailed() {
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_FAILED;
            String str = MoPubInline.ADAPTER_NAME;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INLINE_SHOW_ERROR;
            MoPubLog.log(adapterLogEvent, str, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            AdLifecycleListener.InteractionListener interactionListener = MoPubInline.this.f4636c;
            if (interactionListener != null) {
                interactionListener.onAdFailed(moPubErrorCode);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_FAILED;
            String str = MoPubInline.ADAPTER_NAME;
            MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.INLINE_LOAD_ERROR;
            MoPubLog.log(adapterLogEvent, str, Integer.valueOf(moPubErrorCode2.getIntCode()), moPubErrorCode2);
            MoPubInline.this.f4635b.onAdLoadFailed(moPubErrorCode2);
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onLoaded(View view) {
            AdViewController.setShouldHonorServerDimensions(view);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MoPubInline.ADAPTER_NAME);
            MoPubInline.this.f4635b.onAdLoaded();
            if (MoPubInline.this.f4711h != null) {
                MoPubInline.this.f4711h.postDelayed(MoPubInline.this.f4712i, 14400000L);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubInline.ADAPTER_NAME, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            AdLifecycleListener.InteractionListener interactionListener = MoPubInline.this.f4636c;
            if (interactionListener != null) {
                interactionListener.onAdFailed(moPubErrorCode);
            }
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onResize(boolean z) {
            AdLifecycleListener.InteractionListener interactionListener = MoPubInline.this.f4636c;
            if (interactionListener == null) {
                return;
            }
            if (z) {
                interactionListener.onAdResumeAutoRefresh();
            } else {
                interactionListener.onAdPauseAutoRefresh();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubInline$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubInline$b.class */
    public class C1084b implements MoPubWebViewController.WebViewCacheListener {
        public C1084b(MoPubInline moPubInline) {
        }

        @Override // com.mopub.mobileads.MoPubWebViewController.WebViewCacheListener
        public void onReady(BaseWebView baseWebView) {
            baseWebView.getSettings().setJavaScriptEnabled(true);
        }
    }

    /* renamed from: l */
    public /* synthetic */ void m3652m() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.EXPIRED, ADAPTER_NAME, "time in seconds");
        this.f4636c.onAdFailed(MoPubErrorCode.EXPIRED);
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    public boolean mo3660a(Activity activity, AdData adData) {
        return false;
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: b */
    public View mo3659b() {
        MoPubWebViewController moPubWebViewController = this.f4709f;
        return moPubWebViewController != null ? moPubWebViewController.getAdContainer() : null;
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: c */
    public LifecycleListener mo3658c() {
        return null;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        AdData adData = this.f4708e;
        return (adData == null || adData.getAdUnit() == null) ? "" : this.f4708e.getAdUnit();
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: h */
    public void mo3657h() {
        MoPubWebViewController moPubWebViewController = this.f4709f;
        if (moPubWebViewController == null) {
            return;
        }
        moPubWebViewController.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
    }

    /* renamed from: k */
    public final boolean m3654k(Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void load(Context context, AdData adData) {
        MoPubWebViewController create;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.LOAD_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adLogEvent, str);
        this.f4707d = context;
        this.f4708e = adData;
        this.f4711h = new Handler();
        this.f4712i = new Runnable() { // from class: ug1
            @Override // java.lang.Runnable
            public final void run() {
                MoPubInline.this.m3652m();
            }
        };
        Map<String, String> extras = this.f4708e.getExtras();
        String dspCreativeId = this.f4708e.getDspCreativeId();
        if (!m3654k(extras)) {
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INLINE_LOAD_ERROR;
            MoPubLog.log(adapterLogEvent, str, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            this.f4635b.onAdLoadFailed(moPubErrorCode);
            return;
        }
        if ("mraid".equals(this.f4708e.getAdType())) {
            create = MraidControllerFactory.create(this.f4707d, dspCreativeId, PlacementType.INLINE, this.f4708e.getAllowCustomClose());
        } else if (!AdType.HTML.equals(this.f4708e.getAdType())) {
            MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.INLINE_LOAD_ERROR;
            MoPubLog.log(adapterLogEvent2, str, Integer.valueOf(moPubErrorCode2.getIntCode()), moPubErrorCode2);
            this.f4635b.onAdLoadFailed(moPubErrorCode2);
            return;
        } else {
            create = HtmlControllerFactory.create(context, dspCreativeId);
        }
        this.f4709f = create;
        this.f4709f.setDebugListener(this.f4710g);
        this.f4709f.setMoPubWebViewListener(new C1083a());
        this.f4709f.fillContent(this.f4708e.getAdPayload(), adData.getViewabilityVendors(), new C1084b(this));
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        Runnable runnable;
        Handler handler = this.f4711h;
        if (handler != null && (runnable = this.f4712i) != null) {
            handler.removeCallbacks(runnable);
        }
        this.f4712i = null;
        this.f4711h = null;
        MoPubWebViewController moPubWebViewController = this.f4709f;
        if (moPubWebViewController != null) {
            moPubWebViewController.setMoPubWebViewListener(null);
            this.f4709f.mo3435a();
            this.f4709f = null;
        }
    }

    @VisibleForTesting
    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f4710g = webViewDebugListener;
        MoPubWebViewController moPubWebViewController = this.f4709f;
        if (moPubWebViewController != null) {
            moPubWebViewController.setDebugListener(webViewDebugListener);
        }
    }
}
