package net.pubnative.lite.sdk.consent;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/UserConsentActivity.class */
public class UserConsentActivity extends Activity {
    private static final String REDIRECT_ACCEPT = "https://cdn.pubnative.net/static/consent/GDPR-consent-dialog-accept.html";
    private static final String REDIRECT_CLOSE = "https://pubnative.net/";
    private static final String REDIRECT_REJECT = "https://cdn.pubnative.net/static/consent/GDPR-consent-dialog-reject.html";
    public static final int RESULT_CONSENT_ACCEPTED = 200;
    public static final int RESULT_CONSENT_REJECTED = 201;
    private static final String TAG = "UserConsentActivity";
    private final WebViewClient webViewClient = new WebViewClient() { // from class: net.pubnative.lite.sdk.consent.UserConsentActivity.1
        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            UserConsentActivity.this.hideLoadProgress();
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            UserConsentActivity.this.showLoadProgress();
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -215057637:
                    if (str.equals(UserConsentActivity.REDIRECT_CLOSE)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 959081779:
                    if (str.equals(UserConsentActivity.REDIRECT_ACCEPT)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1662727420:
                    if (str.equals(UserConsentActivity.REDIRECT_REJECT)) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    UserConsentActivity.this.finish();
                    return false;
                case 1:
                    HyBid.getUserDataManager().grantConsent();
                    UserConsentActivity.this.setResult(200);
                    return false;
                case 2:
                    HyBid.getUserDataManager().denyConsent();
                    UserConsentActivity.this.setResult(201);
                    return false;
                default:
                    return super.shouldOverrideUrlLoading(webView, str);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void hideLoadProgress() {
    }

    private void loadConsentPage(WebView webView) {
        String consentPageLink = HyBid.getUserDataManager().getConsentPageLink();
        if (TextUtils.isEmpty(consentPageLink)) {
            Logger.e(TAG, "Invalid consent page URL");
        } else {
            webView.loadUrl(consentPageLink);
        }
    }

    private void setupWebView(WebView webView) {
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setAppCachePath(getCacheDir().getAbsolutePath());
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setLoadWithOverviewMode(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        webView.setWebViewClient(this.webViewClient);
        setContentView(webView, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLoadProgress() {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebView webView = new WebView(this);
        setupWebView(webView);
        loadConsentPage(webView);
    }
}
