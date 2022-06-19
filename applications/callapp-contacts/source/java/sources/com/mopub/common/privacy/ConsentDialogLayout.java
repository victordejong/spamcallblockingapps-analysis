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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout.class */
public class ConsentDialogLayout extends CloseableLayout {

    /* renamed from: a */
    static int f58889a = 101;

    /* renamed from: c */
    AbstractC16731b f58891c;

    /* renamed from: d */
    AbstractC16730a f58892d;

    /* renamed from: e */
    final WebViewClient f58893e = new WebViewClient() { // from class: com.mopub.common.privacy.ConsentDialogLayout.2
        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            if (ConsentDialogLayout.this.f58891c != null) {
                ConsentDialogLayout.this.f58891c.onLoadProgress(ConsentDialogLayout.f58889a);
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            if (ConsentDialogLayout.this.f58891c != null) {
                ConsentDialogLayout.this.f58891c.onLoadProgress(0);
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
                if (ConsentDialogLayout.this.f58892d == null) {
                    return true;
                }
                ConsentDialogLayout.this.f58892d.onConsentClick(ConsentStatus.EXPLICIT_YES);
                return true;
            } else if ("mopub://consent?no".equals(str)) {
                if (ConsentDialogLayout.this.f58892d == null) {
                    return true;
                }
                ConsentDialogLayout.this.f58892d.onConsentClick(ConsentStatus.EXPLICIT_NO);
                return true;
            } else if ("mopub://close".equals(str)) {
                if (ConsentDialogLayout.this.f58892d == null) {
                    return true;
                }
                ConsentDialogLayout.this.f58892d.onCloseClick();
                return true;
            } else {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        Intents.launchActionViewIntent(ConsentDialogLayout.this.getContext(), Uri.parse(str), "Cannot open native browser for ".concat(String.valueOf(str)));
                        return true;
                    } catch (IntentNotResolvableException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.getMessage());
                    }
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
    };

    /* renamed from: b */
    final WebView f58890b = m6655a();

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$a.class */
    interface AbstractC16730a {
        void onCloseClick();

        void onConsentClick(ConsentStatus consentStatus);
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$b.class */
    interface AbstractC16731b {
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

    /* renamed from: a */
    private WebView m6655a() {
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
