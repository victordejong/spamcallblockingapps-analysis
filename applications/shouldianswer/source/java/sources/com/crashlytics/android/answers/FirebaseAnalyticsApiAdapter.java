package com.crashlytics.android.answers;

import android.content.Context;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/FirebaseAnalyticsApiAdapter.class */
public class FirebaseAnalyticsApiAdapter {
    private final Context context;
    private EventLogger eventLogger;
    private final FirebaseAnalyticsEventMapper eventMapper;

    public FirebaseAnalyticsApiAdapter(Context context) {
        this(context, new FirebaseAnalyticsEventMapper());
    }

    public FirebaseAnalyticsApiAdapter(Context context, FirebaseAnalyticsEventMapper firebaseAnalyticsEventMapper) {
        this.context = context;
        this.eventMapper = firebaseAnalyticsEventMapper;
    }

    public EventLogger getFirebaseAnalytics() {
        if (this.eventLogger == null) {
            this.eventLogger = AppMeasurementEventLogger.getEventLogger(this.context);
        }
        return this.eventLogger;
    }

    public void processEvent(SessionEvent sessionEvent) {
        EventLogger firebaseAnalytics = getFirebaseAnalytics();
        if (firebaseAnalytics == null) {
            C1449c.m3572g().mo3552a(Answers.TAG, "Firebase analytics logging was enabled, but not available...");
            return;
        }
        FirebaseAnalyticsEvent mapEvent = this.eventMapper.mapEvent(sessionEvent);
        if (mapEvent != null) {
            firebaseAnalytics.logEvent(mapEvent.getEventName(), mapEvent.getEventParams());
            if (!"levelEnd".equals(sessionEvent.predefinedType)) {
                return;
            }
            firebaseAnalytics.logEvent(FirebaseAnalytics.Event.POST_SCORE, mapEvent.getEventParams());
            return;
        }
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(Answers.TAG, "Fabric event was not mappable to Firebase event: " + sessionEvent);
    }
}
