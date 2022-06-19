package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
/* renamed from: com.android.billingclient.api.i0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i0.class */
public final class C0640i0 {

    /* renamed from: a */
    private final Context f3209a;

    /* renamed from: b */
    private final C0638h0 f3210b;

    C0640i0(Context context, AbstractC0643k abstractC0643k) {
        this.f3209a = context;
        this.f3210b = new C0638h0(this, abstractC0643k, null);
    }

    /* renamed from: a */
    final void m11473a() {
        this.f3210b.m11476a(this.f3209a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }

    /* renamed from: b */
    final AbstractC0643k m11472b() {
        AbstractC0643k abstractC0643k;
        abstractC0643k = this.f3210b.f3206a;
        return abstractC0643k;
    }
}
