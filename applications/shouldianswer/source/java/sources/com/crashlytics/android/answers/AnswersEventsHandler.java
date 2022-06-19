package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.p069c.AbstractC1511d;
import io.fabric.sdk.android.services.p072e.C1552b;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersEventsHandler.class */
public class AnswersEventsHandler implements AbstractC1511d {
    private final Context context;
    final ScheduledExecutorService executor;
    private final AnswersFilesManagerProvider filesManagerProvider;
    private final FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter;
    private final AbstractC1459h kit;
    private final SessionMetadataCollector metadataCollector;
    private final AbstractC1588d requestFactory;
    SessionAnalyticsManagerStrategy strategy = new DisabledSessionAnalyticsManagerStrategy();

    public AnswersEventsHandler(AbstractC1459h abstractC1459h, Context context, AnswersFilesManagerProvider answersFilesManagerProvider, SessionMetadataCollector sessionMetadataCollector, AbstractC1588d abstractC1588d, ScheduledExecutorService scheduledExecutorService, FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter) {
        this.kit = abstractC1459h;
        this.context = context;
        this.filesManagerProvider = answersFilesManagerProvider;
        this.metadataCollector = sessionMetadataCollector;
        this.requestFactory = abstractC1588d;
        this.executor = scheduledExecutorService;
        this.firebaseAnalyticsApiAdapter = firebaseAnalyticsApiAdapter;
    }

    private void executeAsync(Runnable runnable) {
        try {
            this.executor.submit(runnable);
        } catch (Exception e) {
            C1449c.m3572g().mo3545e(Answers.TAG, "Failed to submit events task", e);
        }
    }

    private void executeSync(Runnable runnable) {
        try {
            this.executor.submit(runnable).get();
        } catch (Exception e) {
            C1449c.m3572g().mo3545e(Answers.TAG, "Failed to run events task", e);
        }
    }

    public void disable() {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SessionAnalyticsManagerStrategy sessionAnalyticsManagerStrategy = AnswersEventsHandler.this.strategy;
                    AnswersEventsHandler.this.strategy = new DisabledSessionAnalyticsManagerStrategy();
                    sessionAnalyticsManagerStrategy.deleteAllEvents();
                } catch (Exception e) {
                    C1449c.m3572g().mo3545e(Answers.TAG, "Failed to disable events", e);
                }
            }
        });
    }

    public void enable() {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SessionEventMetadata metadata = AnswersEventsHandler.this.metadataCollector.getMetadata();
                    SessionAnalyticsFilesManager analyticsFilesManager = AnswersEventsHandler.this.filesManagerProvider.getAnalyticsFilesManager();
                    analyticsFilesManager.registerRollOverListener(AnswersEventsHandler.this);
                    AnswersEventsHandler.this.strategy = new EnabledSessionAnalyticsManagerStrategy(AnswersEventsHandler.this.kit, AnswersEventsHandler.this.context, AnswersEventsHandler.this.executor, analyticsFilesManager, AnswersEventsHandler.this.requestFactory, metadata, AnswersEventsHandler.this.firebaseAnalyticsApiAdapter);
                } catch (Exception e) {
                    C1449c.m3572g().mo3545e(Answers.TAG, "Failed to enable events", e);
                }
            }
        });
    }

    public void flushEvents() {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.rollFileOver();
                } catch (Exception e) {
                    C1449c.m3572g().mo3545e(Answers.TAG, "Failed to flush events", e);
                }
            }
        });
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1511d
    public void onRollOver(String str) {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.sendEvents();
                } catch (Exception e) {
                    C1449c.m3572g().mo3545e(Answers.TAG, "Failed to send events files", e);
                }
            }
        });
    }

    void processEvent(final SessionEvent.Builder builder, boolean z, final boolean z2) {
        Runnable runnable = new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.processEvent(builder);
                    if (!z2) {
                        return;
                    }
                    AnswersEventsHandler.this.strategy.rollFileOver();
                } catch (Exception e) {
                    C1449c.m3572g().mo3545e(Answers.TAG, "Failed to process event", e);
                }
            }
        };
        if (z) {
            executeSync(runnable);
        } else {
            executeAsync(runnable);
        }
    }

    public void processEventAsync(SessionEvent.Builder builder) {
        processEvent(builder, false, false);
    }

    public void processEventAsyncAndFlush(SessionEvent.Builder builder) {
        processEvent(builder, false, true);
    }

    public void processEventSync(SessionEvent.Builder builder) {
        processEvent(builder, true, false);
    }

    public void setAnalyticsSettingsData(final C1552b c1552b, final String str) {
        executeAsync(new Runnable() { // from class: com.crashlytics.android.answers.AnswersEventsHandler.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AnswersEventsHandler.this.strategy.setAnalyticsSettingsData(c1552b, str);
                } catch (Exception e) {
                    C1449c.m3572g().mo3545e(Answers.TAG, "Failed to set analytics settings data", e);
                }
            }
        });
    }
}
