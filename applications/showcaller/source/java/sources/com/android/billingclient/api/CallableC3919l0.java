package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.l0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l0.class */
final class CallableC3919l0 implements Callable<Void> {

    /* renamed from: a */
    final /* synthetic */ C3908h f12334a;

    /* renamed from: b */
    final /* synthetic */ AbstractC3911i f12335b;

    /* renamed from: c */
    final /* synthetic */ C3898d f12336c;

    public CallableC3919l0(C3898d c3898d, C3908h c3908h, AbstractC3911i abstractC3911i) {
        this.f12336c = c3898d;
        this.f12334a = c3908h;
        this.f12335b = abstractC3911i;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() {
        C3898d.m23814q(this.f12336c, this.f12334a, this.f12335b);
        return null;
    }
}
