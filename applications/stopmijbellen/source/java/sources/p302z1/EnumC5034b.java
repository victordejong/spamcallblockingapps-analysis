package p302z1;

import java.util.concurrent.Executor;
/* renamed from: z1.b */
/* loaded from: classes-dex2jar.jar:z1/b.class */
public enum EnumC5034b implements Executor {
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
