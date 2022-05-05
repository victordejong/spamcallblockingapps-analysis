package com.revenuecat.purchases.common;

import com.android.billingclient.api.c;
import kotlin.r;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BillingWrapper$endConnection$1.class */
final class BillingWrapper$endConnection$1 implements Runnable {
    final /* synthetic */ BillingWrapper this$0;

    BillingWrapper$endConnection$1(BillingWrapper billingWrapper) {
        this.this$0 = billingWrapper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.this$0) {
            c billingClient = this.this$0.getBillingClient();
            if (billingClient != null) {
                LogUtilsKt.debugLog("Ending connection for " + billingClient);
                billingClient.c();
            }
            this.this$0.setBillingClient((c) null);
            r rVar = r.a;
        }
    }
}
