package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/AutoValue_CrashlyticsReportWithSessionId.class */
final class AutoValue_CrashlyticsReportWithSessionId extends CrashlyticsReportWithSessionId {
    private final CrashlyticsReport report;
    private final String sessionId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_CrashlyticsReportWithSessionId(CrashlyticsReport crashlyticsReport, String str) {
        if (crashlyticsReport != null) {
            this.report = crashlyticsReport;
            if (str != null) {
                this.sessionId = str;
                return;
            }
            throw new NullPointerException("Null sessionId");
        }
        throw new NullPointerException("Null report");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReportWithSessionId)) {
            return false;
        }
        CrashlyticsReportWithSessionId crashlyticsReportWithSessionId = (CrashlyticsReportWithSessionId) obj;
        if (!this.report.equals(crashlyticsReportWithSessionId.getReport()) || !this.sessionId.equals(crashlyticsReportWithSessionId.getSessionId())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId
    public CrashlyticsReport getReport() {
        return this.report;
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId
    public String getSessionId() {
        return this.sessionId;
    }

    public int hashCode() {
        return ((this.report.hashCode() ^ 1000003) * 1000003) ^ this.sessionId.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.report + ", sessionId=" + this.sessionId + "}";
    }
}
