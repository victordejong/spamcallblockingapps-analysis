package com.mopub.common.privacy;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.mopub.common.CloseableLayout;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout.class */
class ConsentDialogLayout extends CloseableLayout {

    /* renamed from: a  reason: collision with root package name */
    static int f33941a = 101;

    /* renamed from: c  reason: collision with root package name */
    b f33943c;

    /* renamed from: d  reason: collision with root package name */
    a f33944d;
    final WebViewClient e = new WebViewClient() { // from class: com.mopub.common.privacy.ConsentDialogLayout.2
        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            if (ConsentDialogLayout.this.f33943c != null) {
                ConsentDialogLayout.this.f33943c.onLoadProgress(ConsentDialogLayout.f33941a);
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            if (ConsentDialogLayout.this.f33943c != null) {
                ConsentDialogLayout.this.f33943c.onLoadProgress(0);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if ("mopub://consent?yes".equals(str)) {
                if (ConsentDialogLayout.this.f33944d == null) {
                    return true;
                }
                ConsentDialogLayout.this.f33944d.onConsentClick(ConsentStatus.EXPLICIT_YES);
                return true;
            } else if ("mopub://consent?no".equals(str)) {
                if (ConsentDialogLayout.this.f33944d == null) {
                    return true;
                }
                ConsentDialogLayout.this.f33944d.onConsentClick(ConsentStatus.EXPLICIT_NO);
                return true;
            } else if (!"mopub://close".equals(str)) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        Intents.launchActionViewIntent(ConsentDialogLayout.this.getContext(), Uri.parse(str), "Cannot open native browser for ".concat(String.valueOf(str)));
                        return true;
                    } catch (IntentNotResolvableException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.getMessage());
                    }
                }
                return super.shouldOverrideUrlLoading(webView, str);
            } else if (ConsentDialogLayout.this.f33944d == null) {
                return true;
            } else {
                ConsentDialogLayout.this.f33944d.onCloseClick();
                return true;
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    final WebView f33942b = a();

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$a.class */
    interface a {
        void onCloseClick();

        void onConsentClick(ConsentStatus consentStatus);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$b.class */
    interface b {
        void onLoadProgress(int i);
    }

    public ConsentDialogLayout(Context context) {
        super(context);
    }

    public ConsentDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ConsentDialogLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private WebView a() {
        WebView webView = new WebView(getContext());
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        WebSettings settings = webView.getSettings();
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        settings.setLoadsImagesAutomatically(true);
        settings.setLoadWithOverviewMode(true);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setAppCachePath(getContext().getCacheDir().getAbsolutePath());
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        webView.setId(View.generateViewId());
        setCloseVisible(false);
        addView(webView, new FrameLayout.LayoutParams(-1, -1));
        return webView;
    }
}
