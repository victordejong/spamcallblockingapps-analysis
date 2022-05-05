package io.realm.internal.async;

import android.os.Process;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/async/BgPriorityCallable.class */
public class BgPriorityCallable<T> implements Callable<T> {
    public final Callable<T> callable;

    public BgPriorityCallable(Callable<T> callable) {
        this.callable = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        Process.setThreadPriority(10);
        return this.callable.call();
    }
}
