package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.s */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s.class */
public final class RunnableC3932s implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C3905g f12361d;

    /* renamed from: e */
    final /* synthetic */ ServiceConnectionC3938v f12362e;

    public RunnableC3932s(ServiceConnectionC3938v serviceConnectionC3938v, C3905g c3905g) {
        this.f12362e = serviceConnectionC3938v;
        this.f12361d = c3905g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC3900e abstractC3900e;
        AbstractC3900e abstractC3900e2;
        obj = this.f12362e.f12370a;
        synchronized (obj) {
            abstractC3900e = this.f12362e.f12372c;
            if (abstractC3900e != null) {
                abstractC3900e2 = this.f12362e.f12372c;
                abstractC3900e2.mo23804a(this.f12361d);
            }
        }
    }
}
