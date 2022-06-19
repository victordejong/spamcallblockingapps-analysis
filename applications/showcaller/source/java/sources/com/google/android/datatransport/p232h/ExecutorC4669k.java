package com.google.android.datatransport.p232h;

import com.google.android.datatransport.p232h.p235v.C4687a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.h.k */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/k.class */
class ExecutorC4669k implements Executor {

    /* renamed from: d */
    private final Executor f14234d;

    /* renamed from: com.google.android.datatransport.h.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/k$a.class */
    static class RunnableC4670a implements Runnable {

        /* renamed from: d */
        private final Runnable f14235d;

        RunnableC4670a(Runnable runnable) {
            this.f14235d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f14235d.run();
            } catch (Exception e) {
                C4687a.m21991c("Executor", "Background execution failure.", e);
            }
        }
    }

    public ExecutorC4669k(Executor executor) {
        this.f14234d = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f14234d.execute(new RunnableC4670a(runnable));
    }
}
