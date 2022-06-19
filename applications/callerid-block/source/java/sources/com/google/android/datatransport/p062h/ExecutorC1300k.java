package com.google.android.datatransport.p062h;

import com.google.android.datatransport.p062h.p065v.C1310a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.h.k */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/k.class */
class ExecutorC1300k implements Executor {

    /* renamed from: b */
    private final Executor f5373b;

    /* renamed from: com.google.android.datatransport.h.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/k$a.class */
    static class RunnableC1301a implements Runnable {

        /* renamed from: b */
        private final Runnable f5374b;

        RunnableC1301a(Runnable runnable) {
            this.f5374b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f5374b.run();
            } catch (Exception e) {
                C1310a.m9190c("Executor", "Background execution failure.", e);
            }
        }
    }

    public ExecutorC1300k(Executor executor) {
        this.f5373b = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f5373b.execute(new RunnableC1301a(runnable));
    }
}
