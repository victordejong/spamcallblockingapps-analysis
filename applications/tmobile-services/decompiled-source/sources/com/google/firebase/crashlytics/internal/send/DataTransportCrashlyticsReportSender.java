package com.google.firebase.crashlytics.internal.send;

import android.content.Context;
import androidx.annotation.NonNull;
import com.facebook.stetho.common.Utf8Charset;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender.class */
public class DataTransportCrashlyticsReportSender {
    private static final String CRASHLYTICS_TRANSPORT_NAME = "FIREBASE_CRASHLYTICS_REPORT";
    private static final Transformer<CrashlyticsReport, byte[]> DEFAULT_TRANSFORM;
    private final Transport<CrashlyticsReport> transport;
    private final Transformer<CrashlyticsReport, byte[]> transportTransform;
    private static final CrashlyticsReportJsonTransform TRANSFORM = new CrashlyticsReportJsonTransform();
    private static final String CRASHLYTICS_ENDPOINT = mergeStrings("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");
    private static final String CRASHLYTICS_API_KEY = mergeStrings("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    static {
        Transformer<CrashlyticsReport, byte[]> transformer;
        transformer = DataTransportCrashlyticsReportSender$$Lambda$2.instance;
        DEFAULT_TRANSFORM = transformer;
    }

    DataTransportCrashlyticsReportSender(Transport<CrashlyticsReport> transport, Transformer<CrashlyticsReport, byte[]> transformer) {
        this.transport = transport;
        this.transportTransform = transformer;
    }

    public static DataTransportCrashlyticsReportSender create(Context context) {
        TransportRuntime.m15411f(context);
        return new DataTransportCrashlyticsReportSender(TransportRuntime.m15414c().m15410g(new CCTDestination(CRASHLYTICS_ENDPOINT, CRASHLYTICS_API_KEY)).getTransport(CRASHLYTICS_TRANSPORT_NAME, CrashlyticsReport.class, Encoding.m15560b("json"), DEFAULT_TRANSFORM), DEFAULT_TRANSFORM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$sendReport$1(TaskCompletionSource taskCompletionSource, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, Exception exc) {
        if (exc != null) {
            taskCompletionSource.m10827d(exc);
        } else {
            taskCompletionSource.m10826e(crashlyticsReportWithSessionId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ byte[] lambda$static$0(CrashlyticsReport crashlyticsReport) {
        return TRANSFORM.reportToJson(crashlyticsReport).getBytes(Charset.forName(Utf8Charset.NAME));
    }

    private static String mergeStrings(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    @NonNull
    public Task<CrashlyticsReportWithSessionId> sendReport(@NonNull CrashlyticsReportWithSessionId crashlyticsReportWithSessionId) {
        CrashlyticsReport report = crashlyticsReportWithSessionId.getReport();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.transport.schedule(Event.m15555e(report), DataTransportCrashlyticsReportSender$$Lambda$1.lambdaFactory$(taskCompletionSource, crashlyticsReportWithSessionId));
        return taskCompletionSource.m10830a();
    }
}
