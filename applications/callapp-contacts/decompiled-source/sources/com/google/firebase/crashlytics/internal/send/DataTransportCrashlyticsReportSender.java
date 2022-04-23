package com.google.firebase.crashlytics.internal.send;

import android.content.Context;
import com.google.android.datatransport.b;
import com.google.android.datatransport.cct.a;
import com.google.android.datatransport.d;
import com.google.android.datatransport.e;
import com.google.android.datatransport.f;
import com.google.android.datatransport.g;
import com.google.android.datatransport.runtime.q;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import java.nio.charset.Charset;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender.class */
public class DataTransportCrashlyticsReportSender {
    private static final String CRASHLYTICS_TRANSPORT_NAME = "FIREBASE_CRASHLYTICS_REPORT";
    private static final e<CrashlyticsReport, byte[]> DEFAULT_TRANSFORM;
    private final f<CrashlyticsReport> transport;
    private final e<CrashlyticsReport, byte[]> transportTransform;
    private static final CrashlyticsReportJsonTransform TRANSFORM = new CrashlyticsReportJsonTransform();
    private static final String CRASHLYTICS_ENDPOINT = mergeStrings("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");
    private static final String CRASHLYTICS_API_KEY = mergeStrings("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    static {
        e<CrashlyticsReport, byte[]> eVar;
        eVar = DataTransportCrashlyticsReportSender$$Lambda$2.instance;
        DEFAULT_TRANSFORM = eVar;
    }

    DataTransportCrashlyticsReportSender(f<CrashlyticsReport> fVar, e<CrashlyticsReport, byte[]> eVar) {
        this.transport = fVar;
        this.transportTransform = eVar;
    }

    public static DataTransportCrashlyticsReportSender create(Context context) {
        q.a(context);
        g a2 = q.a().a(new a(CRASHLYTICS_ENDPOINT, CRASHLYTICS_API_KEY));
        b a3 = b.a("json");
        e<CrashlyticsReport, byte[]> eVar = DEFAULT_TRANSFORM;
        return new DataTransportCrashlyticsReportSender(a2.a(CRASHLYTICS_TRANSPORT_NAME, a3, eVar), eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$sendReport$1(i iVar, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, Exception exc) {
        if (exc != null) {
            iVar.b(exc);
        } else {
            iVar.b((i) crashlyticsReportWithSessionId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ byte[] lambda$static$0(CrashlyticsReport crashlyticsReport) {
        return TRANSFORM.reportToJson(crashlyticsReport).getBytes(Charset.forName("UTF-8"));
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

    public h<CrashlyticsReportWithSessionId> sendReport(CrashlyticsReportWithSessionId crashlyticsReportWithSessionId) {
        CrashlyticsReport report = crashlyticsReportWithSessionId.getReport();
        i iVar = new i();
        this.transport.a(new com.google.android.datatransport.a(null, report, d.HIGHEST), DataTransportCrashlyticsReportSender$$Lambda$1.lambdaFactory$(iVar, crashlyticsReportWithSessionId));
        return iVar.a();
    }
}
