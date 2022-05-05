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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout.class */
public class ConsentDialogLayout extends CloseableLayout {

    /* renamed from: s */
    public static int f8229s = 101;
    @Nullable

    /* renamed from: p */
    public AbstractC3796d f8231p;
    @Nullable

    /* renamed from: q */
    public AbstractC3795c f8232q;

    /* renamed from: r */
    public final WebViewClient f8233r = new C3794b();
    @NonNull

    /* renamed from: o */
    public final WebView f8230o = m30704d();

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$a.class */
    public class C3793a implements CloseableLayout.OnCloseListener {
        public C3793a() {
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            if (ConsentDialogLayout.this.f8232q != null) {
                ConsentDialogLayout.this.f8232q.onCloseClick();
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$b.class */
    public class C3794b extends WebViewClient {
        public C3794b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (ConsentDialogLayout.this.f8231p != null) {
                ConsentDialogLayout.this.f8231p.onLoadProgress(ConsentDialogLayout.f8229s);
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            if (ConsentDialogLayout.this.f8231p != null) {
                ConsentDialogLayout.this.f8231p.onLoadProgress(0);
            }
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(26)
        public boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if ("mopub://consent?yes".equals(str)) {
                if (ConsentDialogLayout.this.f8232q == null) {
                    return true;
                }
                ConsentDialogLayout.this.f8232q.onConsentClick(ConsentStatus.EXPLICIT_YES);
                return true;
            } else if ("mopub://consent?no".equals(str)) {
                if (ConsentDialogLayout.this.f8232q == null) {
                    return true;
                }
                ConsentDialogLayout.this.f8232q.onConsentClick(ConsentStatus.EXPLICIT_NO);
                return true;
            } else if (!"mopub://close".equals(str)) {
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
            } else if (ConsentDialogLayout.this.f8232q == null) {
                return true;
            } else {
                ConsentDialogLayout.this.f8232q.onCloseClick();
                return true;
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$c.class */
    public interface AbstractC3795c {
        void onCloseClick();

        void onConsentClick(ConsentStatus consentStatus);
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$d.class */
    public interface AbstractC3796d {
        void onLoadProgress(int i);
    }

    public ConsentDialogLayout(@NonNull Context context) {
        super(context);
    }

    public ConsentDialogLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ConsentDialogLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public final void m30709a(@NonNull WebView webView) {
        webView.setWebViewClient(this.f8233r);
        setOnCloseListener(new C3793a());
    }

    /* renamed from: a */
    public void m30708a(@NonNull AbstractC3795c cVar) {
        Preconditions.checkNotNull(cVar);
        this.f8232q = cVar;
    }

    /* renamed from: a */
    public void m30706a(@NonNull String str, @Nullable AbstractC3796d dVar) {
        Preconditions.checkNotNull(str);
        this.f8231p = dVar;
        m30709a(this.f8230o);
        WebView webView = this.f8230o;
        webView.loadDataWithBaseURL("https://" + Constants.HOST + "/", str, "text/html", "UTF-8", null);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: d */
    public final WebView m30704d() {
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
