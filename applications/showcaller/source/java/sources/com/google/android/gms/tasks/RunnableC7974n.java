package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/n.class */
final class RunnableC7974n implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7966g f35963d;

    /* renamed from: e */
    final /* synthetic */ C7975o f35964e;

    public RunnableC7974n(C7975o c7975o, AbstractC7966g abstractC7966g) {
        this.f35964e = c7975o;
        this.f35963d = abstractC7966g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7965f0 c7965f0;
        C7965f0 c7965f02;
        C7965f0 c7965f03;
        AbstractC7954a abstractC7954a;
        C7965f0 c7965f04;
        C7965f0 c7965f05;
        if (this.f35963d.mo5812o()) {
            c7965f05 = this.f35964e.f35967c;
            c7965f05.m5829x();
            return;
        }
        try {
            abstractC7954a = this.f35964e.f35966b;
            Object mo1125a = abstractC7954a.mo1125a(this.f35963d);
            c7965f04 = this.f35964e.f35967c;
            c7965f04.m5833t(mo1125a);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                c7965f02 = this.f35964e.f35967c;
                c7965f02.m5831v((Exception) e.getCause());
                return;
            }
            c7965f0 = this.f35964e.f35967c;
            c7965f0.m5831v(e);
        } catch (Exception e2) {
            c7965f03 = this.f35964e.f35967c;
            c7965f03.m5831v(e2);
        }
    }
}
