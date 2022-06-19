package com.google.firebase.crashlytics.internal.send;

import com.google.android.datatransport.AbstractC10680h;
import com.google.android.gms.tasks.C14186i;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender$$Lambda$1.class */
public final /* synthetic */ class DataTransportCrashlyticsReportSender$$Lambda$1 implements AbstractC10680h {
    private final C14186i arg$1;
    private final CrashlyticsReportWithSessionId arg$2;

    private DataTransportCrashlyticsReportSender$$Lambda$1(C14186i c14186i, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId) {
        this.arg$1 = c14186i;
        this.arg$2 = crashlyticsReportWithSessionId;
    }

    public static AbstractC10680h lambdaFactory$(C14186i c14186i, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId) {
        return new DataTransportCrashlyticsReportSender$$Lambda$1(c14186i, crashlyticsReportWithSessionId);
    }

    @Override // com.google.android.datatransport.AbstractC10680h
    public final void onSchedule(Exception exc) {
        DataTransportCrashlyticsReportSender.lambda$sendReport$1(this.arg$1, this.arg$2, exc);
    }
}
