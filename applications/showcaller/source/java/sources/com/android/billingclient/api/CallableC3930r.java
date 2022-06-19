package com.android.billingclient.api;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.r */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/r.class */
public final class CallableC3930r implements Callable<Void> {

    /* renamed from: a */
    final /* synthetic */ String f12355a;

    /* renamed from: b */
    final /* synthetic */ List f12356b;

    /* renamed from: c */
    final /* synthetic */ AbstractC3920m f12357c;

    /* renamed from: d */
    final /* synthetic */ C3898d f12358d;

    public CallableC3930r(C3898d c3898d, String str, List list, String str2, AbstractC3920m abstractC3920m) {
        this.f12358d = c3898d;
        this.f12355a = str;
        this.f12356b = list;
        this.f12357c = abstractC3920m;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() {
        this.f12358d.m23821j(new RunnableC3928q(this, this.f12358d.m23819l(this.f12355a, this.f12356b, null)));
        return null;
    }
}
