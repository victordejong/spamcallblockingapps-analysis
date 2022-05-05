package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import p081h.p093b.p094a.p095a.AbstractC5545f;
import p081h.p093b.p094a.p095a.C5542e;
import p081h.p203i.p204a.p224e.p259j.p278s.C8805a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/zzs.class */
public final class zzs extends ResultReceiver {

    /* renamed from: a */
    public final /* synthetic */ AbstractC5545f f822a;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C5542e.C5543a c = C5542e.m25167c();
        c.m25165a(i);
        c.m25164a(C8805a.m16911b(bundle, "BillingClient"));
        this.f822a.m25163a(c.m25166a());
    }
}
