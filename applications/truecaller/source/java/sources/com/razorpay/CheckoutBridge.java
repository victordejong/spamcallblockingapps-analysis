package com.razorpay;

import android.webkit.JavascriptInterface;
import com.razorpay.H;
import com.razorpay.I;
import com.razorpay.J;
import com.razorpay.J$;
import com.razorpay.L$;
import com.razorpay.Q$;
import com.razorpay.S;
import com.razorpay.t_;
import com.razorpay.y;
/* loaded from: classes3-dex2jar.jar:com/razorpay/CheckoutBridge.class */
public class CheckoutBridge {
    private String integratedPlugin;
    public CheckoutInteractor interactor;
    private boolean isRegistered = true;
    private int webViewType;

    /* loaded from: classes3-dex2jar.jar:com/razorpay/CheckoutBridge$WebViewSafeCheckCallback.class */
    public interface WebViewSafeCheckCallback {
        void secure();

        void unSecure();
    }

    public CheckoutBridge(CheckoutInteractor checkoutInteractor, int i) {
        this.interactor = checkoutInteractor;
        this.webViewType = i;
    }

    @JavascriptInterface
    public final void callNativeIntent(String str) {
        isWebViewSafeOnUI(new U$_z$(this, str));
    }

    @JavascriptInterface
    public final void callNativeIntent(String str, String str2) {
        isWebViewSafeOnUI(new I._n_(this, str, str2));
    }

    @JavascriptInterface
    public final String getSdkPlugins() {
        isWebViewSafe(new H._a_(this));
        return this.integratedPlugin;
    }

    @JavascriptInterface
    public void invokePopup(String str) {
        this.interactor.invokePopup(str);
        isWebViewSafeOnUI(new Y_$B$(this, str));
    }

    @JavascriptInterface
    public final boolean isUserRegistered(String str) {
        isWebViewSafe(new r_$Z$(this, str));
        return this.isRegistered;
    }

    @JavascriptInterface
    public final boolean isUserRegisteredOnUPI(String str) {
        isWebViewSafe(new I._e_(this, str));
        return this.isRegistered;
    }

    public void isWebViewSafe(WebViewSafeCheckCallback webViewSafeCheckCallback) {
        this.interactor.isWebViewSafe(this.webViewType, webViewSafeCheckCallback);
    }

    public void isWebViewSafeOnUI(WebViewSafeCheckCallback webViewSafeCheckCallback) {
        this.interactor.isWebViewSafeOnUI(this.webViewType, webViewSafeCheckCallback);
    }

    @JavascriptInterface
    public void onCheckoutBackPress() {
        this.interactor.onCheckoutBackPress();
        isWebViewSafeOnUI(new Q__v$(this));
    }

    @JavascriptInterface
    public final void onCheckoutRendered() {
        isWebViewSafe(new C__D$(this));
    }

    @JavascriptInterface
    public final void oncomplete(String str) {
        isWebViewSafeOnUI(new h__y_(this, str));
    }

    @JavascriptInterface
    public final void ondismiss() {
        isWebViewSafeOnUI(new B_$q$(this));
    }

    @JavascriptInterface
    public final void ondismiss(String str) {
        isWebViewSafeOnUI(new J$.A_(this, str));
    }

    @JavascriptInterface
    public final void onerror(String str) {
        isWebViewSafeOnUI(new Q$.U_(this, str));
    }

    @JavascriptInterface
    public final void onfault(String str) {
        isWebViewSafeOnUI(new O__Y_(this, str));
    }

    @JavascriptInterface
    public final void onload() {
        isWebViewSafeOnUI(new l__d$(this));
    }

    @JavascriptInterface
    public final void onsubmit(String str) {
        isWebViewSafeOnUI(new J._0_(this, str));
    }

    @JavascriptInterface
    public final void relay(String str) {
        isWebViewSafeOnUI(new b_$A$(this, str));
    }

    @JavascriptInterface
    public final void requestExtraAnalyticsData() {
        isWebViewSafeOnUI(new T__j$(this));
    }

    @JavascriptInterface
    public final void setAppToken(String str) {
        this.interactor.setAppToken(str);
        isWebViewSafeOnUI(new t_.J_(this, str));
    }

    @JavascriptInterface
    public final void setDeviceToken(String str) {
        isWebViewSafeOnUI(new y._O_(this, str));
    }

    @JavascriptInterface
    public final void setDimensions(int i, int i2) {
        isWebViewSafeOnUI(new K$$z$(this, i, i2));
    }

    @JavascriptInterface
    public final void setMerchantOptions(String str) {
        isWebViewSafeOnUI(new S._U_(this, str));
    }

    @JavascriptInterface
    public final void setPaymentID(String str) {
        isWebViewSafeOnUI(new N$$J$(this, str));
    }

    @JavascriptInterface
    public final void showAlertDialog(String str, String str2, String str3) {
        isWebViewSafeOnUI(new B$$J$(this, str, str2, str3));
    }

    @JavascriptInterface
    public final void toast(String str, int i) {
        isWebViewSafeOnUI(new L$.C_(this, str, i));
    }
}
