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
/* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask.class */
abstract class ModernAsyncTask<Params, Progress, Result> {

    /* renamed from: k */
    private static final ThreadFactory f4158k = new ThreadFactory() { // from class: androidx.loader.content.ModernAsyncTask.1

        /* renamed from: f */
        private final AtomicInteger f4167f = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f4167f.getAndIncrement());
        }
    };

    /* renamed from: l */
    private static final BlockingQueue<Runnable> f4159l = new LinkedBlockingQueue(10);

    /* renamed from: m */
    public static final Executor f4160m = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, f4159l, f4158k);

    /* renamed from: n */
    private static InternalHandler f4161n;

    /* renamed from: h */
    private volatile Status f4164h = Status.PENDING;

    /* renamed from: i */
    final AtomicBoolean f4165i = new AtomicBoolean();

    /* renamed from: j */
    final AtomicBoolean f4166j = new AtomicBoolean();

    /* renamed from: f */
    private final WorkerRunnable<Params, Result> f4162f = new WorkerRunnable<Params, Result>() { // from class: androidx.loader.content.ModernAsyncTask.2
        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            ModernAsyncTask.this.f4166j.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                Result result2 = (Result) ModernAsyncTask.this.mo18068b(this.f4173f);
                result = result2;
                Binder.flushPendingCommands();
                return result2;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    };

    /* renamed from: g */
    private final FutureTask<Result> f4163g = new FutureTask<Result>(this.f4162f) { // from class: androidx.loader.content.ModernAsyncTask.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                ModernAsyncTask.this.m18057m(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException e2) {
                ModernAsyncTask.this.m18057m(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    /* renamed from: androidx.loader.content.ModernAsyncTask$4 */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$4.class */
    static /* synthetic */ class C04024 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4170a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Status.values().length];
            f4170a = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4170a[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$AsyncTaskResult.class */
    public static class AsyncTaskResult<Data> {

        /* renamed from: a */
        final ModernAsyncTask f4171a;

        /* renamed from: b */
        final Data[] f4172b;

        AsyncTaskResult(ModernAsyncTask modernAsyncTask, Data... dataArr) {
            this.f4171a = modernAsyncTask;
            this.f4172b = dataArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$InternalHandler.class */
    public static class InternalHandler extends Handler {
        InternalHandler() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            int i = message.what;
            if (i == 1) {
                asyncTaskResult.f4171a.m18066d(asyncTaskResult.f4172b[0]);
            } else if (i == 2) {
                asyncTaskResult.f4171a.m18059k(asyncTaskResult.f4172b);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$Status.class */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* loaded from: classes-dex2jar.jar:androidx/loader/content/ModernAsyncTask$WorkerRunnable.class */
    private static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {

        /* renamed from: f */
        Params[] f4173f;

        WorkerRunnable() {
        }
    }

    /* renamed from: e */
    private static Handler m18065e() {
        InternalHandler internalHandler;
        synchronized (ModernAsyncTask.class) {
            try {
                if (f4161n == null) {
                    f4161n = new InternalHandler();
                }
                internalHandler = f4161n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return internalHandler;
    }

    /* renamed from: a */
    public final boolean m18069a(boolean z) {
        this.f4165i.set(true);
        return this.f4163g.cancel(z);
    }

    /* renamed from: b */
    protected abstract Result mo18068b(Params... paramsArr);

    /* renamed from: c */
    public final ModernAsyncTask<Params, Progress, Result> m18067c(Executor executor, Params... paramsArr) {
        if (this.f4164h != Status.PENDING) {
            int i = C04024.f4170a[this.f4164h.ordinal()];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            } else if (i != 2) {
                throw new IllegalStateException("We should never reach this state");
            } else {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        } else {
            this.f4164h = Status.RUNNING;
            m18060j();
            this.f4162f.f4173f = paramsArr;
            executor.execute(this.f4163g);
            return this;
        }
    }

    /* renamed from: d */
    void m18066d(Result result) {
        if (m18064f()) {
            mo18062h(result);
        } else {
            mo18061i(result);
        }
        this.f4164h = Status.FINISHED;
    }

    /* renamed from: f */
    public final boolean m18064f() {
        return this.f4165i.get();
    }

    /* renamed from: g */
    protected void m18063g() {
    }

    /* renamed from: h */
    protected void mo18062h(Result result) {
        m18063g();
    }

    /* renamed from: i */
    protected void mo18061i(Result result) {
    }

    /* renamed from: j */
    protected void m18060j() {
    }

    /* renamed from: k */
    protected void m18059k(Progress... progressArr) {
    }

    /* renamed from: l */
    Result m18058l(Result result) {
        m18065e().obtainMessage(1, new AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }

    /* renamed from: m */
    void m18057m(Result result) {
        if (!this.f4166j.get()) {
            m18058l(result);
        }
    }
}
