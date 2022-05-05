package com.crashlytics.android.core;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CreateReportRequest.class */
class CreateReportRequest {
    public final String apiKey;
    public final Report report;

    public CreateReportRequest(String str, Report report) {
        this.apiKey = str;
        this.report = report;
    }
}
