package com.google.firebase.crashlytics.internal.send;

import android.content.Context;
import com.google.android.datatransport.AbstractC10677e;
import com.google.android.datatransport.AbstractC10678f;
import com.google.android.datatransport.AbstractC10679g;
import com.google.android.datatransport.C10626a;
import com.google.android.datatransport.C10627b;
import com.google.android.datatransport.EnumC10676d;
import com.google.android.datatransport.cct.C10629a;
import com.google.android.datatransport.runtime.C10744q;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender.class */
public class DataTransportCrashlyticsReportSender {
    private static final String CRASHLYTICS_TRANSPORT_NAME = "FIREBASE_CRASHLYTICS_REPORT";
    private final AbstractC10678f<CrashlyticsReport> transport;
    private final AbstractC10677e<CrashlyticsReport, byte[]> transportTransform;
    private static final CrashlyticsReportJsonTransform TRANSFORM = new CrashlyticsReportJsonTransform();
    private static final String CRASHLYTICS_ENDPOINT = mergeStrings("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");
    private static final String CRASHLYTICS_API_KEY = mergeStrings("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");
    private static final AbstractC10677e<CrashlyticsReport, byte[]> DEFAULT_TRANSFORM = DataTransportCrashlyticsReportSender$$Lambda$2.lambdaFactory$();

    DataTransportCrashlyticsReportSender(AbstractC10678f<CrashlyticsReport> abstractC10678f, AbstractC10677e<CrashlyticsReport, byte[]> abstractC10677e) {
        this.transport = abstractC10678f;
        this.transportTransform = abstractC10677e;
    }

    public static DataTransportCrashlyticsReportSender create(Context context) {
        C10744q.m22440a(context);
        AbstractC10679g m22439a = C10744q.m22441a().m22439a(new C10629a(CRASHLYTICS_ENDPOINT, CRASHLYTICS_API_KEY));
        C10627b m22610a = C10627b.m22610a("json");
        AbstractC10677e<CrashlyticsReport, byte[]> abstractC10677e = DEFAULT_TRANSFORM;
        return new DataTransportCrashlyticsReportSender(m22439a.mo8245a(CRASHLYTICS_TRANSPORT_NAME, m22610a, abstractC10677e), abstractC10677e);
    }

    public static /* synthetic */ void lambda$sendReport$1(C14186i c14186i, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, Exception exc) {
        if (exc != null) {
            c14186i.m11470b(exc);
        } else {
            c14186i.m11469b((C14186i) crashlyticsReportWithSessionId);
        }
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

    public AbstractC14185h<CrashlyticsReportWithSessionId> sendReport(CrashlyticsReportWithSessionId crashlyticsReportWithSessionId) {
        CrashlyticsReport report = crashlyticsReportWithSessionId.getReport();
        C14186i c14186i = new C14186i();
        this.transport.mo8246a(new C10626a(null, report, EnumC10676d.HIGHEST), DataTransportCrashlyticsReportSender$$Lambda$1.lambdaFactory$(c14186i, crashlyticsReportWithSessionId));
        return c14186i.m11473a();
    }
}
