package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.p318b.C10692a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.datatransport.runtime.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/j.class */
final class ExecutorC10734j implements Executor {

    /* renamed from: a */
    private final Executor f34595a;

    /* renamed from: com.google.android.datatransport.runtime.j$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/j$a.class */
    static final class RunnableC10735a implements Runnable {

        /* renamed from: a */
        private final Runnable f34596a;

        RunnableC10735a(Runnable runnable) {
            this.f34596a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f34596a.run();
            } catch (Exception e) {
                C10692a.m22516a("Executor", "Background execution failure.", (Throwable) e);
            }
        }
    }

    public ExecutorC10734j(Executor executor) {
        this.f34595a = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f34595a.execute(new RunnableC10735a(runnable));
    }
}
