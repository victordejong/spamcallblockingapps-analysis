package com.crashlytics.android.core;

import com.google.android.flexbox.FlexItem;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.AbstractRunnableC1479h;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader.class */
public class ReportUploader {
    static final Map<String, String> HEADER_INVALID_CLS_FILE = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
    private static final short[] RETRY_INTERVALS = {10, 20, 30, 60, 120, 300};
    private final String apiKey;
    private final CreateReportSpiCall createReportCall;
    private final Object fileAccessLock = new Object();
    private final HandlingExceptionCheck handlingExceptionCheck;
    private final ReportFilesProvider reportFilesProvider;
    private Thread uploadThread;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$AlwaysSendCheck.class */
    public static final class AlwaysSendCheck implements SendCheck {
        @Override // com.crashlytics.android.core.ReportUploader.SendCheck
        public boolean canSendReports() {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$HandlingExceptionCheck.class */
    public interface HandlingExceptionCheck {
        boolean isHandlingException();
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$ReportFilesProvider.class */
    public interface ReportFilesProvider {
        File[] getCompleteSessionFiles();

        File[] getInvalidSessionFiles();

        File[] getNativeReportFiles();
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$SendCheck.class */
    public interface SendCheck {
        boolean canSendReports();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ReportUploader$Worker.class */
    public class Worker extends AbstractRunnableC1479h {
        private final float delay;
        private final SendCheck sendCheck;

        Worker(float f, SendCheck sendCheck) {
            ReportUploader.this = r4;
            this.delay = f;
            this.sendCheck = sendCheck;
        }

        private void attemptUploadWithRetry() {
            float f;
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Starting report processing in " + this.delay + " second(s)...");
            if (this.delay > FlexItem.FLEX_GROW_DEFAULT) {
                try {
                    Thread.sleep(f * 1000.0f);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            List<Report> findReports = ReportUploader.this.findReports();
            if (ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                return;
            }
            if (!findReports.isEmpty() && !this.sendCheck.canSendReports()) {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "User declined to send. Removing " + findReports.size() + " Report(s).");
                for (Report report : findReports) {
                    report.remove();
                }
                return;
            }
            int i = 0;
            while (!findReports.isEmpty() && !ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Attempting to send " + findReports.size() + " report(s)");
                for (Report report2 : findReports) {
                    ReportUploader.this.forceUpload(report2);
                }
                List<Report> findReports2 = ReportUploader.this.findReports();
                findReports = findReports2;
                if (!findReports2.isEmpty()) {
                    long j = ReportUploader.RETRY_INTERVALS[Math.min(i, ReportUploader.RETRY_INTERVALS.length - 1)];
                    C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Report submisson: scheduling delayed retry in " + j + " seconds");
                    try {
                        Thread.sleep(j * 1000);
                        i++;
                        findReports = findReports2;
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
            }
        }

        @Override // io.fabric.sdk.android.services.p068b.AbstractRunnableC1479h
        public void onRun() {
            try {
                attemptUploadWithRetry();
            } catch (Exception e) {
                C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "An unexpected error occurred while attempting to upload crash reports.", e);
            }
            ReportUploader.this.uploadThread = null;
        }
    }

    public ReportUploader(String str, CreateReportSpiCall createReportSpiCall, ReportFilesProvider reportFilesProvider, HandlingExceptionCheck handlingExceptionCheck) {
        if (createReportSpiCall != null) {
            this.createReportCall = createReportSpiCall;
            this.apiKey = str;
            this.reportFilesProvider = reportFilesProvider;
            this.handlingExceptionCheck = handlingExceptionCheck;
            return;
        }
        throw new IllegalArgumentException("createReportCall must not be null.");
    }

    List<Report> findReports() {
        File[] completeSessionFiles;
        File[] invalidSessionFiles;
        File[] nativeReportFiles;
        C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Checking for crash reports...");
        synchronized (this.fileAccessLock) {
            completeSessionFiles = this.reportFilesProvider.getCompleteSessionFiles();
            invalidSessionFiles = this.reportFilesProvider.getInvalidSessionFiles();
            nativeReportFiles = this.reportFilesProvider.getNativeReportFiles();
        }
        LinkedList linkedList = new LinkedList();
        if (completeSessionFiles != null) {
            for (File file : completeSessionFiles) {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Found crash report " + file.getPath());
                linkedList.add(new SessionReport(file));
            }
        }
        HashMap hashMap = new HashMap();
        if (invalidSessionFiles != null) {
            for (File file2 : invalidSessionFiles) {
                String sessionIdFromSessionFile = CrashlyticsController.getSessionIdFromSessionFile(file2);
                if (!hashMap.containsKey(sessionIdFromSessionFile)) {
                    hashMap.put(sessionIdFromSessionFile, new LinkedList());
                }
                ((List) hashMap.get(sessionIdFromSessionFile)).add(file2);
            }
        }
        for (String str : hashMap.keySet()) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Found invalid session: " + str);
            List list = (List) hashMap.get(str);
            linkedList.add(new InvalidSessionReport(str, (File[]) list.toArray(new File[list.size()])));
        }
        if (nativeReportFiles != null) {
            for (File file3 : nativeReportFiles) {
                linkedList.add(new NativeSessionReport(file3));
            }
        }
        if (linkedList.isEmpty()) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "No reports found.");
        }
        return linkedList;
    }

    public boolean forceUpload(Report report) {
        boolean z;
        synchronized (this.fileAccessLock) {
            try {
                boolean invoke = this.createReportCall.invoke(new CreateReportRequest(this.apiKey, report));
                AbstractC1462k m3572g = C1449c.m3572g();
                StringBuilder sb = new StringBuilder();
                sb.append("Crashlytics report upload ");
                sb.append(invoke ? "complete: " : "FAILED: ");
                sb.append(report.getIdentifier());
                m3572g.mo3549c(CrashlyticsCore.TAG, sb.toString());
                z = false;
                if (invoke) {
                    report.remove();
                    z = true;
                }
            } catch (Exception e) {
                C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Error occurred sending report " + report, e);
                z = false;
            }
        }
        return z;
    }

    boolean isUploading() {
        return this.uploadThread != null;
    }

    public void uploadReports(float f, SendCheck sendCheck) {
        synchronized (this) {
            if (this.uploadThread != null) {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Report upload has already been started.");
                return;
            }
            this.uploadThread = new Thread(new Worker(f, sendCheck), "Crashlytics Report Uploader");
            this.uploadThread.start();
        }
    }
}
