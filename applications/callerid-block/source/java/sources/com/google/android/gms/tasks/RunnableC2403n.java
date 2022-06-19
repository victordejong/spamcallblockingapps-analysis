package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/n.class */
final class RunnableC2403n implements Runnable {

    /* renamed from: b */
    private final /* synthetic */ AbstractC2397g f10548b;

    /* renamed from: c */
    private final /* synthetic */ l f10549c;

    RunnableC2403n(l lVar, AbstractC2397g abstractC2397g) {
        this.f10549c = lVar;
        this.f10548b = abstractC2397g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AbstractC2397g abstractC2397g = (AbstractC2397g) l.e(this.f10549c).mo3246a(this.f10548b);
            if (abstractC2397g == null) {
                this.f10549c.b(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = C2399i.f10544b;
            abstractC2397g.m3782e(executor, this.f10549c);
            abstractC2397g.m3783d(executor, this.f10549c);
            abstractC2397g.m3786a(executor, this.f10549c);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                l.f(this.f10549c).r((Exception) e.getCause());
            } else {
                l.f(this.f10549c).r(e);
            }
        } catch (Exception e2) {
            l.f(this.f10549c).r(e2);
        }
    }
}
