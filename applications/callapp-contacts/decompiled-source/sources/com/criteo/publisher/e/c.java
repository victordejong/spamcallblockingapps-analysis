package com.criteo.publisher.e;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/c.class */
public class c implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f17231a = new Handler(Looper.getMainLooper());

    public final void a(Runnable runnable) {
        this.f17231a.post(runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f17231a.getLooper().getThread()) {
            runnable.run();
        } else {
            this.f17231a.post(runnable);
        }
    }
}
