package com.amazonaws.event;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/event/ProgressListenerCallbackExecutor.class */
public class ProgressListenerCallbackExecutor {

    /* renamed from: a */
    static ExecutorService f12040a = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.3
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("android-sdk-progress-listener-callback-thread");
            thread.setDaemon(true);
            return thread;
        }
    });

    /* renamed from: b */
    private final ProgressListener f12041b;

    public ProgressListenerCallbackExecutor() {
        this.f12041b = null;
    }

    public ProgressListenerCallbackExecutor(ProgressListener progressListener) {
        this.f12041b = progressListener;
    }

    /* renamed from: a */
    public static ProgressListenerCallbackExecutor m38641a(ProgressListener progressListener) {
        if (progressListener == null) {
            return null;
        }
        return new ProgressListenerCallbackExecutor(progressListener);
    }

    /* renamed from: a */
    public final void m38642a(final ProgressEvent progressEvent) {
        if (this.f12041b == null) {
            return;
        }
        f12040a.submit(new Runnable() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.2
            @Override // java.lang.Runnable
            public void run() {
                ProgressListenerCallbackExecutor.this.f12041b.progressChanged(progressEvent);
            }
        });
    }
}
