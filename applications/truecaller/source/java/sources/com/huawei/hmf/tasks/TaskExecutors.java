package com.huawei.hmf.tasks;

import com.huawei.hmf.tasks.p083a.C2240a;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/TaskExecutors.class */
public final class TaskExecutors {
    private static final TaskExecutors INSTANCE = new TaskExecutors();
    private final ExecutorService mBackground = C2240a.m38205a();
    private final Executor mImmediate = new ImmediateExecutor();
    private final Executor mUiThread = C2240a.m38204b();

    /* loaded from: classes3-dex2jar.jar:com/huawei/hmf/tasks/TaskExecutors$ImmediateExecutor.class */
    public static final class ImmediateExecutor implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    }

    private TaskExecutors() {
    }

    public static ExecutorService background() {
        return INSTANCE.mBackground;
    }

    public static Executor immediate() {
        return INSTANCE.mImmediate;
    }

    public static Executor uiThread() {
        return INSTANCE.mUiThread;
    }
}
