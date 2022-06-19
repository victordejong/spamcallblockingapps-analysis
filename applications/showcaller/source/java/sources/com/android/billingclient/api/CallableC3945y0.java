package com.android.billingclient.api;

import android.content.Context;
import android.os.Bundle;
import java.util.Arrays;
import java.util.concurrent.Callable;
import p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d;
/* renamed from: com.android.billingclient.api.y0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/y0.class */
final class CallableC3945y0 implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ C3902f f12409a;

    /* renamed from: b */
    final /* synthetic */ SkuDetails f12410b;

    /* renamed from: c */
    final /* synthetic */ C3898d f12411c;

    public CallableC3945y0(C3898d c3898d, C3902f c3902f, SkuDetails skuDetails) {
        this.f12411c = c3898d;
        this.f12409a = c3902f;
        this.f12410b = skuDetails;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() {
        AbstractC1873d abstractC1873d;
        Context context;
        abstractC1873d = this.f12411c.f12286g;
        context = this.f12411c.f12285f;
        return abstractC1873d.mo28758k4(5, context.getPackageName(), Arrays.asList(this.f12409a.m23800a()), this.f12410b.m23859c(), "subs", null);
    }
}
