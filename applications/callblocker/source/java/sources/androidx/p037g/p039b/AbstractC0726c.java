package androidx.p037g.p039b;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.g.b.c */
/* loaded from: classes-dex2jar.jar:androidx/g/b/c.class */
public abstract class AbstractC0726c<Params, Progress, Result> {

    /* renamed from: f */
    private static HandlerC0732b f2598f;

    /* renamed from: a */
    private static final ThreadFactory f2595a = new ThreadFactory() { // from class: androidx.g.b.c.1

        /* renamed from: a */
        private final AtomicInteger f2605a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f2605a.getAndIncrement());
        }
    };

    /* renamed from: b */
    private static final BlockingQueue<Runnable> f2596b = new LinkedBlockingQueue(10);

    /* renamed from: c */
    public static final Executor f2597c = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, f2596b, f2595a);

    /* renamed from: g */
    private static volatile Executor f2599g = f2597c;

    /* renamed from: j */
    private volatile EnumC0733c f2604j = EnumC0733c.PENDING;

    /* renamed from: d */
    final AtomicBoolean f2600d = new AtomicBoolean();

    /* renamed from: e */
    final AtomicBoolean f2601e = new AtomicBoolean();

    /* renamed from: h */
    private final AbstractCallableC0734d<Params, Result> f2602h = new AbstractCallableC0734d<Params, Result>() { // from class: androidx.g.b.c.2
        @Override // java.util.concurrent.Callable
        public Result call() {
            AbstractC0726c.this.f2601e.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                Result result2 = (Result) AbstractC0726c.this.mo19546a((Object[]) this.f2615b);
                result = result2;
                Binder.flushPendingCommands();
                AbstractC0726c.this.m19539d(result2);
                return result2;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
    };

    /* renamed from: i */
    private final FutureTask<Result> f2603i = new FutureTask<Result>(this.f2602h) { // from class: androidx.g.b.c.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                AbstractC0726c.this.m19541c(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException e2) {
                AbstractC0726c.this.m19541c(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.g.b.c$4 */
    /* loaded from: classes-dex2jar.jar:androidx/g/b/c$4.class */
    public static /* synthetic */ class C07304 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2608a = new int[EnumC0733c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0024 -> B:11:0x0014). Please submit an issue!!! */
        static {
            try {
                f2608a[EnumC0733c.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2608a[EnumC0733c.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: androidx.g.b.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/g/b/c$a.class */
    public static class C0731a<Data> {

        /* renamed from: a */
        final AbstractC0726c f2609a;

        /* renamed from: b */
        final Data[] f2610b;

        C0731a(AbstractC0726c abstractC0726c, Data... dataArr) {
            this.f2609a = abstractC0726c;
            this.f2610b = dataArr;
        }
    }

    /* renamed from: androidx.g.b.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/g/b/c$b.class */
    public static class HandlerC0732b extends Handler {
        HandlerC0732b() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C0731a c0731a = (C0731a) message.obj;
            switch (message.what) {
                case 1:
                    c0731a.f2609a.m19538e(c0731a.f2610b[0]);
                    return;
                case 2:
                    c0731a.f2609a.m19543b((Object[]) c0731a.f2610b);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: androidx.g.b.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/g/b/c$c.class */
    public enum EnumC0733c {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.g.b.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/g/b/c$d.class */
    public static abstract class AbstractCallableC0734d<Params, Result> implements Callable<Result> {

        /* renamed from: b */
        Params[] f2615b;

        AbstractCallableC0734d() {
        }
    }

    /* renamed from: d */
    private static Handler m19540d() {
        HandlerC0732b handlerC0732b;
        synchronized (AbstractC0726c.class) {
            try {
                if (f2598f == null) {
                    f2598f = new HandlerC0732b();
                }
                handlerC0732b = f2598f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handlerC0732b;
    }

    /* renamed from: a */
    public final AbstractC0726c<Params, Progress, Result> m19548a(Executor executor, Params... paramsArr) {
        if (this.f2604j != EnumC0733c.PENDING) {
            switch (C07304.f2608a[this.f2604j.ordinal()]) {
                case 1:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case 2:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
                default:
                    throw new IllegalStateException("We should never reach this state");
            }
        }
        this.f2604j = EnumC0733c.RUNNING;
        m19550a();
        this.f2602h.f2615b = paramsArr;
        executor.execute(this.f2603i);
        return this;
    }

    /* renamed from: a */
    protected abstract Result mo19546a(Params... paramsArr);

    /* renamed from: a */
    protected void m19550a() {
    }

    /* renamed from: a */
    protected void mo19549a(Result result) {
    }

    /* renamed from: a */
    public final boolean m19547a(boolean z) {
        this.f2600d.set(true);
        return this.f2603i.cancel(z);
    }

    /* renamed from: b */
    protected void m19545b() {
    }

    /* renamed from: b */
    protected void mo19544b(Result result) {
        m19545b();
    }

    /* renamed from: b */
    protected void m19543b(Progress... progressArr) {
    }

    /* renamed from: c */
    void m19541c(Result result) {
        if (!this.f2601e.get()) {
            m19539d(result);
        }
    }

    /* renamed from: c */
    public final boolean m19542c() {
        return this.f2600d.get();
    }

    /* renamed from: d */
    Result m19539d(Result result) {
        m19540d().obtainMessage(1, new C0731a(this, result)).sendToTarget();
        return result;
    }

    /* renamed from: e */
    void m19538e(Result result) {
        if (m19542c()) {
            mo19544b((AbstractC0726c<Params, Progress, Result>) result);
        } else {
            mo19549a((AbstractC0726c<Params, Progress, Result>) result);
        }
        this.f2604j = EnumC0733c.FINISHED;
    }
}
