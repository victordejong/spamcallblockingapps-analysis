package com.millennialmedia.internal.task;

import android.os.Build;
import com.millennialmedia.internal.task.handshake.HandshakeRequestJobSchedulerTask;
import com.millennialmedia.internal.task.handshake.HandshakeRequestTask;
import com.millennialmedia.internal.task.reporting.PlacementReportingJobSchedulerTask;
import com.millennialmedia.internal.task.reporting.PlacementReportingTask;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/TaskFactory.class */
public final class TaskFactory {
    private TaskFactory() {
    }

    public static Task createAdPlacementReporterTask() {
        return isJobSchedulerSupported() ? new PlacementReportingJobSchedulerTask() : new PlacementReportingTask();
    }

    public static Task createHandshakeRequestTask() {
        return isJobSchedulerSupported() ? new HandshakeRequestJobSchedulerTask() : new HandshakeRequestTask();
    }

    private static boolean isJobSchedulerSupported() {
        return Build.VERSION.SDK_INT >= 23;
    }
}
