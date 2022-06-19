package com.android.billingclient.api;

import com.android.billingclient.api.C3344i;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.p */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/p.class */
final class CallableC3353p implements Callable<C3344i.C3345a> {

    /* renamed from: a */
    final /* synthetic */ String f12627a;

    /* renamed from: b */
    final /* synthetic */ C3337d f12628b;

    public CallableC3353p(C3337d c3337d, String str) {
        this.f12628b = c3337d;
        this.f12627a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ C3344i.C3345a call() throws Exception {
        return C3337d.m38201a(this.f12628b, this.f12627a);
    }
}
