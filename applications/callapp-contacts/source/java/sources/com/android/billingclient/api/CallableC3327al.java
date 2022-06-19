package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.p360f.C13304a;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.al */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/al.class */
public final class CallableC3327al implements Callable<Void> {

    /* renamed from: a */
    final /* synthetic */ C3314a f12550a;

    /* renamed from: b */
    final /* synthetic */ AbstractC3334b f12551b;

    /* renamed from: c */
    final /* synthetic */ C3337d f12552c;

    public CallableC3327al(C3337d c3337d, C3314a c3314a, AbstractC3334b abstractC3334b) {
        this.f12552c = c3337d;
        this.f12550a = c3314a;
        this.f12551b = abstractC3334b;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        try {
            Bundle mo13358c = this.f12552c.f12576d.mo13358c(this.f12552c.f12575c.getPackageName(), this.f12550a.f12535a, C13304a.m13370b(this.f12552c.f12574b));
            C3337d.m38202a(this.f12552c, new RunnableC3326ak(this, C13304a.m13376a(mo13358c, "BillingClient"), C13304a.m13371b(mo13358c, "BillingClient")));
            return null;
        } catch (Exception e) {
            C3337d.m38202a(this.f12552c, new RunnableC3325aj(this, e));
            return null;
        }
    }
}
