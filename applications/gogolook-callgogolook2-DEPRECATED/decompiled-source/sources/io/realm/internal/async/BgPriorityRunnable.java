package io.realm.internal.async;

import android.os.Process;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/async/BgPriorityRunnable.class */
public class BgPriorityRunnable implements Runnable {
    public final Runnable runnable;

    public BgPriorityRunnable(Runnable runnable) {
        this.runnable = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        this.runnable.run();
    }
}
