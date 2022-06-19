package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/z.class */
final class RunnableC7986z implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7966g f35992d;

    /* renamed from: e */
    final /* synthetic */ C7955a0 f35993e;

    public RunnableC7986z(C7955a0 c7955a0, AbstractC7966g abstractC7966g) {
        this.f35993e = c7955a0;
        this.f35992d = abstractC7966g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7964f abstractC7964f;
        try {
            abstractC7964f = this.f35993e.f35937b;
            AbstractC7966g mo1607a = abstractC7964f.mo1607a(this.f35992d.mo5814m());
            if (mo1607a == null) {
                this.f35993e.mo5788a(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = C7969i.f35953b;
            mo1607a.mo5820g(executor, this.f35993e);
            mo1607a.mo5822e(executor, this.f35993e);
            mo1607a.mo5826a(executor, this.f35993e);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f35993e.mo5788a((Exception) e.getCause());
            } else {
                this.f35993e.mo5788a(e);
            }
        } catch (CancellationException e2) {
            this.f35993e.mo5787c();
        } catch (Exception e3) {
            this.f35993e.mo5788a(e3);
        }
    }
}
