package com.amazonaws.event;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/event/ProgressListenerCallbackExecutor.class */
public class ProgressListenerCallbackExecutor {

    /* renamed from: a  reason: collision with root package name */
    static ExecutorService f6597a = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.3
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("android-sdk-progress-listener-callback-thread");
            thread.setDaemon(true);
            return thread;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private final ProgressListener f6598b;

    public ProgressListenerCallbackExecutor() {
        this.f6598b = null;
    }

    public ProgressListenerCallbackExecutor(ProgressListener progressListener) {
        this.f6598b = progressListener;
    }

    public static ProgressListenerCallbackExecutor a(ProgressListener progressListener) {
        if (progressListener == null) {
            return null;
        }
        return new ProgressListenerCallbackExecutor(progressListener);
    }

    public final void a(final ProgressEvent progressEvent) {
        if (this.f6598b != null) {
            f6597a.submit(new Runnable() { // from class: com.amazonaws.event.ProgressListenerCallbackExecutor.2
                @Override // java.lang.Runnable
                public void run() {
                    ProgressListenerCallbackExecutor.this.f6598b.progressChanged(progressEvent);
                }
            });
        }
    }
}
