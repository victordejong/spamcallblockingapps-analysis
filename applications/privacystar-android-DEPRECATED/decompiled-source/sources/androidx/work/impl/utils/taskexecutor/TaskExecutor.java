package androidx.work.impl.utils.taskexecutor;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.concurrent.Executor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/taskexecutor/TaskExecutor.class */
public interface TaskExecutor {
    void executeOnBackgroundThread(Runnable runnable);

    Executor getBackgroundExecutor();

    @NonNull
    Thread getBackgroundExecutorThread();

    Executor getMainThreadExecutor();

    void postToMainThread(Runnable runnable);
}
