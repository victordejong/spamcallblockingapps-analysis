package com.amazon.device.ads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.IOException;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdViewSupportClient.class */
public class DTBAdViewSupportClient extends WebViewClient {

    /* renamed from: a */
    static final String f11802a = "DTBAdViewSupportClient";

    /* renamed from: b */
    Context f11803b;

    /* renamed from: c */
    DTBAdMRAIDController f11804c;

    public DTBAdViewSupportClient(Context context, DTBAdMRAIDController dTBAdMRAIDController) {
        this.f11803b = context;
        this.f11804c = dTBAdMRAIDController;
    }

    /* renamed from: a */
    private WebResourceResponse m38938a(String str) {
        try {
            return new WebResourceResponse("image/png", "UTF-8", this.f11803b.getAssets().open(str));
        } catch (IOException e) {
            DtbLog.m38818d(f11802a, "Failed to get injection response: ".concat(String.valueOf(str)));
            return null;
        }
    }

    /* renamed from: b */
    private boolean m38937b(String str) {
        Intent intent;
        int i;
        Uri parse = Uri.parse(str);
        PackageManager packageManager = this.f11803b.getPackageManager();
        if ("com.amazon.mobile.shopping.web".equals(parse.getScheme())) {
            int indexOf = str.indexOf("//");
            if (indexOf >= 0 && (i = indexOf + 2) < str.length()) {
                AdRegistration.m39078a().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://".concat(String.valueOf(str.substring(i))))));
                this.f11804c.mo38989j();
                return true;
            }
        }
        try {
            if ("com.amazon.mobile.shopping".equals(parse.getScheme())) {
                if (packageManager.getLaunchIntentForPackage("com.amazon.mShop.android.shopping") != null) {
                    intent = new Intent("android.intent.action.VIEW");
                    intent.setData(parse);
                } else {
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.setData(parse);
                    int indexOf2 = str.indexOf("products/");
                    if (indexOf2 > 0) {
                        intent2.setData(Uri.parse("https://www.amazon.com/dp/" + str.substring(indexOf2 + 9)));
                    }
                    intent = intent2;
                }
                AdRegistration.m39078a().startActivity(intent);
                this.f11804c.mo38989j();
                return true;
            }
            if (!"market".equals(parse.getScheme()) && !"amzn".equals(parse.getScheme())) {
                Intent intent3 = new Intent("android.intent.action.VIEW");
                intent3.setData(parse);
                AdRegistration.m39078a().startActivity(intent3);
                this.f11804c.mo38989j();
                return true;
            }
            try {
                Intent intent4 = new Intent("android.intent.action.VIEW");
                intent4.setData(parse);
                AdRegistration.m39078a().startActivity(intent4);
                this.f11804c.mo38989j();
                return true;
            } catch (ActivityNotFoundException e) {
                try {
                    DTBAdUtil.m38959a(this.f11804c, parse);
                    return true;
                } catch (ActivityNotFoundException e2) {
                    DtbLog.m38820c(f11802a, "App stores and browsers not found");
                    return false;
                }
            }
        } catch (ActivityNotFoundException e3) {
            DtbLog.m38818d(f11802a, "Activity not found com.amazon.mobile.shopping");
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        DtbLog.m38820c(f11802a, "Load Resource:".concat(String.valueOf(str)));
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        DtbLog.m38820c(f11802a, "Page finished:".concat(String.valueOf(str)));
        if (webView instanceof DTBAdView) {
            if (str.contains("MRAID_ENV")) {
                this.f11804c.mo38995c();
            } else if (!str.equals("https://c.amazon-adsystem.com/")) {
            } else {
                this.f11804c.mo38995c();
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (Build.VERSION.SDK_INT < 23) {
            this.f11804c.m39013m();
            return;
        }
        DTBAdMRAIDController dTBAdMRAIDController = this.f11804c;
        webResourceError.getDescription().toString();
        webResourceError.getErrorCode();
        dTBAdMRAIDController.m39014l();
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        DtbLog.m38820c(f11802a, "Should intercept Resource url: ".concat(String.valueOf(str)));
        return "local".equals(Uri.parse(str.toLowerCase(Locale.US)).getScheme()) ? m38938a(str.substring(str.lastIndexOf(47) + 1)) : super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.f11804c.f11722h) {
            return false;
        }
        return m38937b(str);
    }
}
