package android.arch.core.executor;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:android/arch/core/executor/TaskExecutor.class */
public abstract class TaskExecutor {
    public abstract void executeOnDiskIO(@NonNull Runnable runnable);

    public void executeOnMainThread(@NonNull Runnable runnable) {
        if (isMainThread()) {
            runnable.run();
        } else {
            postToMainThread(runnable);
        }
    }

    public abstract boolean isMainThread();

    public abstract void postToMainThread(@NonNull Runnable runnable);
}
