package io.fabric.sdk.android.services.concurrency;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.LinkedList;
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
/* renamed from: io.fabric.sdk.android.services.concurrency.a */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a.class */
public abstract class AbstractC1517a<Params, Progress, Result> {

    /* renamed from: b */
    public static final Executor f4150b;

    /* renamed from: d */
    private static final int f4152d;

    /* renamed from: e */
    private static final int f4153e;

    /* renamed from: a */
    private static final int f4149a = Runtime.getRuntime().availableProcessors();

    /* renamed from: f */
    private static final ThreadFactory f4154f = new ThreadFactory() { // from class: io.fabric.sdk.android.services.concurrency.a.1

        /* renamed from: a */
        private final AtomicInteger f4163a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AsyncTask #" + this.f4163a.getAndIncrement());
        }
    };

    /* renamed from: g */
    private static final BlockingQueue<Runnable> f4155g = new LinkedBlockingQueue(128);

    /* renamed from: c */
    public static final Executor f4151c = new ExecutorC1524c();

    /* renamed from: h */
    private static final HandlerC1523b f4156h = new HandlerC1523b();

    /* renamed from: i */
    private static volatile Executor f4157i = f4151c;

    /* renamed from: l */
    private volatile EnumC1526d f4160l = EnumC1526d.PENDING;

    /* renamed from: m */
    private final AtomicBoolean f4161m = new AtomicBoolean();

    /* renamed from: n */
    private final AtomicBoolean f4162n = new AtomicBoolean();

    /* renamed from: j */
    private final AbstractCallableC1527e<Params, Result> f4158j = new AbstractCallableC1527e<Params, Result>() { // from class: io.fabric.sdk.android.services.concurrency.a.2
        @Override // java.util.concurrent.Callable
        public Result call() {
            AbstractC1517a.this.f4162n.set(true);
            Process.setThreadPriority(10);
            AbstractC1517a abstractC1517a = AbstractC1517a.this;
            return (Result) abstractC1517a.m3367d(abstractC1517a.mo3376a((Object[]) this.f4177b));
        }
    };

    /* renamed from: k */
    private final FutureTask<Result> f4159k = new FutureTask<Result>(this.f4158j) { // from class: io.fabric.sdk.android.services.concurrency.a.3
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                AbstractC1517a.this.m3369c(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException e2) {
                AbstractC1517a.this.m3369c(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occured while executing doInBackground()", e3.getCause());
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.fabric.sdk.android.services.concurrency.a$4 */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a$4.class */
    public static /* synthetic */ class C15214 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4166a = new int[EnumC1526d.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f4166a[EnumC1526d.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4166a[EnumC1526d.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: io.fabric.sdk.android.services.concurrency.a$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a$a.class */
    public static class C1522a<Data> {

        /* renamed from: a */
        final AbstractC1517a f4167a;

        /* renamed from: b */
        final Data[] f4168b;

        C1522a(AbstractC1517a abstractC1517a, Data... dataArr) {
            this.f4167a = abstractC1517a;
            this.f4168b = dataArr;
        }
    }

    /* renamed from: io.fabric.sdk.android.services.concurrency.a$b */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a$b.class */
    public static class HandlerC1523b extends Handler {
        public HandlerC1523b() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C1522a c1522a = (C1522a) message.obj;
            int i = message.what;
            if (i == 1) {
                c1522a.f4167a.m3366e(c1522a.f4168b[0]);
            } else if (i != 2) {
            } else {
                c1522a.f4167a.m3372b((Object[]) c1522a.f4168b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.fabric.sdk.android.services.concurrency.a$c */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a$c.class */
    public static class ExecutorC1524c implements Executor {

        /* renamed from: a */
        final LinkedList<Runnable> f4169a;

        /* renamed from: b */
        Runnable f4170b;

        private ExecutorC1524c() {
            this.f4169a = new LinkedList<>();
        }

        /* renamed from: a */
        protected void m3365a() {
            synchronized (this) {
                Runnable poll = this.f4169a.poll();
                this.f4170b = poll;
                if (poll != null) {
                    AbstractC1517a.f4150b.execute(this.f4170b);
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(final Runnable runnable) {
            synchronized (this) {
                this.f4169a.offer(new Runnable() { // from class: io.fabric.sdk.android.services.concurrency.a.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            runnable.run();
                        } finally {
                            ExecutorC1524c.this.m3365a();
                        }
                    }
                });
                if (this.f4170b == null) {
                    m3365a();
                }
            }
        }
    }

    /* renamed from: io.fabric.sdk.android.services.concurrency.a$d */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a$d.class */
    public enum EnumC1526d {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.fabric.sdk.android.services.concurrency.a$e */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a$e.class */
    public static abstract class AbstractCallableC1527e<Params, Result> implements Callable<Result> {

        /* renamed from: b */
        Params[] f4177b;

        private AbstractCallableC1527e() {
        }
    }

    static {
        int i = f4149a;
        f4152d = i + 1;
        f4153e = (i * 2) + 1;
        f4150b = new ThreadPoolExecutor(f4152d, f4153e, 1L, TimeUnit.SECONDS, f4155g, f4154f);
    }

    /* renamed from: c */
    public void m3369c(Result result) {
        if (!this.f4162n.get()) {
            m3367d(result);
        }
    }

    /* renamed from: d */
    public Result m3367d(Result result) {
        f4156h.obtainMessage(1, new C1522a(this, result)).sendToTarget();
        return result;
    }

    /* renamed from: e */
    public void m3366e(Result result) {
        if (m3368d()) {
            mo3373b((AbstractC1517a<Params, Progress, Result>) result);
        } else {
            mo3379a((AbstractC1517a<Params, Progress, Result>) result);
        }
        this.f4160l = EnumC1526d.FINISHED;
    }

    /* renamed from: a */
    public final AbstractC1517a<Params, Progress, Result> m3378a(Executor executor, Params... paramsArr) {
        if (this.f4160l != EnumC1526d.PENDING) {
            int i = C15214.f4166a[this.f4160l.ordinal()];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.f4160l = EnumC1526d.RUNNING;
        mo3382a();
        this.f4158j.f4177b = paramsArr;
        executor.execute(this.f4159k);
        return this;
    }

    /* renamed from: a */
    protected abstract Result mo3376a(Params... paramsArr);

    /* renamed from: a */
    public void mo3382a() {
    }

    /* renamed from: a */
    protected void mo3379a(Result result) {
    }

    /* renamed from: a */
    public final boolean m3377a(boolean z) {
        this.f4161m.set(true);
        return this.f4159k.cancel(z);
    }

    /* renamed from: b */
    public final EnumC1526d m3375b() {
        return this.f4160l;
    }

    /* renamed from: b */
    protected void mo3373b(Result result) {
        m3371c();
    }

    /* renamed from: b */
    protected void m3372b(Progress... progressArr) {
    }

    /* renamed from: c */
    protected void m3371c() {
    }

    /* renamed from: d */
    public final boolean m3368d() {
        return this.f4161m.get();
    }
}
