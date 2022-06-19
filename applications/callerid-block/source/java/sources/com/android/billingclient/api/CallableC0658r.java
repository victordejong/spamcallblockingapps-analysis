package com.android.billingclient.api;

import java.util.List;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.android.billingclient.api.r */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/r.class */
public final class CallableC0658r implements Callable<Void> {

    /* renamed from: a */
    final /* synthetic */ String f3237a;

    /* renamed from: b */
    final /* synthetic */ List f3238b;

    /* renamed from: c */
    final /* synthetic */ AbstractC0648m f3239c;

    /* renamed from: d */
    final /* synthetic */ d f3240d;

    CallableC0658r(d dVar, String str, List list, String str2, AbstractC0648m abstractC0648m) {
        this.f3240d = dVar;
        this.f3237a = str;
        this.f3238b = list;
        this.f3239c = abstractC0648m;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() {
        d.p(this.f3240d, new RunnableC0656q(this, this.f3240d.l(this.f3237a, this.f3238b, (String) null)));
        return null;
    }
}
