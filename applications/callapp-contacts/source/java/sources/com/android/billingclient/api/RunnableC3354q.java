package com.android.billingclient.api;

import com.android.billingclient.api.C3341g;
/* renamed from: com.android.billingclient.api.q */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/q.class */
final class RunnableC3354q implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C3363z f12629a;

    /* renamed from: b */
    final /* synthetic */ CallableC3355r f12630b;

    public RunnableC3354q(CallableC3355r callableC3355r, C3363z c3363z) {
        this.f12630b = callableC3355r;
        this.f12629a = c3363z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3350m abstractC3350m = this.f12630b.f12633c;
        C3341g.C3342a m38191a = C3341g.m38191a();
        m38191a.f12611a = this.f12629a.f12666b;
        m38191a.f12612b = this.f12629a.f12667c;
        abstractC3350m.mo28284b(m38191a.m38190a(), this.f12629a.f12665a);
    }
}
