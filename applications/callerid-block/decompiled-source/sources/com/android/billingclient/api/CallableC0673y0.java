package com.android.billingclient.api;

import android.os.Bundle;
import java.util.Arrays;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.y0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/y0.class */
final class CallableC0673y0 implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ C0630f f3284a;

    /* renamed from: b */
    final /* synthetic */ SkuDetails f3285b;

    /* renamed from: c */
    final /* synthetic */ d f3286c;

    CallableC0673y0(d dVar, C0630f fVar, SkuDetails skuDetails) {
        this.f3286c = dVar;
        this.f3284a = fVar;
        this.f3285b = skuDetails;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() {
        return d.n(this.f3286c).r2(5, d.m(this.f3286c).getPackageName(), Arrays.asList(this.f3284a.m11509a()), this.f3285b.m11540c(), "subs", (String) null);
    }
}
