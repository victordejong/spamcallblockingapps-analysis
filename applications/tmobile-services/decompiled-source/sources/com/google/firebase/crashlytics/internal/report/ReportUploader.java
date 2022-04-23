package com.google.firebase.crashlytics.internal.report;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.BackgroundPriorityRunnable;
import com.google.firebase.crashlytics.internal.common.DataTransportState;
import com.google.firebase.crashlytics.internal.report.model.Report;
import com.google.firebase.crashlytics.internal.report.network.CreateReportSpiCall;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/ReportUploader.class */
public class ReportUploader {
    private static final short[] RETRY_INTERVALS = {10, 20, 30, 60, 120, 300};
    private final CreateReportSpiCall createReportCall;
    private final DataTransportState dataTransportState;
    private final String googleAppId;
    private final HandlingExceptionCheck handlingExceptionCheck;
    @Nullable
    private final String organizationId;
    private final ReportManager reportManager;
    private Thread uploadThread;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck.class */
    public interface HandlingExceptionCheck {
        boolean isHandlingException();
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/ReportUploader$Provider.class */
    public interface Provider {
        ReportUploader createReportUploader(@NonNull AppSettingsData appSettingsData);
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/ReportUploader$ReportFilesProvider.class */
    public interface ReportFilesProvider {
        File[] getCompleteSessionFiles();

        File[] getNativeReportFiles();
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/ReportUploader$Worker.class */
    private class Worker extends BackgroundPriorityRunnable {
        private final boolean dataCollectionToken;
        private final float delay;
        private final List<Report> reports;

        Worker(List<Report> list, boolean z, float f) {
            this.reports = list;
            this.dataCollectionToken = z;
            this.delay = f;
        }

        private void attemptUploadWithRetry(List<Report> list, boolean z) {
            float f;
            Logger.getLogger().m8450d("Starting report processing in " + this.delay + " second(s)...");
            if (this.delay > 0.0f) {
                try {
                    Thread.sleep(f * 1000.0f);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            if (!ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                int i = 0;
                while (list.size() > 0 && !ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                    Logger.getLogger().m8450d("Attempting to send " + list.size() + " report(s)");
                    ArrayList arrayList = new ArrayList();
                    for (Report report : list) {
                        if (!ReportUploader.this.uploadReport(report, z)) {
                            arrayList.add(report);
                        }
                    }
                    i = i;
                    if (arrayList.size() > 0) {
                        long j = ReportUploader.RETRY_INTERVALS[Math.min(i, ReportUploader.RETRY_INTERVALS.length - 1)];
                        Logger.getLogger().m8450d("Report submission: scheduling delayed retry in " + j + " seconds");
                        try {
                            Thread.sleep(j * 1000);
                            i++;
                        } catch (InterruptedException e2) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                    }
                    list = arrayList;
                }
            }
        }

        @Override // com.google.firebase.crashlytics.internal.common.BackgroundPriorityRunnable
        public void onRun() {
            try {
                attemptUploadWithRetry(this.reports, this.dataCollectionToken);
            } catch (Exception e) {
                Logger.getLogger().m8447e("An unexpected error occurred while attempting to upload crash reports.", e);
            }
            ReportUploader.this.uploadThread = null;
        }
    }

    public ReportUploader(@Nullable String str, String str2, DataTransportState dataTransportState, ReportManager reportManager, CreateReportSpiCall createReportSpiCall, HandlingExceptionCheck handlingExceptionCheck) {
        if (createReportSpiCall != null) {
            this.createReportCall = createReportSpiCall;
            this.organizationId = str;
            this.googleAppId = str2;
            this.dataTransportState = dataTransportState;
            this.reportManager = reportManager;
            this.handlingExceptionCheck = handlingExceptionCheck;
            return;
        }
        throw new IllegalArgumentException("createReportCall must not be null.");
    }

    boolean isUploading() {
        return this.uploadThread != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a5 A[Catch: Exception -> 0x00b3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00b3, blocks: (B:3:0x0002, B:5:0x001f, B:6:0x002a, B:8:0x0034, B:10:0x0040, B:13:0x004d, B:17:0x0080, B:21:0x00a5), top: B:27:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean uploadReport(com.google.firebase.crashlytics.internal.report.model.Report r6, boolean r7) {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            com.google.firebase.crashlytics.internal.report.model.CreateReportRequest r0 = new com.google.firebase.crashlytics.internal.report.model.CreateReportRequest     // Catch: Exception -> 0x00b3
            r9 = r0
            r0 = r9
            r1 = r5
            java.lang.String r1 = r1.organizationId     // Catch: Exception -> 0x00b3
            r2 = r5
            java.lang.String r2 = r2.googleAppId     // Catch: Exception -> 0x00b3
            r3 = r6
            r0.<init>(r1, r2, r3)     // Catch: Exception -> 0x00b3
            r0 = r5
            com.google.firebase.crashlytics.internal.common.DataTransportState r0 = r0.dataTransportState     // Catch: Exception -> 0x00b3
            com.google.firebase.crashlytics.internal.common.DataTransportState r1 = com.google.firebase.crashlytics.internal.common.DataTransportState.ALL     // Catch: Exception -> 0x00b3
            if (r0 != r1) goto L_0x002a
            com.google.firebase.crashlytics.internal.Logger r0 = com.google.firebase.crashlytics.internal.Logger.getLogger()     // Catch: Exception -> 0x00b3
            java.lang.String r1 = "Send to Reports Endpoint disabled. Removing Reports Endpoint report."
            r0.m8450d(r1)     // Catch: Exception -> 0x00b3
            goto L_0x0048
        L_0x002a:
            r0 = r5
            com.google.firebase.crashlytics.internal.common.DataTransportState r0 = r0.dataTransportState     // Catch: Exception -> 0x00b3
            com.google.firebase.crashlytics.internal.common.DataTransportState r1 = com.google.firebase.crashlytics.internal.common.DataTransportState.JAVA_ONLY     // Catch: Exception -> 0x00b3
            if (r0 != r1) goto L_0x004d
            r0 = r6
            com.google.firebase.crashlytics.internal.report.model.Report$Type r0 = r0.getType()     // Catch: Exception -> 0x00b3
            com.google.firebase.crashlytics.internal.report.model.Report$Type r1 = com.google.firebase.crashlytics.internal.report.model.Report.Type.JAVA     // Catch: Exception -> 0x00b3
            if (r0 != r1) goto L_0x004d
            com.google.firebase.crashlytics.internal.Logger r0 = com.google.firebase.crashlytics.internal.Logger.getLogger()     // Catch: Exception -> 0x00b3
            java.lang.String r1 = "Send to Reports Endpoint for non-native reports disabled. Removing Reports Uploader report."
            r0.m8450d(r1)     // Catch: Exception -> 0x00b3
        L_0x0048:
            r0 = 1
            r7 = r0
            goto L_0x009e
        L_0x004d:
            r0 = r5
            com.google.firebase.crashlytics.internal.report.network.CreateReportSpiCall r0 = r0.createReportCall     // Catch: Exception -> 0x00b3
            r1 = r9
            r2 = r7
            boolean r0 = r0.invoke(r1, r2)     // Catch: Exception -> 0x00b3
            r7 = r0
            com.google.firebase.crashlytics.internal.Logger r0 = com.google.firebase.crashlytics.internal.Logger.getLogger()     // Catch: Exception -> 0x00b3
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x00b3
            r11 = r0
            r0 = r11
            r0.<init>()     // Catch: Exception -> 0x00b3
            r0 = r11
            java.lang.String r1 = "Crashlytics Reports Endpoint upload "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00b3
            r0 = r7
            if (r0 == 0) goto L_0x007c
            java.lang.String r0 = "complete: "
            r9 = r0
            goto L_0x0080
        L_0x007c:
            java.lang.String r0 = "FAILED: "
            r9 = r0
        L_0x0080:
            r0 = r11
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00b3
            r0 = r11
            r1 = r6
            java.lang.String r1 = r1.getIdentifier()     // Catch: Exception -> 0x00b3
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00b3
            r0 = r10
            r1 = r11
            java.lang.String r1 = r1.toString()     // Catch: Exception -> 0x00b3
            r0.m8446i(r1)     // Catch: Exception -> 0x00b3
        L_0x009e:
            r0 = r8
            r12 = r0
            r0 = r7
            if (r0 == 0) goto L_0x00e1
            r0 = r5
            com.google.firebase.crashlytics.internal.report.ReportManager r0 = r0.reportManager     // Catch: Exception -> 0x00b3
            r1 = r6
            r0.deleteReport(r1)     // Catch: Exception -> 0x00b3
            r0 = 1
            r12 = r0
            goto L_0x00e1
        L_0x00b3:
            r11 = move-exception
            com.google.firebase.crashlytics.internal.Logger r0 = com.google.firebase.crashlytics.internal.Logger.getLogger()
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Error occurred sending report "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r9
            java.lang.String r1 = r1.toString()
            r2 = r11
            r0.m8447e(r1, r2)
            r0 = r8
            r12 = r0
        L_0x00e1:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.report.ReportUploader.uploadReport(com.google.firebase.crashlytics.internal.report.model.Report, boolean):boolean");
    }

    public void uploadReportsAsync(List<Report> list, boolean z, float f) {
        synchronized (this) {
            if (this.uploadThread != null) {
                Logger.getLogger().m8450d("Report upload has already been started.");
                return;
            }
            Thread thread = new Thread(new Worker(list, z, f), "Crashlytics Report Uploader");
            this.uploadThread = thread;
            thread.start();
        }
    }
}
