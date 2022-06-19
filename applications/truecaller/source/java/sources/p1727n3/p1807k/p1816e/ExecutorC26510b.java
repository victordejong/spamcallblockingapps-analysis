package p1727n3.p1807k.p1816e;

import android.os.Handler;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* renamed from: n3.k.e.b */
/* loaded from: classes-dex2jar.jar:n3/k/e/b.class */
public class ExecutorC26510b implements Executor {

    /* renamed from: a */
    public final Handler f74299a;

    public ExecutorC26510b(Handler handler) {
        Objects.requireNonNull(handler);
        this.f74299a = handler;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Handler handler = this.f74299a;
        Objects.requireNonNull(runnable);
        if (handler.post(runnable)) {
            return;
        }
        throw new RejectedExecutionException(this.f74299a + " is shutting down");
    }
}
