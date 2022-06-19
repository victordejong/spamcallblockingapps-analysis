package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/w.class */
final class RunnableC2408w implements Runnable {

    /* renamed from: b */
    private final /* synthetic */ AbstractC2397g f10557b;

    /* renamed from: c */
    private final /* synthetic */ x f10558c;

    RunnableC2408w(x xVar, AbstractC2397g abstractC2397g) {
        this.f10558c = xVar;
        this.f10557b = abstractC2397g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AbstractC2397g mo3244a = x.e(this.f10558c).mo3244a(this.f10557b.m3776k());
            if (mo3244a == null) {
                this.f10558c.b(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = C2399i.f10544b;
            mo3244a.m3782e(executor, this.f10558c);
            mo3244a.m3783d(executor, this.f10558c);
            mo3244a.m3786a(executor, this.f10558c);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f10558c.b((Exception) e.getCause());
            } else {
                this.f10558c.b(e);
            }
        } catch (CancellationException e2) {
            this.f10558c.c();
        } catch (Exception e3) {
            this.f10558c.b(e3);
        }
    }
}
