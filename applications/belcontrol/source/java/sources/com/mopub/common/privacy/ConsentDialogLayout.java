package com.mopub.common.privacy;

import android.annotation.SuppressLint;
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
import com.google.android.exoplayer2.C0515C;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout.class */
public class ConsentDialogLayout extends CloseableLayout {

    /* renamed from: v */
    public static int f4412v = 101;

    /* renamed from: s */
    public AbstractC1049d f4414s;

    /* renamed from: t */
    public AbstractC1048c f4415t;

    /* renamed from: u */
    public final WebViewClient f4416u = new C1047b();

    /* renamed from: r */
    public final WebView f4413r = m3841j();

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$a.class */
    public class C1046a implements CloseableLayout.OnCloseListener {
        public C1046a() {
            ConsentDialogLayout.this = r4;
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            if (ConsentDialogLayout.this.f4415t != null) {
                ConsentDialogLayout.this.f4415t.onCloseClick();
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$b.class */
    public class C1047b extends WebViewClient {
        public C1047b() {
            ConsentDialogLayout.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (ConsentDialogLayout.this.f4414s != null) {
                ConsentDialogLayout.this.f4414s.onLoadProgress(ConsentDialogLayout.f4412v);
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            if (ConsentDialogLayout.this.f4414s != null) {
                ConsentDialogLayout.this.f4414s.onLoadProgress(0);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if ("mopub://consent?yes".equals(str)) {
                if (ConsentDialogLayout.this.f4415t == null) {
                    return true;
                }
                ConsentDialogLayout.this.f4415t.onConsentClick(ConsentStatus.EXPLICIT_YES);
                return true;
            } else if ("mopub://consent?no".equals(str)) {
                if (ConsentDialogLayout.this.f4415t == null) {
                    return true;
                }
                ConsentDialogLayout.this.f4415t.onConsentClick(ConsentStatus.EXPLICIT_NO);
                return true;
            } else if ("mopub://close".equals(str)) {
                if (ConsentDialogLayout.this.f4415t == null) {
                    return true;
                }
                ConsentDialogLayout.this.f4415t.onCloseClick();
                return true;
            } else {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        Context context = ConsentDialogLayout.this.getContext();
                        Uri parse = Uri.parse(str);
                        Intents.launchActionViewIntent(context, parse, "Cannot open native browser for " + str);
                        return true;
                    } catch (IntentNotResolvableException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.getMessage());
                    }
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$c.class */
    public interface AbstractC1048c {
        void onCloseClick();

        void onConsentClick(ConsentStatus consentStatus);
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$d.class */
    public interface AbstractC1049d {
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

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: j */
    public final WebView m3841j() {
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

    /* renamed from: k */
    public void m3840k(AbstractC1048c abstractC1048c) {
        Preconditions.checkNotNull(abstractC1048c);
        this.f4415t = abstractC1048c;
    }

    /* renamed from: l */
    public final void m3839l(WebView webView) {
        webView.setWebViewClient(this.f4416u);
        setOnCloseListener(new C1046a());
    }

    /* renamed from: m */
    public void m3838m(String str, AbstractC1049d abstractC1049d) {
        Preconditions.checkNotNull(str);
        this.f4414s = abstractC1049d;
        m3839l(this.f4413r);
        WebView webView = this.f4413r;
        webView.loadDataWithBaseURL("https://" + Constants.HOST + "/", str, "text/html", C0515C.UTF8_NAME, null);
    }
}
