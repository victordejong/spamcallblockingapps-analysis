package com.android.billingclient.api;

import com.android.billingclient.api.Purchase;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.p */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/p.class */
final class CallableC3926p implements Callable<Purchase.C3889a> {

    /* renamed from: a */
    final /* synthetic */ String f12347a;

    /* renamed from: b */
    final /* synthetic */ C3898d f12348b;

    public CallableC3926p(C3898d c3898d, String str) {
        this.f12348b = c3898d;
        this.f12347a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Purchase.C3889a call() {
        return C3898d.m23816o(this.f12348b, this.f12347a);
    }
}
