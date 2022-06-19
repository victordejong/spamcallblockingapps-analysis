package com.millennialmedia.internal.task;

import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.ThreadUtils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/task/ThreadTask.class */
public abstract class ThreadTask extends Task {
    private static volatile ThreadUtils.ScheduledRunnable scheduledRunnable;

    private void cancel() {
        if (scheduledRunnable != null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(getTagName(), "Cancelling task.");
            }
            scheduledRunnable.cancel();
            scheduledRunnable = null;
        }
    }

    @Override // com.millennialmedia.internal.task.Task
    public void execute(long j) {
        cancel();
        scheduledRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.task.ThreadTask.1
            @Override // java.lang.Runnable
            public void run() {
                ThreadTask.this.executeCommand();
                ThreadUtils.ScheduledRunnable unused = ThreadTask.scheduledRunnable = null;
            }
        }, j);
    }

    public abstract void executeCommand();

    public abstract String getTagName();
}
