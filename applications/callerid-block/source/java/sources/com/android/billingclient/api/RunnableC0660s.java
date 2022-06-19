package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.s */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s.class */
public final class RunnableC0660s implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C0633g f3243b;

    /* renamed from: c */
    final /* synthetic */ ServiceConnectionC0666v f3244c;

    public RunnableC0660s(ServiceConnectionC0666v serviceConnectionC0666v, C0633g c0633g) {
        this.f3244c = serviceConnectionC0666v;
        this.f3243b = c0633g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC0628e abstractC0628e;
        AbstractC0628e abstractC0628e2;
        obj = this.f3244c.f3252a;
        synchronized (obj) {
            abstractC0628e = this.f3244c.f3254c;
            if (abstractC0628e != null) {
                abstractC0628e2 = this.f3244c.f3254c;
                abstractC0628e2.m11513a(this.f3243b);
            }
        }
    }
}
