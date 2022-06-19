package com.crashlytics.android.core;

import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.network.EnumC1587c;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import io.fabric.sdk.android.services.p068b.C1503s;
import java.io.File;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/DefaultCreateReportSpiCall.class */
class DefaultCreateReportSpiCall extends AbstractC1468a implements CreateReportSpiCall {
    static final String FILE_CONTENT_TYPE = "application/octet-stream";
    static final String FILE_PARAM = "report[file]";
    static final String IDENTIFIER_PARAM = "report[identifier]";
    static final String MULTI_FILE_PARAM = "report[file";

    public DefaultCreateReportSpiCall(AbstractC1459h abstractC1459h, String str, String str2, AbstractC1588d abstractC1588d) {
        super(abstractC1459h, str, str2, abstractC1588d, EnumC1587c.POST);
    }

    DefaultCreateReportSpiCall(AbstractC1459h abstractC1459h, String str, String str2, AbstractC1588d abstractC1588d, EnumC1587c enumC1587c) {
        super(abstractC1459h, str, str2, abstractC1588d, enumC1587c);
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, CreateReportRequest createReportRequest) {
        HttpRequest m3284a = httpRequest.m3284a(AbstractC1468a.HEADER_API_KEY, createReportRequest.apiKey).m3284a(AbstractC1468a.HEADER_CLIENT_TYPE, AbstractC1468a.ANDROID_CLIENT_TYPE).m3284a(AbstractC1468a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        for (Map.Entry<String, String> entry : createReportRequest.report.getCustomHeaders().entrySet()) {
            m3284a = m3284a.m3277a(entry);
        }
        return m3284a;
    }

    private HttpRequest applyMultipartDataTo(HttpRequest httpRequest, Report report) {
        File[] files;
        httpRequest.m3257e(IDENTIFIER_PARAM, report.getIdentifier());
        if (report.getFiles().length == 1) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Adding single file " + report.getFileName() + " to report " + report.getIdentifier());
            return httpRequest.m3281a(FILE_PARAM, report.getFileName(), FILE_CONTENT_TYPE, report.getFile());
        }
        int i = 0;
        for (File file : report.getFiles()) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Adding file " + file.getName() + " to report " + report.getIdentifier());
            StringBuilder sb = new StringBuilder();
            sb.append(MULTI_FILE_PARAM);
            sb.append(i);
            sb.append("]");
            httpRequest.m3281a(sb.toString(), file.getName(), FILE_CONTENT_TYPE, file);
            i++;
        }
        return httpRequest;
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest createReportRequest) {
        HttpRequest applyMultipartDataTo = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), createReportRequest), createReportRequest.report);
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int m3275b = applyMultipartDataTo.m3275b();
        AbstractC1462k m3572g2 = C1449c.m3572g();
        m3572g2.mo3552a(CrashlyticsCore.TAG, "Create report request ID: " + applyMultipartDataTo.m3272b(AbstractC1468a.HEADER_REQUEST_ID));
        AbstractC1462k m3572g3 = C1449c.m3572g();
        m3572g3.mo3552a(CrashlyticsCore.TAG, "Result was: " + m3275b);
        return C1503s.m3400a(m3275b) == 0;
    }
}
