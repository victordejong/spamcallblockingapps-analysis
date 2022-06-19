package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.h0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h0.class */
public final class C3910h0 extends BroadcastReceiver {

    /* renamed from: a */
    private final AbstractC3915k f12324a;

    /* renamed from: b */
    private boolean f12325b;

    /* renamed from: c */
    final /* synthetic */ C3912i0 f12326c;

    public /* synthetic */ C3910h0(C3912i0 c3912i0, AbstractC3915k abstractC3915k, C3907g0 c3907g0) {
        this.f12326c = c3912i0;
        this.f12324a = abstractC3915k;
    }

    /* renamed from: a */
    public final void m23767a(Context context, IntentFilter intentFilter) {
        C3910h0 c3910h0;
        if (!this.f12325b) {
            c3910h0 = this.f12326c.f12328b;
            context.registerReceiver(c3910h0, intentFilter);
            this.f12325b = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f12324a.mo23760a(C1870a.m28778c(intent, "BillingBroadcastManager"), C1870a.m28775f(intent.getExtras()));
    }
}
