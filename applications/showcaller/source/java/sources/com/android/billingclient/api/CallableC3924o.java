package com.android.billingclient.api;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Callable;
import p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d;
/* renamed from: com.android.billingclient.api.o */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o.class */
final class CallableC3924o implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ SkuDetails f12341a;

    /* renamed from: b */
    final /* synthetic */ String f12342b;

    /* renamed from: c */
    final /* synthetic */ C3898d f12343c;

    public CallableC3924o(C3898d c3898d, SkuDetails skuDetails, String str) {
        this.f12343c = c3898d;
        this.f12341a = skuDetails;
        this.f12342b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() {
        AbstractC1873d abstractC1873d;
        Context context;
        abstractC1873d = this.f12343c.f12286g;
        context = this.f12343c.f12285f;
        return abstractC1873d.mo28759i1(3, context.getPackageName(), this.f12341a.m23859c(), this.f12342b, null);
    }
}
