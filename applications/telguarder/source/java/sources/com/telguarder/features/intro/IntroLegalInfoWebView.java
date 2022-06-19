package com.telguarder.features.intro;

import android.content.Intent;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MenuItem;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import com.telguarder.C2083R;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.web.LollipopFixedWebView;
import com.telguarder.helpers.web.WebViewPreloadHelper;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/intro/IntroLegalInfoWebView.class */
public class IntroLegalInfoWebView extends AppCompatActivity {
    private static String mUrl;
    private LollipopFixedWebView webView;
    private long mRequestStartTime = 0;
    public WebViewPreloadHelper.LoadErrorType loadError = null;
    private WebViewClient webViewClient = new WebViewClient() { // from class: com.telguarder.features.intro.IntroLegalInfoWebView.1
        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            webView.getSettings().setCacheMode(-1);
            IntroLegalInfoWebView.this.handleOpenFinished();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (!(Build.VERSION.SDK_INT >= 23 && webResourceError != null && webResourceError.getDescription() != null && webResourceError.getDescription().toString().contains("ERR_CACHE_MISS"))) {
                IntroLegalInfoWebView.this.loadError = WebViewPreloadHelper.LoadErrorType.RESOURCE_ERROR;
                IntroLegalInfoWebView.this.handleOpenFinished();
            }
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            WebViewPreloadHelper.LoadErrorType loadErrorType;
            IntroLegalInfoWebView introLegalInfoWebView = IntroLegalInfoWebView.this;
            if (webResourceResponse == null || webResourceResponse.getStatusCode() != 410) {
                loadErrorType = WebViewPreloadHelper.LoadErrorType.RESPONSE_ERROR;
            } else {
                IntroLegalInfoWebView introLegalInfoWebView2 = IntroLegalInfoWebView.this;
                loadErrorType = WebViewPreloadHelper.LoadErrorType.DATA_NOT_AVAILABLE;
                introLegalInfoWebView2.loadError = loadErrorType;
            }
            introLegalInfoWebView.loadError = loadErrorType;
            IntroLegalInfoWebView.this.handleOpenFinished();
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            IntroLegalInfoWebView.this.loadError = WebViewPreloadHelper.LoadErrorType.SSL_ERROR;
            IntroLegalInfoWebView.this.handleOpenFinished();
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            IntroLegalInfoWebView.this.loadError = WebViewPreloadHelper.LoadErrorType.RENDER_PROC_ERROR;
            IntroLegalInfoWebView.this.handleOpenFinished();
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            webView.loadUrl(webResourceRequest.getUrl().toString(), IntroLegalInfoWebView.this.getCustomHeaders());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str, IntroLegalInfoWebView.this.getCustomHeaders());
            return true;
        }
    };

    public Map<String, String> getCustomHeaders() {
        HashMap hashMap = new HashMap();
        hashMap.put("X-DeviceId", UID.uid(this));
        return hashMap;
    }

    public void handleOpenFinished() {
        if (this.loadError == null) {
            AnalyticsManager.getInstance().sendLegalInfoPageOpenSuccess(SystemClock.elapsedRealtime() - this.mRequestStartTime);
            return;
        }
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        WebViewPreloadHelper.LoadErrorType loadErrorType = this.loadError;
        analyticsManager.sendLegalInfoPageOpenError(loadErrorType != null ? loadErrorType.name() : "");
    }

    public static void openLegalInfo(AppCompatActivity appCompatActivity, String str) {
        if (appCompatActivity == null) {
            return;
        }
        mUrl = str;
        ActivityCompat.startActivity(appCompatActivity, new Intent(appCompatActivity, IntroLegalInfoWebView.class), null);
    }

    private void setupWebView() {
        this.loadError = null;
        this.mRequestStartTime = SystemClock.elapsedRealtime();
        LollipopFixedWebView lollipopFixedWebView = (LollipopFixedWebView) findViewById(C2083R.C2086id.webView);
        this.webView = lollipopFixedWebView;
        lollipopFixedWebView.setWebViewClient(this.webViewClient);
        this.webView.loadUrl(mUrl, getCustomHeaders());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        LollipopFixedWebView lollipopFixedWebView = this.webView;
        if (lollipopFixedWebView != null && lollipopFixedWebView.canGoBack()) {
            this.webView.goBack();
            return;
        }
        finish();
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2083R.layout.webview_layout);
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, findViewById(C2083R.C2086id.webViewLayout), null, true);
        setupWebView();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }
}
