package com.google.firebase.crashlytics.internal.send;

import com.google.android.datatransport.AbstractC10677e;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.nio.charset.Charset;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender$$Lambda$2.class */
final /* synthetic */ class DataTransportCrashlyticsReportSender$$Lambda$2 implements AbstractC10677e {
    private static final DataTransportCrashlyticsReportSender$$Lambda$2 instance = new DataTransportCrashlyticsReportSender$$Lambda$2();

    private DataTransportCrashlyticsReportSender$$Lambda$2() {
    }

    public static AbstractC10677e lambdaFactory$() {
        return instance;
    }

    @Override // com.google.android.datatransport.AbstractC10677e
    public final Object apply(Object obj) {
        byte[] bytes;
        bytes = DataTransportCrashlyticsReportSender.TRANSFORM.reportToJson((CrashlyticsReport) obj).getBytes(Charset.forName("UTF-8"));
        return bytes;
    }
}
