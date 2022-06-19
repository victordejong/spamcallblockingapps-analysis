package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId.class */
public abstract class CrashlyticsReportWithSessionId {
    public static CrashlyticsReportWithSessionId create(CrashlyticsReport crashlyticsReport, String str) {
        return new AutoValue_CrashlyticsReportWithSessionId(crashlyticsReport, str);
    }

    public abstract CrashlyticsReport getReport();

    public abstract String getSessionId();
}
