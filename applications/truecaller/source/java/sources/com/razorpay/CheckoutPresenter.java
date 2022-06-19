package com.razorpay;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/razorpay/CheckoutPresenter.class */
public interface CheckoutPresenter {
    void backPressed(Map<String, Object> map);

    void cleanUpOnDestroy();

    void destroyActivity(int i, String str);

    void fetchCondfig();

    x_$Q_ getCheckoutOptions();

    String getProgressBarColor();

    void handleCardSaving();

    boolean isAllowRotation();

    boolean isMagicPresent();

    void loadForm(String str);

    void onActivityResultReceived(int i, int i2, Intent intent);

    void onPageFinished(int i, WebView webView, String str);

    void onPageStarted(int i, WebView webView, String str);

    void onProgressChanges(int i, int i2);

    void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);

    void passPrefillToSegment();

    void saveInstanceState(Bundle bundle);

    void sendOtpPermissionCallback(boolean z);

    void setCheckoutLoadStartAt();

    boolean setOptions(Bundle bundle, boolean z);

    void setUpAddOn();

    void verifyGPaySdkResponse(String str);
}
