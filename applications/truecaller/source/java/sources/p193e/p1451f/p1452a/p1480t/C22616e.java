package p193e.p1451f.p1452a.p1480t;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: e.f.a.t.e */
/* loaded from: classes-dex2jar.jar:e/f/a/t/e.class */
public final class C22616e {

    /* renamed from: a */
    public static final Executor f62636a = new ExecutorC22617a();

    /* renamed from: b */
    public static final Executor f62637b = new ExecutorC22618b();

    /* renamed from: e.f.a.t.e$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/e$a.class */
    public class ExecutorC22617a implements Executor {

        /* renamed from: a */
        public final Handler f62638a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f62638a.post(runnable);
        }
    }

    /* renamed from: e.f.a.t.e$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/e$b.class */
    public class ExecutorC22618b implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }
}
