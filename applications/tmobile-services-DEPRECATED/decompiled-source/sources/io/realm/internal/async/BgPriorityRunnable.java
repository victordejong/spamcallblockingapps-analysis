package io.realm.internal.async;

import android.os.Process;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/async/BgPriorityRunnable.class */
public class BgPriorityRunnable implements Runnable {

    /* renamed from: f */
    private final Runnable f20209f;

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        this.f20209f.run();
    }
}
