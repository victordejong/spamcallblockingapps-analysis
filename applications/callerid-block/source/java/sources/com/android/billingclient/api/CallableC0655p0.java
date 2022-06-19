package com.android.billingclient.api;

import android.os.Bundle;
import e.c.a.a.a.e.a;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.p0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/p0.class */
public final class CallableC0655p0 implements Callable<Void> {

    /* renamed from: a */
    final /* synthetic */ C0619a f3231a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0622b f3232b;

    /* renamed from: c */
    final /* synthetic */ d f3233c;

    CallableC0655p0(d dVar, C0619a c0619a, AbstractC0622b abstractC0622b) {
        this.f3233c = dVar;
        this.f3231a = c0619a;
        this.f3232b = abstractC0622b;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() {
        try {
            Bundle q1 = d.n(this.f3233c).q1(9, d.m(this.f3233c).getPackageName(), this.f3231a.m11534a(), a.k(this.f3231a, d.r(this.f3233c)));
            d.p(this.f3233c, new RunnableC0653o0(this, a.d(q1, "BillingClient"), a.e(q1, "BillingClient")));
            return null;
        } catch (Exception e) {
            d.p(this.f3233c, new RunnableC0651n0(this, e));
            return null;
        }
    }
}
