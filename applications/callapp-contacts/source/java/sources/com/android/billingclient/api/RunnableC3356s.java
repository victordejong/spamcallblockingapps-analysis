package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.s */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s.class */
public final class RunnableC3356s implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C3341g f12635a;

    /* renamed from: b */
    final /* synthetic */ ServiceConnectionC3359v f12636b;

    public RunnableC3356s(ServiceConnectionC3359v serviceConnectionC3359v, C3341g c3341g) {
        this.f12636b = serviceConnectionC3359v;
        this.f12635a = c3341g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC3338e abstractC3338e;
        AbstractC3338e abstractC3338e2;
        obj = this.f12636b.f12639a;
        synchronized (obj) {
            abstractC3338e = this.f12636b.f12641c;
            if (abstractC3338e != null) {
                abstractC3338e2 = this.f12636b.f12641c;
                abstractC3338e2.mo28285b(this.f12635a);
            }
        }
    }
}
