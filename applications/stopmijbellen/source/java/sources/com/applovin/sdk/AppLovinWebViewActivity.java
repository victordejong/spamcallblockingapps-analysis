package com.applovin.sdk;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinWebViewActivity.class */
public class AppLovinWebViewActivity extends Activity {
    public static final String EVENT_DISMISSED_VIA_BACK_BUTTON = "dismissed_via_back_button";
    public static final String INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON = "immersive_mode_on";
    public static final String INTENT_EXTRA_KEY_SDK_KEY = "sdk_key";

    /* renamed from: a */
    private String f5861a;

    /* renamed from: b */
    private WebView f5862b;

    /* renamed from: c */
    private EventListener f5863c;

    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinWebViewActivity$EventListener.class */
    public interface EventListener {
        void onReceivedEvent(String str);
    }

    public void loadUrl(String str, EventListener eventListener) {
        this.f5863c = eventListener;
        WebView webView = this.f5862b;
        if (webView == null) {
            this.f5861a = str;
        } else {
            webView.loadUrl(str);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        EventListener eventListener = this.f5863c;
        if (eventListener != null) {
            eventListener.onReceivedEvent(EVENT_DISMISSED_VIA_BACK_BUTTON);
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra(INTENT_EXTRA_KEY_SDK_KEY);
        if (TextUtils.isEmpty(stringExtra)) {
            C1479t.m5107i("AppLovinWebViewActivity", "No SDK key specified");
        } else {
            final C1408l c1408l = AppLovinSdk.getInstance(stringExtra, new AppLovinSdkSettings(getApplicationContext()), getApplicationContext()).coreSdk;
            try {
                WebView webView = new WebView(this);
                this.f5862b = webView;
                setContentView(webView);
                WebSettings settings = this.f5862b.getSettings();
                settings.setSupportMultipleWindows(false);
                settings.setJavaScriptEnabled(true);
                this.f5862b.setVerticalScrollBarEnabled(true);
                this.f5862b.setHorizontalScrollBarEnabled(true);
                this.f5862b.setScrollBarStyle(33554432);
                this.f5862b.setWebViewClient(new WebViewClient() { // from class: com.applovin.sdk.AppLovinWebViewActivity.1
                    @Override // android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                        Uri parse = Uri.parse(str);
                        String scheme = parse.getScheme();
                        String host = parse.getHost();
                        String path = parse.getPath();
                        C1479t m5542A = c1408l.m5542A();
                        m5542A.m5116b("AppLovinWebViewActivity", "Handling url load: " + str);
                        if (!"applovin".equalsIgnoreCase(scheme) || !AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equalsIgnoreCase(host) || AppLovinWebViewActivity.this.f5863c == null) {
                            return super.shouldOverrideUrlLoading(webView2, str);
                        }
                        if (!path.endsWith("webview_event")) {
                            return true;
                        }
                        Set<String> queryParameterNames = parse.getQueryParameterNames();
                        String str2 = queryParameterNames.isEmpty() ? "" : (String) queryParameterNames.toArray()[0];
                        if (!StringUtils.isValidString(str2)) {
                            c1408l.m5542A().m5111e("AppLovinWebViewActivity", "Failed to parse WebView event parameter");
                            return true;
                        }
                        String queryParameter = parse.getQueryParameter(str2);
                        C1479t m5542A2 = c1408l.m5542A();
                        m5542A2.m5116b("AppLovinWebViewActivity", "Parsed WebView event parameter name: " + str2 + " and value: " + queryParameter);
                        AppLovinWebViewActivity.this.f5863c.onReceivedEvent(queryParameter);
                        return true;
                    }
                });
                if (getIntent().getBooleanExtra(INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, false)) {
                    getWindow().getDecorView().setSystemUiVisibility(5894);
                }
                if (!StringUtils.isValidString(this.f5861a)) {
                    return;
                }
                this.f5862b.loadUrl(this.f5861a);
                return;
            } catch (Throwable th) {
                c1408l.m5542A().m5115b("AppLovinWebViewActivity", "Failed to initialize WebView.", th);
            }
        }
        finish();
    }
}
