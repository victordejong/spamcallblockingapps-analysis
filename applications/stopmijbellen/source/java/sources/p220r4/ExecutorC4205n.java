package p220r4;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: r4.n */
/* loaded from: classes-dex2jar.jar:r4/n.class */
public final class ExecutorC4205n implements Executor {

    /* renamed from: a */
    public final Handler f13197a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f13197a.post(runnable);
    }
}
