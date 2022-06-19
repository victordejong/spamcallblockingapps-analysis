package com.millennialmedia.internal.task.reporting;

import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.task.ThreadTask;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/reporting/PlacementReportingTask.class */
public class PlacementReportingTask extends ThreadTask {
    private static final String TAG = "PlacementReportingTask";

    @Override // com.millennialmedia.internal.task.ThreadTask
    public void executeCommand() {
        AdPlacementReporter.uploadNow();
    }

    @Override // com.millennialmedia.internal.task.ThreadTask
    public String getTagName() {
        return TAG;
    }
}
