package com.crashlytics.android.answers;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.crashlytics.android.answers.BackgroundManager;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1444a;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.network.C1585b;
import io.fabric.sdk.android.services.p068b.C1489n;
import io.fabric.sdk.android.services.p068b.C1494p;
import io.fabric.sdk.android.services.p071d.C1548b;
import io.fabric.sdk.android.services.p072e.C1552b;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionAnalyticsManager.class */
public class SessionAnalyticsManager implements BackgroundManager.Listener {
    static final String EXECUTOR_SERVICE = "Answers Events Handler";
    static final String ON_CRASH_ERROR_MSG = "onCrash called from main thread!!!";
    final BackgroundManager backgroundManager;
    final AnswersEventsHandler eventsHandler;
    private final long installedAt;
    final C1444a lifecycleManager;
    final AnswersPreferenceManager preferenceManager;

    SessionAnalyticsManager(AnswersEventsHandler answersEventsHandler, C1444a c1444a, BackgroundManager backgroundManager, AnswersPreferenceManager answersPreferenceManager, long j) {
        this.eventsHandler = answersEventsHandler;
        this.lifecycleManager = c1444a;
        this.backgroundManager = backgroundManager;
        this.preferenceManager = answersPreferenceManager;
        this.installedAt = j;
    }

    public static SessionAnalyticsManager build(AbstractC1459h abstractC1459h, Context context, C1494p c1494p, String str, String str2, long j) {
        SessionMetadataCollector sessionMetadataCollector = new SessionMetadataCollector(context, c1494p, str, str2);
        AnswersFilesManagerProvider answersFilesManagerProvider = new AnswersFilesManagerProvider(context, new C1548b(abstractC1459h));
        C1585b c1585b = new C1585b(C1449c.m3572g());
        C1444a c1444a = new C1444a(context);
        ScheduledExecutorService m3453b = C1489n.m3453b(EXECUTOR_SERVICE);
        return new SessionAnalyticsManager(new AnswersEventsHandler(abstractC1459h, context, answersFilesManagerProvider, sessionMetadataCollector, c1585b, m3453b, new FirebaseAnalyticsApiAdapter(context)), c1444a, new BackgroundManager(m3453b), AnswersPreferenceManager.build(context), j);
    }

    public void disable() {
        this.lifecycleManager.m3601a();
        this.eventsHandler.disable();
    }

    public void enable() {
        this.eventsHandler.enable();
        this.lifecycleManager.m3600a(new AnswersLifecycleCallbacks(this, this.backgroundManager));
        this.backgroundManager.registerListener(this);
        if (isFirstLaunch()) {
            onInstall(this.installedAt);
            this.preferenceManager.setAnalyticsLaunched();
        }
    }

    boolean isFirstLaunch() {
        return !this.preferenceManager.hasAnalyticsLaunched();
    }

    @Override // com.crashlytics.android.answers.BackgroundManager.Listener
    public void onBackground() {
        C1449c.m3572g().mo3552a(Answers.TAG, "Flush events when app is backgrounded");
        this.eventsHandler.flushEvents();
    }

    public void onCrash(String str, String str2) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            C1449c.m3572g().mo3552a(Answers.TAG, "Logged crash");
            this.eventsHandler.processEventSync(SessionEvent.crashEventBuilder(str, str2));
            return;
        }
        throw new IllegalStateException(ON_CRASH_ERROR_MSG);
    }

    public void onCustom(CustomEvent customEvent) {
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(Answers.TAG, "Logged custom event: " + customEvent);
        this.eventsHandler.processEventAsync(SessionEvent.customEventBuilder(customEvent));
    }

    public void onError(String str) {
    }

    public void onInstall(long j) {
        C1449c.m3572g().mo3552a(Answers.TAG, "Logged install");
        this.eventsHandler.processEventAsyncAndFlush(SessionEvent.installEventBuilder(j));
    }

    public void onLifecycle(Activity activity, SessionEvent.Type type) {
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(Answers.TAG, "Logged lifecycle event: " + type.name());
        this.eventsHandler.processEventAsync(SessionEvent.lifecycleEventBuilder(type, activity));
    }

    public void onPredefined(PredefinedEvent predefinedEvent) {
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(Answers.TAG, "Logged predefined event: " + predefinedEvent);
        this.eventsHandler.processEventAsync(SessionEvent.predefinedEventBuilder(predefinedEvent));
    }

    public void setAnalyticsSettingsData(C1552b c1552b, String str) {
        this.backgroundManager.setFlushOnBackground(c1552b.f4215j);
        this.eventsHandler.setAnalyticsSettingsData(c1552b, str);
    }
}
