package com.razorpay;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes3-dex2jar.jar:com/razorpay/SecondaryWebViewClient.class */
public class SecondaryWebViewClient extends WebViewClient {
    public CheckoutPresenter presenter;

    public SecondaryWebViewClient(CheckoutPresenter checkoutPresenter) {
        this.presenter = checkoutPresenter;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.presenter.onPageFinished(2, webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        webView.setTag(str);
        this.presenter.onPageStarted(2, webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        this.presenter.destroyActivity(2, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return false;
    }
}
