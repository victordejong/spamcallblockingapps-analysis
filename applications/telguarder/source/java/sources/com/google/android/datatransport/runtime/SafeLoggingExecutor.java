package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.logging.Logging;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/SafeLoggingExecutor.class */
class SafeLoggingExecutor implements Executor {
    private final Executor delegate;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/SafeLoggingExecutor$SafeLoggingRunnable.class */
    static class SafeLoggingRunnable implements Runnable {
        private final Runnable delegate;

        SafeLoggingRunnable(Runnable runnable) {
            this.delegate = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.delegate.run();
            } catch (Exception e) {
                Logging.m1381e("Executor", "Background execution failure.", e);
            }
        }
    }

    public SafeLoggingExecutor(Executor executor) {
        this.delegate = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.delegate.execute(new SafeLoggingRunnable(runnable));
    }
}
