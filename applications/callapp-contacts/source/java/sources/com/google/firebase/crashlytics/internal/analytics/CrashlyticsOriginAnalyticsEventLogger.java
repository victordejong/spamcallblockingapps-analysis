package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import com.google.firebase.analytics.connector.AbstractC15587a;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger.class */
public class CrashlyticsOriginAnalyticsEventLogger implements AnalyticsEventLogger {
    static final String FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS = "clx";
    private final AbstractC15587a analyticsConnector;

    public CrashlyticsOriginAnalyticsEventLogger(AbstractC15587a abstractC15587a) {
        this.analyticsConnector = abstractC15587a;
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger
    public void logEvent(String str, Bundle bundle) {
        this.analyticsConnector.mo8597a(FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS, str, bundle);
    }
}
