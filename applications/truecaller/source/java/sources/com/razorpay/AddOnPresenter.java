package com.razorpay;

import android.webkit.WebView;
/* loaded from: classes3-dex2jar.jar:com/razorpay/AddOnPresenter.class */
public interface AddOnPresenter {
    void onPageFinished(int i, WebView webView, String str);

    void onPageStarted(int i, WebView webView, String str);

    void onProgressChanges(int i, int i2);
}
