package com.android.billingclient.api;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.r */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/r.class */
public final class CallableC3355r implements Callable<Void> {

    /* renamed from: a */
    final /* synthetic */ String f12631a;

    /* renamed from: b */
    final /* synthetic */ List f12632b;

    /* renamed from: c */
    final /* synthetic */ AbstractC3350m f12633c;

    /* renamed from: d */
    final /* synthetic */ C3337d f12634d;

    public CallableC3355r(C3337d c3337d, String str, List list, String str2, AbstractC3350m abstractC3350m) {
        this.f12634d = c3337d;
        this.f12631a = str;
        this.f12632b = list;
        this.f12633c = abstractC3350m;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        C3337d.m38202a(this.f12634d, new RunnableC3354q(this, this.f12634d.m38196a(this.f12631a, this.f12632b)));
        return null;
    }
}
