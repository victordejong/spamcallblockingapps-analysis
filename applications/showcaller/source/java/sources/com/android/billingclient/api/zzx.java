package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.api.C3905g;
import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/zzx.class */
final class zzx extends ResultReceiver {

    /* renamed from: d */
    final /* synthetic */ AbstractC3913j f12412d;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C3905g.C3906a m23778c = C3905g.m23778c();
        m23778c.m23773c(i);
        m23778c.m23774b(C1870a.m28776e(bundle, "BillingClient"));
        this.f12412d.m23761a(m23778c.m23775a());
    }
}
