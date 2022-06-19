package com.android.vending.billing;

import android.os.Bundle;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/android/vending/billing/IInAppBillingService.class */
public interface IInAppBillingService extends IInterface {
    int consumePurchase(int i, String str, String str2);

    Bundle getBuyIntent(int i, String str, String str2, String str3, String str4);

    Bundle getPurchases(int i, String str, String str2, String str3);

    Bundle getSkuDetails(int i, String str, String str2, Bundle bundle);

    int isBillingSupported(int i, String str, String str2);
}
