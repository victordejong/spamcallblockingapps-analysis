package com.netqin.p525cm.utils;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.netqin.cm.utils.AsyncTask */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask.class */
public abstract class AsyncTask<Params, Progress, Result> {

    /* renamed from: f */
    public static final int f35716f;

    /* renamed from: g */
    public static final int f35717g;

    /* renamed from: h */
    public static final int f35718h;

    /* renamed from: i */
    public static final ThreadFactory f35719i = new ThreadFactoryC9182a();

    /* renamed from: j */
    public static final BlockingQueue<Runnable> f35720j = new LinkedBlockingQueue(10);

    /* renamed from: k */
    public static final Executor f35721k;

    /* renamed from: l */
    public static final Executor f35722l;

    /* renamed from: m */
    public static volatile Executor f35723m;

    /* renamed from: n */
    public static HandlerC9187f f35724n;

    /* renamed from: c */
    public volatile Status f35727c = Status.PENDING;

    /* renamed from: d */
    public final AtomicBoolean f35728d = new AtomicBoolean();

    /* renamed from: e */
    public final AtomicBoolean f35729e = new AtomicBoolean();

    /* renamed from: a */
    public final AbstractCallableC9190h<Params, Result> f35725a = new C9183b();

    /* renamed from: b */
    public final FutureTask<Result> f35726b = new C9184c(this.f35725a);

    /* renamed from: com.netqin.cm.utils.AsyncTask$Status */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$Status.class */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* renamed from: com.netqin.cm.utils.AsyncTask$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$a.class */
    public static final class ThreadFactoryC9182a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f35730a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AsyncTask #" + this.f35730a.getAndIncrement());
        }
    }

    /* renamed from: com.netqin.cm.utils.AsyncTask$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$b.class */
    public class C9183b extends AbstractCallableC9190h<Params, Result> {
        public C9183b() {
            super(null);
        }

        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            AsyncTask.this.f35729e.set(true);
            Process.setThreadPriority(10);
            AsyncTask asyncTask = AsyncTask.this;
            Result result = (Result) asyncTask.mo3198a((Object[]) this.f35740a);
            asyncTask.m3188d(result);
            return result;
        }
    }

    /* renamed from: com.netqin.cm.utils.AsyncTask$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$c.class */
    public class C9184c extends FutureTask<Result> {
        public C9184c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                AsyncTask.this.m3186e(get());
            } catch (InterruptedException e) {
            } catch (CancellationException e2) {
                AsyncTask.this.m3186e(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occured while executing doInBackground()", e3.getCause());
            }
        }
    }

    /* renamed from: com.netqin.cm.utils.AsyncTask$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$d.class */
    public static /* synthetic */ class C9185d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f35733a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Status.values().length];
            f35733a = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f35733a[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f35733a[Status.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.netqin.cm.utils.AsyncTask$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$e.class */
    public static class C9186e<Data> {

        /* renamed from: a */
        public final AsyncTask f35734a;

        /* renamed from: b */
        public final Data[] f35735b;

        public C9186e(AsyncTask asyncTask, Data... dataArr) {
            this.f35734a = asyncTask;
            this.f35735b = dataArr;
        }
    }

    /* renamed from: com.netqin.cm.utils.AsyncTask$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$f.class */
    public static class HandlerC9187f extends Handler {
        public HandlerC9187f() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C9186e eVar = (C9186e) message.obj;
            int i = message.what;
            if (i == 1) {
                eVar.f35734a.m3200a((AsyncTask) eVar.f35735b[0]);
            } else if (i == 2) {
                eVar.f35734a.m3190c((Object[]) eVar.f35735b);
            }
        }
    }

    /* renamed from: com.netqin.cm.utils.AsyncTask$g */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$g.class */
    public static class ExecutorC9188g implements Executor {

        /* renamed from: a */
        public final ArrayDeque<Runnable> f35736a;

        /* renamed from: b */
        public Runnable f35737b;

        /* renamed from: com.netqin.cm.utils.AsyncTask$g$a */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$g$a.class */
        public class RunnableC9189a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Runnable f35738a;

            public RunnableC9189a(Runnable runnable) {
                this.f35738a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f35738a.run();
                } finally {
                    ExecutorC9188g.this.m3185a();
                }
            }
        }

        public ExecutorC9188g() {
            this.f35736a = new ArrayDeque<>();
        }

        public /* synthetic */ ExecutorC9188g(ThreadFactoryC9182a aVar) {
            this();
        }

        /* renamed from: a */
        public void m3185a() {
            synchronized (this) {
                Runnable poll = this.f35736a.poll();
                this.f35737b = poll;
                if (poll != null) {
                    AsyncTask.f35721k.execute(poll);
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            synchronized (this) {
                this.f35736a.offer(new RunnableC9189a(runnable));
                if (this.f35737b == null) {
                    m3185a();
                }
            }
        }
    }

    /* renamed from: com.netqin.cm.utils.AsyncTask$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/AsyncTask$h.class */
    public static abstract class AbstractCallableC9190h<Params, Result> implements Callable<Result> {

        /* renamed from: a */
        public Params[] f35740a;

        public AbstractCallableC9190h() {
        }

        public /* synthetic */ AbstractCallableC9190h(ThreadFactoryC9182a aVar) {
            this();
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f35716f = availableProcessors;
        f35717g = availableProcessors + 1;
        f35718h = (availableProcessors * 2) + 1;
        f35721k = new ThreadPoolExecutor(f35717g, f35718h, 1L, TimeUnit.SECONDS, f35720j, f35719i, new ThreadPoolExecutor.DiscardOldestPolicy());
        f35722l = m3187e() ? new ExecutorC9188g(null) : Executors.newSingleThreadExecutor(f35719i);
        Executors.newFixedThreadPool(2, f35719i);
        f35723m = f35722l;
    }

    /* renamed from: d */
    public static Handler m3189d() {
        HandlerC9187f fVar;
        synchronized (AsyncTask.class) {
            try {
                if (f35724n == null) {
                    f35724n = new HandlerC9187f();
                }
                fVar = f35724n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* renamed from: e */
    public static boolean m3187e() {
        return Build.VERSION.SDK_INT >= 11;
    }

    /* renamed from: a */
    public final AsyncTask<Params, Progress, Result> m3199a(Executor executor, Params... paramsArr) {
        int i = C9185d.f35733a[this.f35727c.ordinal()];
        if (i == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        } else if (i != 2) {
            this.f35727c = Status.RUNNING;
            mo3193c();
            this.f35725a.f35740a = paramsArr;
            executor.execute(this.f35726b);
            return this;
        } else {
            throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
    }

    /* renamed from: a */
    public abstract Result mo3198a(Params... paramsArr);

    /* renamed from: a */
    public final void m3200a(Result result) {
        if (m3203a()) {
            m3195b((AsyncTask<Params, Progress, Result>) result);
        } else {
            mo3191c((AsyncTask<Params, Progress, Result>) result);
        }
        this.f35727c = Status.FINISHED;
    }

    /* renamed from: a */
    public final boolean m3203a() {
        return this.f35728d.get();
    }

    /* renamed from: b */
    public final AsyncTask<Params, Progress, Result> m3194b(Params... paramsArr) {
        m3199a(f35723m, paramsArr);
        return this;
    }

    /* renamed from: b */
    public void m3197b() {
    }

    /* renamed from: b */
    public void m3195b(Result result) {
        m3197b();
    }

    /* renamed from: c */
    public void mo3193c() {
    }

    /* renamed from: c */
    public void mo3191c(Result result) {
    }

    /* renamed from: c */
    public void m3190c(Progress... progressArr) {
    }

    /* renamed from: d */
    public final Result m3188d(Result result) {
        m3189d().obtainMessage(1, new C9186e(this, result)).sendToTarget();
        return result;
    }

    /* renamed from: e */
    public final void m3186e(Result result) {
        if (!this.f35729e.get()) {
            m3188d(result);
        }
    }
}
