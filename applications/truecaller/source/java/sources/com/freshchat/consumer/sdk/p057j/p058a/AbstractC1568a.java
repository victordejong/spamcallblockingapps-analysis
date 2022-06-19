package com.freshchat.consumer.sdk.p057j.p058a;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1630aw;
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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.a.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/a.class */
public abstract class AbstractC1568a<Params, Progress, Result> {
    public static final Executor SERIAL_EXECUTOR;
    public static final Executor THREAD_POOL_EXECUTOR;

    /* renamed from: iJ */
    private static final ThreadFactory f4239iJ;

    /* renamed from: iK */
    private static final BlockingQueue<Runnable> f4240iK;

    /* renamed from: iL */
    public static final Executor f4241iL;

    /* renamed from: iM */
    private static final HandlerC1574b f4242iM;

    /* renamed from: iN */
    private static volatile Executor f4243iN;

    /* renamed from: iO */
    private final AbstractCallableC1578e<Params, Result> f4244iO;

    /* renamed from: iP */
    private final FutureTask<Result> f4245iP;

    /* renamed from: iQ */
    private volatile EnumC1577d f4246iQ = EnumC1577d.PENDING;

    /* renamed from: iR */
    private final AtomicBoolean f4247iR = new AtomicBoolean();

    /* renamed from: iS */
    private final AtomicBoolean f4248iS = new AtomicBoolean();

    /* renamed from: com.freshchat.consumer.sdk.j.a.a$4 */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/a$4.class */
    public /* synthetic */ class C15724 {

        /* renamed from: iV */
        public static final /* synthetic */ int[] f4252iV;

        static {
            EnumC1577d.values();
            int[] iArr = new int[3];
            f4252iV = iArr;
            try {
                EnumC1577d enumC1577d = EnumC1577d.RUNNING;
                iArr[1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = f4252iV;
                EnumC1577d enumC1577d2 = EnumC1577d.FINISHED;
                iArr2[2] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.a$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/a$a.class */
    public static class C1573a<Data> {

        /* renamed from: iW */
        public final AbstractC1568a f4253iW;

        /* renamed from: iX */
        public final Data[] f4254iX;

        public C1573a(AbstractC1568a abstractC1568a, Data... dataArr) {
            this.f4253iW = abstractC1568a;
            this.f4254iX = dataArr;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.a$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/a$b.class */
    public static class HandlerC1574b extends Handler {
        private HandlerC1574b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C1573a c1573a = (C1573a) message.obj;
            int i = message.what;
            if (i == 1) {
                c1573a.f4253iW.finish(c1573a.f4254iX[0]);
            } else if (i != 2) {
            } else {
                c1573a.f4253iW.onProgressUpdate(c1573a.f4254iX);
            }
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.a$c */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/a$c.class */
    public static class ExecutorC1575c implements Executor {

        /* renamed from: iY */
        public final ArrayDeque<Runnable> f4255iY;

        /* renamed from: iZ */
        public Runnable f4256iZ;

        private ExecutorC1575c() {
            this.f4255iY = new ArrayDeque<>();
        }

        @Override // java.util.concurrent.Executor
        public void execute(final Runnable runnable) {
            synchronized (this) {
                this.f4255iY.offer(new Runnable() { // from class: com.freshchat.consumer.sdk.j.a.a.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            runnable.run();
                        } finally {
                            ExecutorC1575c.this.m40461fe();
                        }
                    }
                });
                if (this.f4256iZ == null) {
                    m40461fe();
                }
            }
        }

        /* renamed from: fe */
        public void m40461fe() {
            synchronized (this) {
                Runnable poll = this.f4255iY.poll();
                this.f4256iZ = poll;
                if (poll != null) {
                    AbstractC1568a.THREAD_POOL_EXECUTOR.execute(poll);
                }
            }
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.a$d */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/a$d.class */
    public enum EnumC1577d {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.a$e */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/a$e.class */
    public static abstract class AbstractCallableC1578e<Params, Result> implements Callable<Result> {

        /* renamed from: jg */
        public Params[] f4263jg;

        private AbstractCallableC1578e() {
        }
    }

    static {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.freshchat.consumer.sdk.j.a.a.1

            /* renamed from: iT */
            private final AtomicInteger f4249iT = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                StringBuilder m8728C = C22128a.m8728C("AsyncTask #");
                m8728C.append(this.f4249iT.getAndIncrement());
                return new Thread(runnable, m8728C.toString());
            }
        };
        f4239iJ = threadFactory;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f4240iK = linkedBlockingQueue;
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactory, new ThreadPoolExecutor.DiscardOldestPolicy());
        ExecutorC1575c executorC1575c = C1630aw.m40203eT() ? new ExecutorC1575c() : Executors.newSingleThreadExecutor(threadFactory);
        SERIAL_EXECUTOR = executorC1575c;
        f4241iL = Executors.newFixedThreadPool(2, threadFactory);
        f4242iM = new HandlerC1574b();
        f4243iN = executorC1575c;
    }

    public AbstractC1568a() {
        AbstractCallableC1578e<Params, Result> abstractCallableC1578e = new AbstractCallableC1578e<Params, Result>() { // from class: com.freshchat.consumer.sdk.j.a.a.2
            @Override // java.util.concurrent.Callable
            public Result call() throws Exception {
                AbstractC1568a.this.f4248iS.set(true);
                Process.setThreadPriority(10);
                AbstractC1568a abstractC1568a = AbstractC1568a.this;
                return (Result) abstractC1568a.m40462c(abstractC1568a.doInBackground(this.f4263jg));
            }
        };
        this.f4244iO = abstractCallableC1578e;
        this.f4245iP = new FutureTask<Result>(abstractCallableC1578e) { // from class: com.freshchat.consumer.sdk.j.a.a.3
            @Override // java.util.concurrent.FutureTask
            public void done() {
                try {
                    AbstractC1568a.this.m40464b(get());
                } catch (InterruptedException e) {
                    C1613ai.m40277w("AsyncTask", "", e);
                } catch (CancellationException | Exception e2) {
                    AbstractC1568a.this.m40464b(null);
                } catch (ExecutionException e3) {
                    throw new RuntimeException("An error occured while executing doInBackground()", e3.getCause());
                }
            }
        };
    }

    /* renamed from: b */
    public void m40464b(Result result) {
        if (!this.f4248iS.get()) {
            m40462c(result);
        }
    }

    /* renamed from: c */
    public Result m40462c(Result result) {
        f4242iM.obtainMessage(1, new C1573a(this, result)).sendToTarget();
        return result;
    }

    public void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.f4246iQ = EnumC1577d.FINISHED;
    }

    /* renamed from: a */
    public final AbstractC1568a<Params, Progress, Result> m40467a(Executor executor, Params... paramsArr) {
        if (this.f4246iQ != EnumC1577d.PENDING) {
            int i = C15724.f4252iV[this.f4246iQ.ordinal()];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.f4246iQ = EnumC1577d.RUNNING;
        onPreExecute();
        this.f4244iO.f4263jg = paramsArr;
        executor.execute(this.f4245iP);
        return this;
    }

    /* renamed from: a */
    public final AbstractC1568a<Params, Progress, Result> m40466a(Params... paramsArr) {
        return m40467a(f4243iN, paramsArr);
    }

    public final boolean cancel(boolean z) {
        this.f4247iR.set(true);
        return this.f4245iP.cancel(z);
    }

    public abstract Result doInBackground(Params... paramsArr);

    public final boolean isCancelled() {
        return this.f4247iR.get();
    }

    public void onCancelled() {
    }

    public void onCancelled(Result result) {
        onCancelled();
    }

    public void onPostExecute(Result result) {
    }

    public void onPreExecute() {
    }

    public void onProgressUpdate(Progress... progressArr) {
    }
}
