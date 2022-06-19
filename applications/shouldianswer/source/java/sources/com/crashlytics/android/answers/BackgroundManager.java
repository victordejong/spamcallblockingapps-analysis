package com.crashlytics.android.answers;

import io.fabric.sdk.android.C1449c;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/BackgroundManager.class */
public class BackgroundManager {
    private static final int BACKGROUND_DELAY = 5000;
    private final ScheduledExecutorService executorService;
    private final List<Listener> listeners = new ArrayList();
    private volatile boolean flushOnBackground = true;
    final AtomicReference<ScheduledFuture<?>> backgroundFutureRef = new AtomicReference<>();
    boolean inBackground = true;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/BackgroundManager$Listener.class */
    public interface Listener {
        void onBackground();
    }

    public BackgroundManager(ScheduledExecutorService scheduledExecutorService) {
        this.executorService = scheduledExecutorService;
    }

    public void notifyBackground() {
        for (Listener listener : this.listeners) {
            listener.onBackground();
        }
    }

    public void onActivityPaused() {
        if (!this.flushOnBackground || this.inBackground) {
            return;
        }
        this.inBackground = true;
        try {
            this.backgroundFutureRef.compareAndSet(null, this.executorService.schedule(new Runnable() { // from class: com.crashlytics.android.answers.BackgroundManager.1
                @Override // java.lang.Runnable
                public void run() {
                    BackgroundManager.this.backgroundFutureRef.set(null);
                    BackgroundManager.this.notifyBackground();
                }
            }, 5000L, TimeUnit.MILLISECONDS));
        } catch (RejectedExecutionException e) {
            C1449c.m3572g().mo3551a(Answers.TAG, "Failed to schedule background detector", e);
        }
    }

    public void onActivityResumed() {
        this.inBackground = false;
        ScheduledFuture<?> andSet = this.backgroundFutureRef.getAndSet(null);
        if (andSet != null) {
            andSet.cancel(false);
        }
    }

    public void registerListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void setFlushOnBackground(boolean z) {
        this.flushOnBackground = z;
    }
}
