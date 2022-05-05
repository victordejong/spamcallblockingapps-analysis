package com.apptentive.android.sdk.util.threading;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.debug.ErrorMetrics;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/threading/DispatchTask.class */
public abstract class DispatchTask implements Runnable {
    private boolean cancelled;
    private boolean scheduled;

    private void setCancelled(boolean z) {
        synchronized (this) {
            this.cancelled = z;
        }
    }

    public void cancel() {
        synchronized (this) {
            this.cancelled = true;
        }
    }

    protected abstract void execute();

    public boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.cancelled;
        }
        return z;
    }

    public boolean isScheduled() {
        boolean z;
        synchronized (this) {
            z = this.scheduled;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                setScheduled(false);
                if (!isCancelled()) {
                    execute();
                }
            } catch (Exception e) {
                ApptentiveLog.m15641e(e, "Exception while executing task", new Object[0]);
                ErrorMetrics.logException(e);
            }
        } finally {
            setCancelled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setScheduled(boolean z) {
        synchronized (this) {
            this.scheduled = z;
        }
    }
}
