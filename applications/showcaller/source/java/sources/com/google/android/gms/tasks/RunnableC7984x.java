package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/x.class */
final class RunnableC7984x implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7966g f35987d;

    /* renamed from: e */
    final /* synthetic */ C7985y f35988e;

    public RunnableC7984x(C7985y c7985y, AbstractC7966g abstractC7966g) {
        this.f35988e = c7985y;
        this.f35987d = abstractC7966g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC7962e abstractC7962e;
        AbstractC7962e abstractC7962e2;
        obj = this.f35988e.f35990b;
        synchronized (obj) {
            abstractC7962e = this.f35988e.f35991c;
            if (abstractC7962e != null) {
                abstractC7962e2 = this.f35988e.f35991c;
                abstractC7962e2.onSuccess(this.f35987d.mo5814m());
            }
        }
    }
}
