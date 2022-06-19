package com.android.billingclient.api;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Callable;
import p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d;
/* renamed from: com.android.billingclient.api.x0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/x0.class */
final class CallableC3943x0 implements Callable<Bundle> {

    /* renamed from: a */
    final /* synthetic */ int f12381a;

    /* renamed from: b */
    final /* synthetic */ SkuDetails f12382b;

    /* renamed from: c */
    final /* synthetic */ String f12383c;

    /* renamed from: d */
    final /* synthetic */ C3902f f12384d;

    /* renamed from: e */
    final /* synthetic */ Bundle f12385e;

    /* renamed from: f */
    final /* synthetic */ C3898d f12386f;

    public CallableC3943x0(C3898d c3898d, int i, SkuDetails skuDetails, String str, C3902f c3902f, Bundle bundle) {
        this.f12386f = c3898d;
        this.f12381a = i;
        this.f12382b = skuDetails;
        this.f12383c = str;
        this.f12384d = c3902f;
        this.f12385e = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() {
        AbstractC1873d abstractC1873d;
        Context context;
        abstractC1873d = this.f12386f.f12286g;
        int i = this.f12381a;
        context = this.f12386f.f12285f;
        return abstractC1873d.mo28757n4(i, context.getPackageName(), this.f12382b.m23859c(), this.f12383c, null, this.f12385e);
    }
}
