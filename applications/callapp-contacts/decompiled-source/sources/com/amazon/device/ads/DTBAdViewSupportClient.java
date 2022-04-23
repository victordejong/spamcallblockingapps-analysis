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

    /* renamed from: a  reason: collision with root package name */
    static final String f6425a = "DTBAdViewSupportClient";

    /* renamed from: b  reason: collision with root package name */
    Context f6426b;

    /* renamed from: c  reason: collision with root package name */
    DTBAdMRAIDController f6427c;

    public DTBAdViewSupportClient(Context context, DTBAdMRAIDController dTBAdMRAIDController) {
        this.f6426b = context;
        this.f6427c = dTBAdMRAIDController;
    }

    private WebResourceResponse a(String str) {
        try {
            return new WebResourceResponse("image/png", "UTF-8", this.f6426b.getAssets().open(str));
        } catch (IOException e) {
            DtbLog.d(f6425a, "Failed to get injection response: ".concat(String.valueOf(str)));
            return null;
        }
    }

    private boolean b(String str) {
        Intent intent;
        int i;
        Uri parse = Uri.parse(str);
        PackageManager packageManager = this.f6426b.getPackageManager();
        if ("com.amazon.mobile.shopping.web".equals(parse.getScheme())) {
            int indexOf = str.indexOf("//");
            if (indexOf >= 0 && (i = indexOf + 2) < str.length()) {
                AdRegistration.a().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://".concat(String.valueOf(str.substring(i))))));
                this.f6427c.j();
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
                AdRegistration.a().startActivity(intent);
                this.f6427c.j();
                return true;
            }
            if (!"market".equals(parse.getScheme()) && !"amzn".equals(parse.getScheme())) {
                Intent intent3 = new Intent("android.intent.action.VIEW");
                intent3.setData(parse);
                AdRegistration.a().startActivity(intent3);
                this.f6427c.j();
                return true;
            }
            try {
                Intent intent4 = new Intent("android.intent.action.VIEW");
                intent4.setData(parse);
                AdRegistration.a().startActivity(intent4);
                this.f6427c.j();
                return true;
            } catch (ActivityNotFoundException e) {
                try {
                    DTBAdUtil.a(this.f6427c, parse);
                    return true;
                } catch (ActivityNotFoundException e2) {
                    DtbLog.c(f6425a, "App stores and browsers not found");
                    return false;
                }
            }
        } catch (ActivityNotFoundException e3) {
            DtbLog.d(f6425a, "Activity not found com.amazon.mobile.shopping");
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        DtbLog.c(f6425a, "Load Resource:".concat(String.valueOf(str)));
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        DtbLog.c(f6425a, "Page finished:".concat(String.valueOf(str)));
        if (!(webView instanceof DTBAdView)) {
            return;
        }
        if (str.contains("MRAID_ENV")) {
            this.f6427c.c();
        } else if (str.equals("https://c.amazon-adsystem.com/")) {
            this.f6427c.c();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (Build.VERSION.SDK_INT >= 23) {
            DTBAdMRAIDController dTBAdMRAIDController = this.f6427c;
            webResourceError.getDescription().toString();
            webResourceError.getErrorCode();
            dTBAdMRAIDController.l();
            return;
        }
        this.f6427c.m();
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        DtbLog.c(f6425a, "Should intercept Resource url: ".concat(String.valueOf(str)));
        return "local".equals(Uri.parse(str.toLowerCase(Locale.US)).getScheme()) ? a(str.substring(str.lastIndexOf(47) + 1)) : super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.f6427c.h) {
            return false;
        }
        return b(str);
    }
}
