package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.l0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l0.class */
final class CallableC0647l0 implements Callable<Void> {

    /* renamed from: a */
    final /* synthetic */ C0636h f3216a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0639i f3217b;

    /* renamed from: c */
    final /* synthetic */ d f3218c;

    CallableC0647l0(d dVar, C0636h hVar, AbstractC0639i iVar) {
        this.f3218c = dVar;
        this.f3216a = hVar;
        this.f3217b = iVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() {
        d.q(this.f3218c, this.f3216a, this.f3217b);
        return null;
    }
}
