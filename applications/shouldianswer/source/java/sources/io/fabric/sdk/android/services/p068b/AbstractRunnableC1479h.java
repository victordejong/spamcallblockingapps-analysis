package io.fabric.sdk.android.services.p068b;

import android.os.Process;
/* renamed from: io.fabric.sdk.android.services.b.h */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/h.class */
public abstract class AbstractRunnableC1479h implements Runnable {
    protected abstract void onRun();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        onRun();
    }
}
