package com.google.firebase.crashlytics.internal.send;

import com.google.android.datatransport.e;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender$$Lambda$2.class */
final /* synthetic */ class DataTransportCrashlyticsReportSender$$Lambda$2 implements e {
    private static final DataTransportCrashlyticsReportSender$$Lambda$2 instance = new DataTransportCrashlyticsReportSender$$Lambda$2();

    private DataTransportCrashlyticsReportSender$$Lambda$2() {
    }

    @Override // com.google.android.datatransport.e
    public final Object apply(Object obj) {
        return DataTransportCrashlyticsReportSender.lambda$static$0((CrashlyticsReport) obj);
    }
}
