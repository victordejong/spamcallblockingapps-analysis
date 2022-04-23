package com.criteo.publisher.p026s;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.s.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/s/a.class */
public class ExecutorC2095a implements Executor {

    /* renamed from: a */
    public final Handler f2344a = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public void m35699a(@NonNull Runnable runnable) {
        this.f2344a.post(runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        if (Thread.currentThread() == this.f2344a.getLooper().getThread()) {
            runnable.run();
        } else {
            this.f2344a.post(runnable);
        }
    }
}
