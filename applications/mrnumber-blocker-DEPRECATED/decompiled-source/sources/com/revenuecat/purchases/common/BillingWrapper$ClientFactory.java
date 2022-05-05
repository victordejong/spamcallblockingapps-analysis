package com.revenuecat.purchases.common;

import android.content.Context;
import com.android.billingclient.api.c;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/BillingWrapper$ClientFactory.class */
public final class BillingWrapper$ClientFactory {
    private final Context context;

    public BillingWrapper$ClientFactory(Context context) {
        k.f(context, "context");
        this.context = context;
    }

    public final c buildClient(com.android.billingclient.api.k kVar) {
        k.f(kVar, "listener");
        c.b g = c.g(this.context);
        g.b();
        g.c(kVar);
        c a = g.a();
        k.e(a, "BillingClient.newBuilder…\n                .build()");
        return a;
    }
}
