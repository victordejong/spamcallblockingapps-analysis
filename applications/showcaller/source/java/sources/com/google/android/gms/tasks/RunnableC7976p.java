package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/p.class */
final class RunnableC7976p implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7966g f35968d;

    /* renamed from: e */
    final /* synthetic */ C7977q f35969e;

    public RunnableC7976p(C7977q c7977q, AbstractC7966g abstractC7966g) {
        this.f35969e = c7977q;
        this.f35968d = abstractC7966g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7965f0 c7965f0;
        C7965f0 c7965f02;
        C7965f0 c7965f03;
        AbstractC7954a abstractC7954a;
        try {
            abstractC7954a = this.f35969e.f35971b;
            AbstractC7966g abstractC7966g = (AbstractC7966g) abstractC7954a.mo1125a(this.f35968d);
            if (abstractC7966g == null) {
                this.f35969e.mo5788a(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = C7969i.f35953b;
            abstractC7966g.mo5820g(executor, this.f35969e);
            abstractC7966g.mo5822e(executor, this.f35969e);
            abstractC7966g.mo5826a(executor, this.f35969e);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                c7965f02 = this.f35969e.f35972c;
                c7965f02.m5831v((Exception) e.getCause());
                return;
            }
            c7965f0 = this.f35969e.f35972c;
            c7965f0.m5831v(e);
        } catch (Exception e2) {
            c7965f03 = this.f35969e.f35972c;
            c7965f03.m5831v(e2);
        }
    }
}
