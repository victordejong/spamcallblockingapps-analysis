package androidx.work.impl.utils.p057a;

import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.a.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a/b.class */
enum EnumC1268b implements Executor {
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
