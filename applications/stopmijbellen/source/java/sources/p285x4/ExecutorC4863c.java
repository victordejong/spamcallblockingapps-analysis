package p285x4;

import java.util.concurrent.Executor;
/* renamed from: x4.c */
/* loaded from: classes-dex2jar.jar:x4/c.class */
public final /* synthetic */ class ExecutorC4863c implements Executor {

    /* renamed from: a */
    public static final Executor f14907a = new ExecutorC4863c();

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
