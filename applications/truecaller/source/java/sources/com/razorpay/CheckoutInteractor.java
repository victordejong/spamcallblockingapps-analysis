package com.razorpay;

import com.razorpay.CheckoutBridge;
/* loaded from: classes3-dex2jar.jar:com/razorpay/CheckoutInteractor.class */
public interface CheckoutInteractor {
    void callNativeIntent(String str, String str2);

    void checkSmsPermission();

    String getSdkPlugins();

    void invokePopup(String str);

    boolean isUserRegistered(String str);

    boolean isUserRegisteredOnUPI(String str);

    void isWebViewSafe(int i, CheckoutBridge.WebViewSafeCheckCallback webViewSafeCheckCallback);

    void isWebViewSafeOnUI(int i, CheckoutBridge.WebViewSafeCheckCallback webViewSafeCheckCallback);

    void onCheckoutBackPress();

    void onCheckoutRendered();

    void onComplete(String str);

    void onDismiss();

    void onDismiss(String str);

    void onError(String str);

    void onFault(String str);

    void onLoad();

    void onSubmit(String str);

    void relay(String str);

    void requestExtraAnalyticsData();

    void requestOtpPermission();

    void sendDataToWebView(int i, String str);

    void setAppToken(String str);

    void setDeviceToken(String str);

    void setDimensions(int i, int i2);

    void setMerchantOptions(String str);

    void setPaymentID(String str);

    void showAlertDialog(String str, String str2, String str3);

    void toast(String str, int i);
}
