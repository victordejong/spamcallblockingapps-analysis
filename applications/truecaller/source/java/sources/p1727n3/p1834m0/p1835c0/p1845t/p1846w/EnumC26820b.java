package p1727n3.p1834m0.p1835c0.p1845t.p1846w;

import java.util.concurrent.Executor;
/* renamed from: n3.m0.c0.t.w.b */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/w/b.class */
public enum EnumC26820b implements Executor {
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
