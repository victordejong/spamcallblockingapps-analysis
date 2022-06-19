package com.razorpay;

import android.webkit.WebView;
/* loaded from: classes3-dex2jar.jar:com/razorpay/CheckoutPresenterImpl$CheckoutView.class */
public interface CheckoutPresenterImpl$CheckoutView {
    void addJavascriptInterfaceToPrimaryWebview(Object obj, String str);

    void checkSmsPermission();

    void clearWebViewHistory(int i);

    void destroy(int i, String str);

    WebView getWebView(int i);

    void hideProgressBar();

    boolean isWebViewVisible(int i);

    void loadData(int i, String str, String str2, String str3);

    void loadDataWithBaseURL(int i, String str, String str2, String str3, String str4, String str5);

    void loadUrl(int i, String str);

    void makeWebViewVisible(int i);

    void showProgressBar(int i);

    void showToast(String str, int i);
}
