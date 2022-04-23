package com.android.billingclient.api;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.android.billingclient.api.s */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s.class */
public final class RunnableC0660s implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C0633g f3243b;

    /* renamed from: c */
    final /* synthetic */ ServiceConnectionC0666v f3244c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0660s(ServiceConnectionC0666v vVar, C0633g gVar) {
        this.f3244c = vVar;
        this.f3243b = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC0628e eVar;
        AbstractC0628e eVar2;
        obj = this.f3244c.f3252a;
        synchronized (obj) {
            eVar = this.f3244c.f3254c;
            if (eVar != null) {
                eVar2 = this.f3244c.f3254c;
                eVar2.m11513a(this.f3243b);
            }
        }
    }
}
