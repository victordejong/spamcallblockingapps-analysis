package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.t */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/t.class */
final class RunnableC7980t implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7966g f35977d;

    /* renamed from: e */
    final /* synthetic */ C7981u f35978e;

    public RunnableC7980t(C7981u c7981u, AbstractC7966g abstractC7966g) {
        this.f35978e = c7981u;
        this.f35977d = abstractC7966g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC7958c abstractC7958c;
        AbstractC7958c abstractC7958c2;
        obj = this.f35978e.f35980b;
        synchronized (obj) {
            abstractC7958c = this.f35978e.f35981c;
            if (abstractC7958c != null) {
                abstractC7958c2 = this.f35978e.f35981c;
                abstractC7958c2.mo1124a(this.f35977d);
            }
        }
    }
}
