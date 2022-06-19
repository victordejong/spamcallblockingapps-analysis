package androidx.loader.content;

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
/* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask.class */
public abstract class ModernAsyncTask<Params, Progress, Result> {

    /* renamed from: d */
    private static final ThreadFactory f3738d;

    /* renamed from: e */
    private static final BlockingQueue<Runnable> f3739e;

    /* renamed from: f */
    public static final Executor f3740f;

    /* renamed from: g */
    private static HandlerC0829f f3741g;

    /* renamed from: h */
    private static volatile Executor f3742h;

    /* renamed from: i */
    private final AbstractCallableC0830g<Params, Result> f3743i;

    /* renamed from: j */
    private final FutureTask<Result> f3744j;

    /* renamed from: k */
    private volatile Status f3745k = Status.PENDING;

    /* renamed from: l */
    final AtomicBoolean f3746l = new AtomicBoolean();

    /* renamed from: m */
    final AtomicBoolean f3747m = new AtomicBoolean();

    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$Status.class */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$a */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$a.class */
    static final class ThreadFactoryC0824a implements ThreadFactory {

        /* renamed from: a */
        private final AtomicInteger f3752a = new AtomicInteger(1);

        ThreadFactoryC0824a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f3752a.getAndIncrement());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.loader.content.ModernAsyncTask$b */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$b.class */
    public class C0825b extends AbstractCallableC0830g<Params, Result> {
        C0825b() {
            ModernAsyncTask.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Result call() {
            ModernAsyncTask.this.f3747m.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                Result result2 = (Result) ModernAsyncTask.this.mo32325b(this.f3758a);
                result = result2;
                Binder.flushPendingCommands();
                ModernAsyncTask.this.m32333l(result2);
                return result2;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.loader.content.ModernAsyncTask$c */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$c.class */
    public class C0826c extends FutureTask<Result> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0826c(Callable callable) {
            super(callable);
            ModernAsyncTask.this = r4;
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                ModernAsyncTask.this.m32332m(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException e2) {
                ModernAsyncTask.this.m32332m(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.loader.content.ModernAsyncTask$d */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$d.class */
    public static /* synthetic */ class C0827d {

        /* renamed from: a */
        static final /* synthetic */ int[] f3755a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Status.values().length];
            f3755a = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3755a[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$e */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$e.class */
    public static class C0828e<Data> {

        /* renamed from: a */
        final ModernAsyncTask f3756a;

        /* renamed from: b */
        final Data[] f3757b;

        C0828e(ModernAsyncTask modernAsyncTask, Data... dataArr) {
            this.f3756a = modernAsyncTask;
            this.f3757b = dataArr;
        }
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$f */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$f.class */
    public static class HandlerC0829f extends Handler {
        HandlerC0829f() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C0828e c0828e = (C0828e) message.obj;
            int i = message.what;
            if (i == 1) {
                c0828e.f3756a.m32339d(c0828e.f3757b[0]);
            } else if (i != 2) {
            } else {
                c0828e.f3756a.m32334k(c0828e.f3757b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.loader.content.ModernAsyncTask$g */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$g.class */
    public static abstract class AbstractCallableC0830g<Params, Result> implements Callable<Result> {

        /* renamed from: a */
        Params[] f3758a;

        AbstractCallableC0830g() {
        }
    }

    static {
        ThreadFactoryC0824a threadFactoryC0824a = new ThreadFactoryC0824a();
        f3738d = threadFactoryC0824a;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f3739e = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactoryC0824a);
        f3740f = threadPoolExecutor;
        f3742h = threadPoolExecutor;
    }

    public ModernAsyncTask() {
        C0825b c0825b = new C0825b();
        this.f3743i = c0825b;
        this.f3744j = new C0826c(c0825b);
    }

    /* renamed from: e */
    private static Handler m32338e() {
        HandlerC0829f handlerC0829f;
        synchronized (ModernAsyncTask.class) {
            try {
                if (f3741g == null) {
                    f3741g = new HandlerC0829f();
                }
                handlerC0829f = f3741g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handlerC0829f;
    }

    /* renamed from: a */
    public final boolean m32341a(boolean z) {
        this.f3746l.set(true);
        return this.f3744j.cancel(z);
    }

    /* renamed from: b */
    protected abstract Result mo32325b(Params... paramsArr);

    /* renamed from: c */
    public final ModernAsyncTask<Params, Progress, Result> m32340c(Executor executor, Params... paramsArr) {
        if (this.f3745k == Status.PENDING) {
            this.f3745k = Status.RUNNING;
            m32335j();
            this.f3743i.f3758a = paramsArr;
            executor.execute(this.f3744j);
            return this;
        }
        int i = C0827d.f3755a[this.f3745k.ordinal()];
        if (i == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (i == 2) {
            throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
        throw new IllegalStateException("We should never reach this state");
    }

    /* renamed from: d */
    void m32339d(Result result) {
        if (m32337f()) {
            mo32324h(result);
        } else {
            mo32323i(result);
        }
        this.f3745k = Status.FINISHED;
    }

    /* renamed from: f */
    public final boolean m32337f() {
        return this.f3746l.get();
    }

    /* renamed from: g */
    protected void m32336g() {
    }

    /* renamed from: h */
    protected void mo32324h(Result result) {
        m32336g();
    }

    /* renamed from: i */
    protected void mo32323i(Result result) {
    }

    /* renamed from: j */
    protected void m32335j() {
    }

    /* renamed from: k */
    protected void m32334k(Progress... progressArr) {
    }

    /* renamed from: l */
    Result m32333l(Result result) {
        m32338e().obtainMessage(1, new C0828e(this, result)).sendToTarget();
        return result;
    }

    /* renamed from: m */
    void m32332m(Result result) {
        if (!this.f3747m.get()) {
            m32333l(result);
        }
    }
}
