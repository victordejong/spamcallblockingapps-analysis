package com.revenuecat.purchases.interfaces;

import com.android.billingclient.api.SkuDetails;
import com.revenuecat.purchases.PurchasesError;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/interfaces/GetSkusResponseListener.class */
public interface GetSkusResponseListener {
    void onError(PurchasesError purchasesError);

    void onReceived(List<SkuDetails> list);
}
