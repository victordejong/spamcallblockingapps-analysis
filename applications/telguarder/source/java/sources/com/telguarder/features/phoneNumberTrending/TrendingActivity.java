package com.telguarder.features.phoneNumberTrending;

import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MenuItem;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.telguarder.C2083R;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.web.LollipopFixedWebView;
import com.telguarder.helpers.web.WebViewPreloadHelper;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberTrending/TrendingActivity.class */
public class TrendingActivity extends AppCompatActivity {
    private static boolean mCached = true;
    private static String mUrl;
    private Toolbar mToolbar;
    private LollipopFixedWebView webView;
    private long mRequestStartTime = 0;
    public WebViewPreloadHelper.LoadErrorType loadError = null;
    private WebViewClient webViewClient = new WebViewClient() { // from class: com.telguarder.features.phoneNumberTrending.TrendingActivity.2
        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            webView.getSettings().setCacheMode(-1);
            TrendingActivity.this.handleOpenFinished();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (!(Build.VERSION.SDK_INT >= 23 && webResourceError != null && webResourceError.getDescription() != null && webResourceError.getDescription().toString().contains("ERR_CACHE_MISS"))) {
                TrendingActivity.this.loadError = WebViewPreloadHelper.LoadErrorType.RESOURCE_ERROR;
                TrendingActivity.this.handleOpenFinished();
            }
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            WebViewPreloadHelper.LoadErrorType loadErrorType;
            TrendingActivity trendingActivity = TrendingActivity.this;
            if (webResourceResponse == null || webResourceResponse.getStatusCode() != 410) {
                loadErrorType = WebViewPreloadHelper.LoadErrorType.RESPONSE_ERROR;
            } else {
                TrendingActivity trendingActivity2 = TrendingActivity.this;
                loadErrorType = WebViewPreloadHelper.LoadErrorType.DATA_NOT_AVAILABLE;
                trendingActivity2.loadError = loadErrorType;
            }
            trendingActivity.loadError = loadErrorType;
            TrendingActivity.this.handleOpenFinished();
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            TrendingActivity.this.loadError = WebViewPreloadHelper.LoadErrorType.SSL_ERROR;
            TrendingActivity.this.handleOpenFinished();
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            TrendingActivity.this.loadError = WebViewPreloadHelper.LoadErrorType.RENDER_PROC_ERROR;
            TrendingActivity.this.handleOpenFinished();
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            webView.loadUrl(webResourceRequest.getUrl().toString(), TrendingActivity.this.getCustomHeaders());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str, TrendingActivity.this.getCustomHeaders());
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
            AnalyticsManager.getInstance().sendTrendingPageOpenSuccess(SystemClock.elapsedRealtime() - this.mRequestStartTime);
            return;
        }
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        WebViewPreloadHelper.LoadErrorType loadErrorType = this.loadError;
        analyticsManager.sendTrendingPageOpenError(loadErrorType != null ? loadErrorType.name() : "");
    }

    public static void openTrending(AppCompatActivity appCompatActivity, View view, String str, boolean z) {
        mUrl = str;
        mCached = z;
        UiHelper.openMainFeatureActivity(appCompatActivity, view, TrendingActivity.class, UiHelper.PageType.TRENDING, false);
    }

    private void setupWebView() {
        this.loadError = null;
        this.mRequestStartTime = SystemClock.elapsedRealtime();
        LollipopFixedWebView lollipopFixedWebView = (LollipopFixedWebView) findViewById(C2083R.C2086id.trending_webview);
        this.webView = lollipopFixedWebView;
        lollipopFixedWebView.setWebViewClient(this.webViewClient);
        this.webView.getSettings().setCacheMode(mCached ? 3 : -1);
        if (Build.VERSION.SDK_INT >= 23) {
            this.webView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.telguarder.features.phoneNumberTrending.TrendingActivity.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    TrendingActivity.this.mToolbar.setElevation(view.canScrollVertically(-1) ? 15.0f : 0.0f);
                }
            });
        }
        this.webView.getSettings().setJavaScriptEnabled(true);
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
        setContentView(C2083R.layout.activity_trending);
        View findViewById = findViewById(C2083R.C2086id.trending_root_layout);
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, null, findViewById(C2083R.C2086id.bottom_view_to_blur), false);
        UiHelper.setCircularActivityTransition(this, bundle, findViewById);
        Toolbar toolbar = (Toolbar) findViewById(C2083R.C2086id.trending_toolbar);
        this.mToolbar = toolbar;
        UiHelper.initToolbar(this, toolbar, C2083R.string.trending);
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
