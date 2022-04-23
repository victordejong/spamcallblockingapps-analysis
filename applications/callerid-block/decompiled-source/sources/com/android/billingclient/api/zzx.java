package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.api.C0633g;
import e.c.a.a.a.e.a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/zzx.class */
final class zzx extends ResultReceiver {

    /* renamed from: b */
    final /* synthetic */ AbstractC0641j f3287b;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C0633g.C0634a c = C0633g.m11487c();
        c.m11482c(i);
        c.m11483b(a.e(bundle, "BillingClient"));
        this.f3287b.m11470a(c.m11484a());
    }
}
