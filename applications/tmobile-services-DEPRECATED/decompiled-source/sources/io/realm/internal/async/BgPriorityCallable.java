package io.realm.internal.async;

import android.os.Process;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/async/BgPriorityCallable.class */
public class BgPriorityCallable<T> implements Callable<T> {

    /* renamed from: f */
    private final Callable<T> f20208f;

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        Process.setThreadPriority(10);
        return this.f20208f.call();
    }
}
