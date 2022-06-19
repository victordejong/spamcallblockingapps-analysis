package com.android.billingclient.api;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Callable;
import p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d;
import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.p0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/p0.class */
public final class CallableC3927p0 implements Callable<Void> {

    /* renamed from: a */
    final /* synthetic */ C3890a f12349a;

    /* renamed from: b */
    final /* synthetic */ AbstractC3893b f12350b;

    /* renamed from: c */
    final /* synthetic */ C3898d f12351c;

    public CallableC3927p0(C3898d c3898d, C3890a c3890a, AbstractC3893b abstractC3893b) {
        this.f12351c = c3898d;
        this.f12349a = c3890a;
        this.f12350b = abstractC3893b;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() {
        AbstractC1873d abstractC1873d;
        Context context;
        String str;
        try {
            abstractC1873d = this.f12351c.f12286g;
            context = this.f12351c.f12285f;
            String packageName = context.getPackageName();
            String m23853a = this.f12349a.m23853a();
            C3890a c3890a = this.f12349a;
            str = this.f12351c.f12281b;
            Bundle mo28765T0 = abstractC1873d.mo28765T0(9, packageName, m23853a, C1870a.m28770k(c3890a, str));
            this.f12351c.m23821j(new RunnableC3925o0(this, C1870a.m28777d(mo28765T0, "BillingClient"), C1870a.m28776e(mo28765T0, "BillingClient")));
            return null;
        } catch (Exception e) {
            this.f12351c.m23821j(new RunnableC3923n0(this, e));
            return null;
        }
    }
}
