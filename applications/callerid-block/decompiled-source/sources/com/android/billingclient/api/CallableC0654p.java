package com.android.billingclient.api;

import com.android.billingclient.api.Purchase;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.p */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/p.class */
final class CallableC0654p implements Callable<Purchase.C0618a> {

    /* renamed from: a */
    final /* synthetic */ String f3229a;

    /* renamed from: b */
    final /* synthetic */ d f3230b;

    CallableC0654p(d dVar, String str) {
        this.f3230b = dVar;
        this.f3229a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Purchase.C0618a call() {
        return d.o(this.f3230b, this.f3229a);
    }
}
