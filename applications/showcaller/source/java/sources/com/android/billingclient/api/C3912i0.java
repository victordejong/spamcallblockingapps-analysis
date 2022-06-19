package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
/* renamed from: com.android.billingclient.api.i0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i0.class */
public final class C3912i0 {

    /* renamed from: a */
    private final Context f12327a;

    /* renamed from: b */
    private final C3910h0 f12328b;

    public C3912i0(Context context, AbstractC3915k abstractC3915k) {
        this.f12327a = context;
        this.f12328b = new C3910h0(this, abstractC3915k, null);
    }

    /* renamed from: a */
    public final void m23764a() {
        this.f12328b.m23767a(this.f12327a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }

    /* renamed from: b */
    public final AbstractC3915k m23763b() {
        AbstractC3915k abstractC3915k;
        abstractC3915k = this.f12328b.f12324a;
        return abstractC3915k;
    }
}
