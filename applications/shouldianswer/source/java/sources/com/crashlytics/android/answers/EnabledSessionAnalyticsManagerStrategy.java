package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.p068b.C1478g;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p069c.AbstractC1513f;
import io.fabric.sdk.android.services.p069c.RunnableC1516i;
import io.fabric.sdk.android.services.p072e.C1552b;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy.class */
class EnabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    static final int UNDEFINED_ROLLOVER_INTERVAL_SECONDS = -1;
    private final Context context;
    private final ScheduledExecutorService executorService;
    private final SessionAnalyticsFilesManager filesManager;
    AbstractC1513f filesSender;
    private final FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter;
    private final AbstractC1588d httpRequestFactory;
    private final AbstractC1459h kit;
    final SessionEventMetadata metadata;
    private final AtomicReference<ScheduledFuture<?>> rolloverFutureRef = new AtomicReference<>();
    C1478g apiKey = new C1478g();
    EventFilter eventFilter = new KeepAllEventFilter();
    boolean customEventsEnabled = true;
    boolean predefinedEventsEnabled = true;
    volatile int rolloverIntervalSeconds = -1;
    boolean forwardToFirebaseAnalyticsEnabled = false;
    boolean includePurchaseEventsInForwardedEvents = false;

    public EnabledSessionAnalyticsManagerStrategy(AbstractC1459h abstractC1459h, Context context, ScheduledExecutorService scheduledExecutorService, SessionAnalyticsFilesManager sessionAnalyticsFilesManager, AbstractC1588d abstractC1588d, SessionEventMetadata sessionEventMetadata, FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter) {
        this.kit = abstractC1459h;
        this.context = context;
        this.executorService = scheduledExecutorService;
        this.filesManager = sessionAnalyticsFilesManager;
        this.httpRequestFactory = abstractC1588d;
        this.metadata = sessionEventMetadata;
        this.firebaseAnalyticsApiAdapter = firebaseAnalyticsApiAdapter;
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1512e
    public void cancelTimeBasedFileRollOver() {
        if (this.rolloverFutureRef.get() != null) {
            C1480i.m3503a(this.context, "Cancelling time-based rollover because no events are currently being generated.");
            this.rolloverFutureRef.get().cancel(false);
            this.rolloverFutureRef.set(null);
        }
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void deleteAllEvents() {
        this.filesManager.deleteAllEventsFiles();
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void processEvent(SessionEvent.Builder builder) {
        SessionEvent build = builder.build(this.metadata);
        if (!this.customEventsEnabled && SessionEvent.Type.CUSTOM.equals(build.type)) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3552a(Answers.TAG, "Custom events tracking disabled - skipping event: " + build);
        } else if (!this.predefinedEventsEnabled && SessionEvent.Type.PREDEFINED.equals(build.type)) {
            AbstractC1462k m3572g2 = C1449c.m3572g();
            m3572g2.mo3552a(Answers.TAG, "Predefined events tracking disabled - skipping event: " + build);
        } else if (this.eventFilter.skipEvent(build)) {
            AbstractC1462k m3572g3 = C1449c.m3572g();
            m3572g3.mo3552a(Answers.TAG, "Skipping filtered event: " + build);
        } else {
            try {
                this.filesManager.writeEvent(build);
            } catch (IOException e) {
                AbstractC1462k m3572g4 = C1449c.m3572g();
                m3572g4.mo3545e(Answers.TAG, "Failed to write event: " + build, e);
            }
            scheduleTimeBasedRollOverIfNeeded();
            boolean z = SessionEvent.Type.CUSTOM.equals(build.type) || SessionEvent.Type.PREDEFINED.equals(build.type);
            boolean equals = "purchase".equals(build.predefinedType);
            if (!this.forwardToFirebaseAnalyticsEnabled || !z) {
                return;
            }
            if (equals && !this.includePurchaseEventsInForwardedEvents) {
                return;
            }
            try {
                this.firebaseAnalyticsApiAdapter.processEvent(build);
            } catch (Exception e2) {
                AbstractC1462k m3572g5 = C1449c.m3572g();
                m3572g5.mo3545e(Answers.TAG, "Failed to map event to Firebase: " + build, e2);
            }
        }
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1512e
    public boolean rollFileOver() {
        try {
            return this.filesManager.rollFileOver();
        } catch (IOException e) {
            C1480i.m3501a(this.context, "Failed to roll file over.", e);
            return false;
        }
    }

    void scheduleTimeBasedFileRollOver(long j, long j2) {
        if (this.rolloverFutureRef.get() == null) {
            RunnableC1516i runnableC1516i = new RunnableC1516i(this.context, this);
            Context context = this.context;
            C1480i.m3503a(context, "Scheduling time based file roll over every " + j2 + " seconds");
            try {
                this.rolloverFutureRef.set(this.executorService.scheduleAtFixedRate(runnableC1516i, j, j2, TimeUnit.SECONDS));
            } catch (RejectedExecutionException e) {
                C1480i.m3501a(this.context, "Failed to schedule time based file roll over", e);
            }
        }
    }

    public void scheduleTimeBasedRollOverIfNeeded() {
        if (this.rolloverIntervalSeconds != -1) {
            scheduleTimeBasedFileRollOver(this.rolloverIntervalSeconds, this.rolloverIntervalSeconds);
        }
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void sendEvents() {
        int i;
        if (this.filesSender == null) {
            C1480i.m3503a(this.context, "skipping files send because we don't yet know the target endpoint");
            return;
        }
        C1480i.m3503a(this.context, "Sending all files");
        List<File> batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            i = i3;
            try {
                if (batchOfFilesToSend.size() <= 0) {
                    break;
                }
                C1480i.m3503a(this.context, String.format(Locale.US, "attempt to send batch of %d files", Integer.valueOf(batchOfFilesToSend.size())));
                boolean send = this.filesSender.send(batchOfFilesToSend);
                i = i3;
                if (send) {
                    i = i3 + batchOfFilesToSend.size();
                    this.filesManager.deleteSentFiles(batchOfFilesToSend);
                }
                if (!send) {
                    break;
                }
                batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
                i2 = i;
            } catch (Exception e) {
                Context context = this.context;
                C1480i.m3501a(context, "Failed to send batch of analytics files to server: " + e.getMessage(), e);
                i = i3;
            }
        }
        if (i != 0) {
            return;
        }
        this.filesManager.deleteOldestInRollOverIfOverMax();
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void setAnalyticsSettingsData(C1552b c1552b, String str) {
        this.filesSender = AnswersRetryFilesSender.build(new SessionAnalyticsFilesSender(this.kit, str, c1552b.f4206a, this.httpRequestFactory, this.apiKey.m3512a(this.context)));
        this.filesManager.setAnalyticsSettingsData(c1552b);
        this.forwardToFirebaseAnalyticsEnabled = c1552b.f4211f;
        this.includePurchaseEventsInForwardedEvents = c1552b.f4212g;
        AbstractC1462k m3572g = C1449c.m3572g();
        StringBuilder sb = new StringBuilder();
        sb.append("Firebase analytics forwarding ");
        sb.append(this.forwardToFirebaseAnalyticsEnabled ? "enabled" : "disabled");
        m3572g.mo3552a(Answers.TAG, sb.toString());
        AbstractC1462k m3572g2 = C1449c.m3572g();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Firebase analytics including purchase events ");
        sb2.append(this.includePurchaseEventsInForwardedEvents ? "enabled" : "disabled");
        m3572g2.mo3552a(Answers.TAG, sb2.toString());
        this.customEventsEnabled = c1552b.f4213h;
        AbstractC1462k m3572g3 = C1449c.m3572g();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Custom event tracking ");
        sb3.append(this.customEventsEnabled ? "enabled" : "disabled");
        m3572g3.mo3552a(Answers.TAG, sb3.toString());
        this.predefinedEventsEnabled = c1552b.f4214i;
        AbstractC1462k m3572g4 = C1449c.m3572g();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Predefined event tracking ");
        sb4.append(this.predefinedEventsEnabled ? "enabled" : "disabled");
        m3572g4.mo3552a(Answers.TAG, sb4.toString());
        if (c1552b.f4216k > 1) {
            C1449c.m3572g().mo3552a(Answers.TAG, "Event sampling enabled");
            this.eventFilter = new SamplingEventFilter(c1552b.f4216k);
        }
        this.rolloverIntervalSeconds = c1552b.f4207b;
        scheduleTimeBasedFileRollOver(0L, this.rolloverIntervalSeconds);
    }
}
