package com.telguarder.helpers.web;

import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.log.Logger;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/web/WebViewPreloadHelper.class */
public class WebViewPreloadHelper {
    private static WebViewPreloadHelper mInstance;
    public PreloadWebViewCallback mPreloadWebViewCallback;
    private String mUrl;
    private boolean loadAlreadyHandled = false;
    public WebclientState state = WebclientState.FINISHED;
    public LoadErrorType loadError = null;
    private long mRequestStartTime = 0;
    private final WebViewClient mWebViewClient = new WebViewClient() { // from class: com.telguarder.helpers.web.WebViewPreloadHelper.1
        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            WebViewPreloadHelper.this.handleDownloadFinished(false);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            WebViewPreloadHelper.this.loadError = LoadErrorType.RESOURCE_ERROR;
            WebViewPreloadHelper.this.handleDownloadFinished(false);
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            LoadErrorType loadErrorType;
            if (Build.VERSION.SDK_INT < 21) {
                WebViewPreloadHelper.this.loadError = LoadErrorType.RESPONSE_ERROR;
                WebViewPreloadHelper.this.handleDownloadFinished(false);
            } else if (webResourceRequest != null && !webResourceRequest.getUrl().toString().contains("favicon.ico")) {
                WebViewPreloadHelper webViewPreloadHelper = WebViewPreloadHelper.this;
                if (webResourceResponse == null || !(webResourceResponse.getStatusCode() == 410 || webResourceResponse.getStatusCode() == 404)) {
                    loadErrorType = LoadErrorType.RESPONSE_ERROR;
                } else {
                    WebViewPreloadHelper webViewPreloadHelper2 = WebViewPreloadHelper.this;
                    loadErrorType = LoadErrorType.DATA_NOT_AVAILABLE;
                    webViewPreloadHelper2.loadError = loadErrorType;
                }
                webViewPreloadHelper.loadError = loadErrorType;
                WebViewPreloadHelper.this.handleDownloadFinished(false);
            }
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebViewPreloadHelper.this.loadError = LoadErrorType.SSL_ERROR;
            WebViewPreloadHelper.this.handleDownloadFinished(false);
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            WebViewPreloadHelper.this.loadError = LoadErrorType.RENDER_PROC_ERROR;
            WebViewPreloadHelper.this.handleDownloadFinished(false);
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            webView.loadUrl(webResourceRequest.getUrl().toString(), WebViewPreloadHelper.this.getCustomHeaders(webView.getContext()));
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str, WebViewPreloadHelper.this.getCustomHeaders(webView.getContext()));
            return true;
        }
    };
    private Handler mHandler = new Handler();

    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType.class */
    public enum LoadErrorType {
        RESOURCE_ERROR,
        DATA_NOT_AVAILABLE,
        RESPONSE_ERROR,
        SSL_ERROR,
        RENDER_PROC_ERROR
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback.class */
    public interface PreloadWebViewCallback {
        void onDownloadFinished(LoadErrorType loadErrorType, boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/web/WebViewPreloadHelper$WebclientState.class */
    public enum WebclientState {
        LOADING,
        FINISHED
    }

    private WebViewPreloadHelper() {
    }

    public Map<String, String> getCustomHeaders(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("X-DeviceId", UID.uid(context));
        return hashMap;
    }

    public static WebViewPreloadHelper getInstance() {
        WebViewPreloadHelper webViewPreloadHelper;
        synchronized (WebViewPreloadHelper.class) {
            try {
                if (mInstance == null) {
                    mInstance = new WebViewPreloadHelper();
                }
                webViewPreloadHelper = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return webViewPreloadHelper;
    }

    private Uri.Builder getUriBuilder(Context context, String str) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("mcc", CountryManager.getInstance().getMCC(context));
        buildUpon.appendQueryParameter(POBConstants.KEY_LANGUAGE, CountryManager.getInstance().getDeviceLanguage());
        return buildUpon;
    }

    public void handleDownloadFinished(boolean z) {
        if (!this.loadAlreadyHandled && this.mPreloadWebViewCallback != null) {
            if (this.loadError != null) {
                trackError();
            } else {
                trackSuccess();
            }
            this.loadAlreadyHandled = true;
            this.mPreloadWebViewCallback.onDownloadFinished(this.loadError, z);
        }
        this.state = WebclientState.FINISHED;
    }

    private void trackError() {
        if (TextUtils.isEmpty(this.mUrl)) {
            return;
        }
        LoadErrorType loadErrorType = this.loadError;
        String name = loadErrorType != null ? loadErrorType.name() : "";
        if (this.mUrl.contains(BackendApi.WEB_SPAMINFO)) {
            AnalyticsManager.getInstance().sendAnalysePagePreloadError(name);
        } else if (!this.mUrl.contains(BackendApi.WEB_TRENDING)) {
        } else {
            AnalyticsManager.getInstance().sendTrendingPagePreloadError(name);
        }
    }

    private void trackSuccess() {
        if (TextUtils.isEmpty(this.mUrl)) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.mRequestStartTime;
        if (this.mUrl.contains(BackendApi.WEB_SPAMINFO)) {
            AnalyticsManager.getInstance().sendAnalysePagePreloadSuccess(elapsedRealtime);
        } else if (!this.mUrl.contains(BackendApi.WEB_TRENDING)) {
        } else {
            AnalyticsManager.getInstance().sendTrendingPagePreloadSuccess(elapsedRealtime);
        }
    }

    public String getAnalyzeUrl(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Uri.Builder uriBuilder = getUriBuilder(context, BackendApi.WEB_SPAMINFO);
        uriBuilder.appendQueryParameter("number", ContactUtils.getE164NUmberIfPossible(context, str, null));
        String uri = uriBuilder.build().toString();
        Logger.debug("getAnalyzeUrl: " + uri);
        return uri;
    }

    public String getTrendingUrl(Context context) {
        String uri = getUriBuilder(context, BackendApi.WEB_TRENDING).build().toString();
        Logger.debug("getTrendingUrl: " + uri);
        return uri;
    }

    public void preloadWebView(final Context context, String str, PreloadWebViewCallback preloadWebViewCallback) {
        if (this.state != WebclientState.LOADING || !str.equals(this.mUrl)) {
            this.mHandler.removeCallbacksAndMessages(null);
            this.state = WebclientState.LOADING;
            this.mUrl = str;
            this.mRequestStartTime = SystemClock.elapsedRealtime();
            this.loadError = null;
            this.loadAlreadyHandled = false;
            this.mPreloadWebViewCallback = preloadWebViewCallback;
            this.mHandler.post(new Runnable() { // from class: com.telguarder.helpers.web.WebViewPreloadHelper.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LollipopFixedWebView lollipopFixedWebView = new LollipopFixedWebView(context);
                        lollipopFixedWebView.setWebViewClient(WebViewPreloadHelper.this.mWebViewClient);
                        lollipopFixedWebView.getSettings().setCacheMode(-1);
                        lollipopFixedWebView.getSettings().setJavaScriptEnabled(true);
                        lollipopFixedWebView.loadUrl(WebViewPreloadHelper.this.mUrl, WebViewPreloadHelper.this.getCustomHeaders(context));
                    } catch (Exception e) {
                    }
                }
            });
            this.mHandler.postDelayed(new Runnable() { // from class: com.telguarder.helpers.web.WebViewPreloadHelper.3
                @Override // java.lang.Runnable
                public void run() {
                    WebViewPreloadHelper.this.handleDownloadFinished(false);
                }
            }, 4000L);
        }
    }
}
