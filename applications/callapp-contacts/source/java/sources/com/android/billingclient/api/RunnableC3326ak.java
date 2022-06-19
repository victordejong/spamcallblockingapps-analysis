package com.android.billingclient.api;

import com.android.billingclient.api.C3341g;
/* renamed from: com.android.billingclient.api.ak */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ak.class */
final class RunnableC3326ak implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f12547a;

    /* renamed from: b */
    final /* synthetic */ String f12548b;

    /* renamed from: c */
    final /* synthetic */ CallableC3327al f12549c;

    public RunnableC3326ak(CallableC3327al callableC3327al, int i, String str) {
        this.f12549c = callableC3327al;
        this.f12547a = i;
        this.f12548b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3334b abstractC3334b = this.f12549c.f12551b;
        C3341g.C3342a m38191a = C3341g.m38191a();
        m38191a.f12611a = this.f12547a;
        m38191a.f12612b = this.f12548b;
        abstractC3334b.mo28287a(m38191a.m38190a());
    }
}
