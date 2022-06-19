package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.o */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o.class */
final class CallableC0652o implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ SkuDetails f3223a;

    /* renamed from: b */
    final /* synthetic */ String f3224b;

    /* renamed from: c */
    final /* synthetic */ d f3225c;

    CallableC0652o(d dVar, SkuDetails skuDetails, String str) {
        this.f3225c = dVar;
        this.f3223a = skuDetails;
        this.f3224b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() {
        return d.n(this.f3225c).b2(3, d.m(this.f3225c).getPackageName(), this.f3223a.m11540c(), this.f3224b, (String) null);
    }
}
