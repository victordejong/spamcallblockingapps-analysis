package io.bidmachine.core;

import java.lang.Thread;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/core/a.class */
final class a implements ThreadFactory {
    private final int threadPriority;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int i) {
        this.threadPriority = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(this.threadPriority);
        thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: io.bidmachine.core.a.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread2, Throwable th) {
                th.printStackTrace();
            }
        });
        return thread;
    }
}
