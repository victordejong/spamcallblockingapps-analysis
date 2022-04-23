package com.google.firebase.crashlytics.internal.send;

import com.google.android.datatransport.h;
import com.google.android.gms.tasks.i;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender$$Lambda$1.class */
final /* synthetic */ class DataTransportCrashlyticsReportSender$$Lambda$1 implements h {
    private final i arg$1;
    private final CrashlyticsReportWithSessionId arg$2;

    private DataTransportCrashlyticsReportSender$$Lambda$1(i iVar, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId) {
        this.arg$1 = iVar;
        this.arg$2 = crashlyticsReportWithSessionId;
    }

    public static h lambdaFactory$(i iVar, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId) {
        return new DataTransportCrashlyticsReportSender$$Lambda$1(iVar, crashlyticsReportWithSessionId);
    }

    @Override // com.google.android.datatransport.h
    public final void onSchedule(Exception exc) {
        DataTransportCrashlyticsReportSender.lambda$sendReport$1(this.arg$1, this.arg$2, exc);
    }
}
