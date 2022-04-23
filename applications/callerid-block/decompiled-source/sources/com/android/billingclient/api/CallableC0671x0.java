package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.x0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/x0.class */
final class CallableC0671x0 implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ int f3263a;

    /* renamed from: b */
    final /* synthetic */ SkuDetails f3264b;

    /* renamed from: c */
    final /* synthetic */ String f3265c;

    /* renamed from: d */
    final /* synthetic */ Bundle f3266d;

    /* renamed from: e */
    final /* synthetic */ d f3267e;

    CallableC0671x0(d dVar, int i, SkuDetails skuDetails, String str, C0630f fVar, Bundle bundle) {
        this.f3267e = dVar;
        this.f3263a = i;
        this.f3264b = skuDetails;
        this.f3265c = str;
        this.f3266d = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() {
        return d.n(this.f3267e).u2(this.f3263a, d.m(this.f3267e).getPackageName(), this.f3264b.m11540c(), this.f3265c, (String) null, this.f3266d);
    }
}
