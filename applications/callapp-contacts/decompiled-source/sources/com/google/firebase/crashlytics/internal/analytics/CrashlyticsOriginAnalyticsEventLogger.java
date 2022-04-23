package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import com.google.firebase.analytics.connector.a;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger.class */
public class CrashlyticsOriginAnalyticsEventLogger implements AnalyticsEventLogger {
    static final String FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS = "clx";
    private final a analyticsConnector;

    public CrashlyticsOriginAnalyticsEventLogger(a aVar) {
        this.analyticsConnector = aVar;
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger
    public void logEvent(String str, Bundle bundle) {
        this.analyticsConnector.a(FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS, str, bundle);
    }
}
