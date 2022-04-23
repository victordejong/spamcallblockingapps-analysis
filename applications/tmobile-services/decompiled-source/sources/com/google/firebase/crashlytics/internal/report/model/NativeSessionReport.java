package com.google.firebase.crashlytics.internal.report.model;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.report.model.Report;
import java.io.File;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/report/model/NativeSessionReport.class */
public class NativeSessionReport implements Report {
    private final File reportDirectory;

    public NativeSessionReport(File file) {
        this.reportDirectory = file;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public Map<String, String> getCustomHeaders() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public File getFile() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public String getFileName() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public File[] getFiles() {
        return this.reportDirectory.listFiles();
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public String getIdentifier() {
        return this.reportDirectory.getName();
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public Report.Type getType() {
        return Report.Type.NATIVE;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public void remove() {
        File[] files;
        for (File file : getFiles()) {
            Logger.getLogger().m8450d("Removing native report file at " + file.getPath());
            file.delete();
        }
        Logger.getLogger().m8450d("Removing native report directory at " + this.reportDirectory);
        this.reportDirectory.delete();
    }
}
