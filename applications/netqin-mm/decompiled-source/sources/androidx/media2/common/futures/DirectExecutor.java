package androidx.media2.common.futures;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/futures/DirectExecutor.class */
public enum DirectExecutor implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "DirectExecutor";
    }
}
