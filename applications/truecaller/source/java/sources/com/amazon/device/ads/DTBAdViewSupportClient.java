package com.amazon.device.ads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.util.Locale;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdViewSupportClient.class */
public class DTBAdViewSupportClient extends WebViewClient {
    public static final String AMAZON_APP_STORE_LINK = "https://www.amazon.com/gp/mas/dl/android?";
    public static final String AMAZON_SCHEME = "amzn";
    public static final String GOOGLE_PLAY_STORE_LINK = "https://play.google.com/store/apps/";
    public static final String LOG_TAG = DTBAdViewSupportClient.class.getSimpleName();
    public static final String MARKET_SCHEME = "market";
    public static final String MOBILE_SHOPPING_SCHEME = "com.amazon.mobile.shopping";
    public static final String MOBILE_SHOPPING_WEB_SCHEME = "com.amazon.mobile.shopping.web";
    public Context context;
    public DTBAdMRAIDController controller;

    public DTBAdViewSupportClient(Context context, DTBAdMRAIDController dTBAdMRAIDController) {
        this.context = context;
        this.controller = dTBAdMRAIDController;
    }

    private WebResourceResponse createImageInjectionResponse(String str) {
        try {
            return new WebResourceResponse(ContentFormat.IMAGE_PNG, StringConstant.UTF8, this.context.getAssets().open(str));
        } catch (IOException e) {
            String str2 = LOG_TAG;
            DtbLog.error(str2, "Failed to get injection response: " + str);
            return null;
        }
    }

    private WebResourceResponse createInjectionResponse(String str) {
        try {
            return new WebResourceResponse("text/javascript", StringConstant.UTF8, this.context.getAssets().open(str));
        } catch (IOException e) {
            String str2 = LOG_TAG;
            DtbLog.error(str2, "Failed to get injection response: " + str);
            return null;
        }
    }

    private boolean matchesLocalInjectionUrl(String str) {
        return "local".equals(Uri.parse(str.toLowerCase(Locale.US)).getScheme());
    }

    private boolean openUrl(String str) {
        Intent intent;
        Uri parse = Uri.parse(str);
        PackageManager packageManager = this.context.getPackageManager();
        try {
            try {
                if (MOBILE_SHOPPING_WEB_SCHEME.equals(parse.getScheme())) {
                    int indexOf = str.indexOf("//");
                    if (indexOf < 0) {
                        return false;
                    }
                    int i = indexOf + 2;
                    if (i >= str.length()) {
                        return false;
                    }
                    String substring = str.substring(i);
                    AdRegistration.getCurrentActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(DtbConstants.HTTPS + substring)));
                    this.controller.onAdLeftApplication();
                    return true;
                } else if (MOBILE_SHOPPING_SCHEME.equals(parse.getScheme())) {
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
                    AdRegistration.getCurrentActivity().startActivity(intent);
                    this.controller.onAdLeftApplication();
                    return true;
                } else {
                    if (!MARKET_SCHEME.equals(parse.getScheme()) && !AMAZON_SCHEME.equals(parse.getScheme())) {
                        Intent intent3 = new Intent("android.intent.action.VIEW");
                        intent3.setData(parse);
                        AdRegistration.getCurrentActivity().startActivity(intent3);
                        this.controller.onAdLeftApplication();
                        return true;
                    }
                    try {
                        Intent intent4 = new Intent("android.intent.action.VIEW");
                        intent4.setData(parse);
                        AdRegistration.getCurrentActivity().startActivity(intent4);
                        this.controller.onAdLeftApplication();
                        return true;
                    } catch (ActivityNotFoundException e) {
                        try {
                            DTBAdUtil.directAppStoreLinkToBrowser(this.controller, parse);
                            return true;
                        } catch (ActivityNotFoundException e2) {
                            DtbLog.debug(LOG_TAG, "App stores and browsers not found");
                            return false;
                        }
                    }
                }
            } catch (ActivityNotFoundException e3) {
                DtbLog.error(LOG_TAG, "Activity not found com.amazon.mobile.shopping");
                return false;
            }
        } catch (NullPointerException e4) {
            DtbLog.debug(LOG_TAG, "Current activity from AdRegistration not found");
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    @Deprecated
    public void onLoadResource(WebView webView, String str) {
        String str2 = LOG_TAG;
        DtbLog.debug(str2, "Load Resource:" + str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        try {
            String str2 = LOG_TAG;
            DtbLog.debug(str2, "Page finished:" + str);
            if (webView instanceof DTBAdView) {
                if (str.contains(DTBAdView.MRAID_IDENTIFIER)) {
                    this.controller.onPageLoad();
                } else if (str.equals("https://c.amazon-adsystem.com/")) {
                    this.controller.onPageLoad();
                }
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute onPageFinished method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute onPageFinished method", e);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        try {
            this.controller.onLoadError(webResourceError.getDescription().toString(), webResourceError.getErrorCode());
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute onReceivedError method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute onReceivedError method", e);
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        String str2 = LOG_TAG;
        DtbLog.debug(str2, "Should intercept Resource url: " + str);
        return matchesLocalInjectionUrl(str) ? createImageInjectionResponse(str.substring(str.lastIndexOf(47) + 1)) : super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            if (!this.controller.isTwoPartExpand()) {
                return openUrl(str);
            }
            return false;
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute shouldOverrideUrlLoading method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute shouldOverrideUrlLoading method", e);
            return false;
        }
    }
}
