package androidx.work.impl.utils.a;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/b.class */
enum b implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
