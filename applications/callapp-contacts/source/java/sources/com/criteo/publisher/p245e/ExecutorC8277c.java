package com.criteo.publisher.p245e;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.e.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/c.class */
public class ExecutorC8277c implements Executor {

    /* renamed from: a */
    private final Handler f29851a = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public final void m25926a(Runnable runnable) {
        this.f29851a.post(runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f29851a.getLooper().getThread()) {
            runnable.run();
        } else {
            this.f29851a.post(runnable);
        }
    }
}
