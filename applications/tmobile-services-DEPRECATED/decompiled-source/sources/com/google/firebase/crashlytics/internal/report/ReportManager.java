package com.google.firebase.crashlytics.internal.report;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.report.ReportUploader;
import com.google.firebase.crashlytics.internal.report.model.NativeSessionReport;
import com.google.firebase.crashlytics.internal.report.model.Report;
import com.google.firebase.crashlytics.internal.report.model.SessionReport;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/ReportManager.class */
public class ReportManager {
    private final ReportUploader.ReportFilesProvider reportFilesProvider;

    public ReportManager(ReportUploader.ReportFilesProvider reportFilesProvider) {
        this.reportFilesProvider = reportFilesProvider;
    }

    public boolean areReportsAvailable() {
        File[] completeSessionFiles = this.reportFilesProvider.getCompleteSessionFiles();
        File[] nativeReportFiles = this.reportFilesProvider.getNativeReportFiles();
        if (completeSessionFiles == null || completeSessionFiles.length <= 0) {
            return nativeReportFiles != null && nativeReportFiles.length > 0;
        }
        return true;
    }

    public void deleteReport(Report report) {
        report.remove();
    }

    public void deleteReports(List<Report> list) {
        for (Report report : list) {
            deleteReport(report);
        }
    }

    public List<Report> findReports() {
        Logger.getLogger().m8450d("Checking for crash reports...");
        File[] completeSessionFiles = this.reportFilesProvider.getCompleteSessionFiles();
        File[] nativeReportFiles = this.reportFilesProvider.getNativeReportFiles();
        LinkedList linkedList = new LinkedList();
        if (completeSessionFiles != null) {
            for (File file : completeSessionFiles) {
                Logger.getLogger().m8450d("Found crash report " + file.getPath());
                linkedList.add(new SessionReport(file));
            }
        }
        if (nativeReportFiles != null) {
            for (File file2 : nativeReportFiles) {
                linkedList.add(new NativeSessionReport(file2));
            }
        }
        if (linkedList.isEmpty()) {
            Logger.getLogger().m8450d("No reports found.");
        }
        return linkedList;
    }
}
