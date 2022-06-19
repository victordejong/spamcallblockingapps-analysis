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
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/NativeCreateReportSpiCall.class */
class NativeCreateReportSpiCall extends AbstractC1468a implements CreateReportSpiCall {
    private static final String APP_META_FILE_MULTIPART_PARAM = "app_meta_file";
    private static final String BINARY_IMAGES_FILE_MULTIPART_PARAM = "binary_images_file";
    private static final String DEVICE_META_FILE_MULTIPART_PARAM = "device_meta_file";
    private static final String GZIP_FILE_CONTENT_TYPE = "application/octet-stream";
    private static final String KEYS_FILE_MULTIPART_PARAM = "keys_file";
    private static final String LOGS_FILE_MULTIPART_PARAM = "logs_file";
    private static final String METADATA_FILE_MULTIPART_PARAM = "crash_meta_file";
    private static final String MINIDUMP_FILE_MULTIPART_PARAM = "minidump_file";
    private static final String OS_META_FILE_MULTIPART_PARAM = "os_meta_file";
    private static final String REPORT_IDENTIFIER_PARAM = "report_id";
    private static final String SESSION_META_FILE_MULTIPART_PARAM = "session_meta_file";
    private static final String USER_META_FILE_MULTIPART_PARAM = "user_meta_file";

    public NativeCreateReportSpiCall(AbstractC1459h abstractC1459h, String str, String str2, AbstractC1588d abstractC1588d) {
        super(abstractC1459h, str, str2, abstractC1588d, EnumC1587c.POST);
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, String str) {
        httpRequest.m3284a(AbstractC1468a.HEADER_USER_AGENT, AbstractC1468a.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).m3284a(AbstractC1468a.HEADER_CLIENT_TYPE, AbstractC1468a.ANDROID_CLIENT_TYPE).m3284a(AbstractC1468a.HEADER_CLIENT_VERSION, this.kit.getVersion()).m3284a(AbstractC1468a.HEADER_API_KEY, str);
        return httpRequest;
    }

    private HttpRequest applyMultipartDataTo(HttpRequest httpRequest, Report report) {
        File[] files;
        httpRequest.m3257e(REPORT_IDENTIFIER_PARAM, report.getIdentifier());
        for (File file : report.getFiles()) {
            if (file.getName().equals("minidump")) {
                httpRequest.m3281a(MINIDUMP_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("metadata")) {
                httpRequest.m3281a(METADATA_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("binaryImages")) {
                httpRequest.m3281a(BINARY_IMAGES_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("session")) {
                httpRequest.m3281a(SESSION_META_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("app")) {
                httpRequest.m3281a(APP_META_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("device")) {
                httpRequest.m3281a(DEVICE_META_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("os")) {
                httpRequest.m3281a(OS_META_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("user")) {
                httpRequest.m3281a(USER_META_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("logs")) {
                httpRequest.m3281a(LOGS_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            } else if (file.getName().equals("keys")) {
                httpRequest.m3281a(KEYS_FILE_MULTIPART_PARAM, file.getName(), GZIP_FILE_CONTENT_TYPE, file);
            }
        }
        return httpRequest;
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest createReportRequest) {
        HttpRequest applyMultipartDataTo = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), createReportRequest.apiKey), createReportRequest.report);
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int m3275b = applyMultipartDataTo.m3275b();
        AbstractC1462k m3572g2 = C1449c.m3572g();
        m3572g2.mo3552a(CrashlyticsCore.TAG, "Result was: " + m3275b);
        return C1503s.m3400a(m3275b) == 0;
    }
}
