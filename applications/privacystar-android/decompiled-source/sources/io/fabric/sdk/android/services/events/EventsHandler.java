package io.fabric.sdk.android.services.events;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/events/EventsHandler.class */
public abstract class EventsHandler<T> implements EventsStorageListener {
    protected final Context context;
    protected final ScheduledExecutorService executor;
    protected EventsStrategy<T> strategy;

    public EventsHandler(Context context, EventsStrategy<T> eventsStrategy, EventsFilesManager eventsFilesManager, ScheduledExecutorService scheduledExecutorService) {
        this.context = context.getApplicationContext();
        this.executor = scheduledExecutorService;
        this.strategy = eventsStrategy;
        eventsFilesManager.registerRollOverListener(this);
    }

    public void disable() {
        executeAsync(new Runnable() { // from class: io.fabric.sdk.android.services.events.EventsHandler.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventsStrategy<T> eventsStrategy = EventsHandler.this.strategy;
                    EventsHandler.this.strategy = EventsHandler.this.getDisabledEventsStrategy();
                    eventsStrategy.deleteAllEvents();
                } catch (Exception e) {
                    CommonUtils.logControlledError(EventsHandler.this.context, "Failed to disable events.", e);
                }
            }
        });
    }

    protected void executeAsync(Runnable runnable) {
        try {
            this.executor.submit(runnable);
        } catch (Exception e) {
            CommonUtils.logControlledError(this.context, "Failed to submit events task", e);
        }
    }

    protected void executeSync(Runnable runnable) {
        try {
            this.executor.submit(runnable).get();
        } catch (Exception e) {
            CommonUtils.logControlledError(this.context, "Failed to run events task", e);
        }
    }

    protected abstract EventsStrategy<T> getDisabledEventsStrategy();

    @Override // io.fabric.sdk.android.services.events.EventsStorageListener
    public void onRollOver(String str) {
        executeAsync(new Runnable() { // from class: io.fabric.sdk.android.services.events.EventsHandler.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventsHandler.this.strategy.sendEvents();
                } catch (Exception e) {
                    CommonUtils.logControlledError(EventsHandler.this.context, "Failed to send events files.", e);
                }
            }
        });
    }

    public void recordEventAsync(final T t, final boolean z) {
        executeAsync(new Runnable() { // from class: io.fabric.sdk.android.services.events.EventsHandler.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventsHandler.this.strategy.recordEvent(t);
                    if (z) {
                        EventsHandler.this.strategy.rollFileOver();
                    }
                } catch (Exception e) {
                    CommonUtils.logControlledError(EventsHandler.this.context, "Failed to record event.", e);
                }
            }
        });
    }

    public void recordEventSync(final T t) {
        executeSync(new Runnable() { // from class: io.fabric.sdk.android.services.events.EventsHandler.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventsHandler.this.strategy.recordEvent(t);
                } catch (Exception e) {
                    CommonUtils.logControlledError(EventsHandler.this.context, "Crashlytics failed to record event", e);
                }
            }
        });
    }
}
