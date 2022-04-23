package androidx.work.impl.utils;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.concurrent.Executor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/SynchronousExecutor.class */
public class SynchronousExecutor implements Executor {
    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        runnable.run();
    }
}
